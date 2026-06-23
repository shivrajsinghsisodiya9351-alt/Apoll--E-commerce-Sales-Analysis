SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM sales_reps;
SELECT * FROM orders;
SELECT * FROM returns_feedback;

--1. Top 5 Customers by Revenue in Each Region.
SELECT * FROM
(SELECT
       c.customer_id,
       c.customer_name,
       c.region,
	   SUM(o.total_sales) AS Total_revenue,
	   DENSE_RANK() OVER(PARTITION BY c.region ORDER BY SUM(o.total_sales) DESC) AS rnk
	   FROM customers c
	   JOIN orders o ON c.customer_id = o.customer_id
	   GROUP BY c.customer_id,c.customer_name,
       c.region 
	   )  AS t
WHERE rnk <= 5	 

--2. Month-over-Month Sales Growth.
WITH monthly_sales AS
(
    SELECT
        DATE_TRUNC('month', order_date)::date AS sales_month,
        SUM(total_sales) AS monthly_revenue
    FROM orders
    GROUP BY 1
)
SELECT
    sales_month,
    monthly_revenue,
    LAG(monthly_revenue) OVER (
        ORDER BY sales_month
    ) AS previous_month_revenue,

    ROUND(
        (
            (monthly_revenue -
             LAG(monthly_revenue) OVER (ORDER BY sales_month))
            * 100.0
        ) /
        NULLIF(
            LAG(monthly_revenue) OVER (ORDER BY sales_month),
            0
        ),
        2
    ) AS growth_percentage

FROM monthly_sales
ORDER BY sales_month;

--3. Running Total Sales.
WITH monthiy_sale AS (
  SELECT 
       DATE_TRUNC('month',order_date)::Date AS Month,
	   SUM(total_sales) AS Revenue
  FROM orders
  GROUP BY 1
)
 SELECT
       Month,
	   Revenue,
	   SUM(Revenue) OVER(order by Month) AS Running_total
 FROM monthiy_sale
 ORDER BY Month

--4. Identify Repeat Customers.
SELECT 
     c.customer_name,
	 COUNT(o.order_id) AS Total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY 1
HAVING COUNT(o.order_id)>1
ORDER BY 2 DESC

--5. Products Contributing 80% Revenue (Pareto Analysis)
WITH Product_revenue AS (
   SELECT 
         p.product_id,
		 p.product_name,
		 SUM(o.total_sales) AS Revenue
   FROM products p
   JOIN orders o ON p.product_id = o.product_id 
   GROUP BY 1,2
),
 perto_analysis AS (
   SELECT 
   product_id,
   product_name,
   Revenue,
   SUM(Revenue) OVER(ORDER BY Revenue) AS Running_total,
   SUM(Revenue) OVER() AS Total_Revenue
   FROM Product_revenue
 )

SELECT 
      product_id,
      product_name,
      Revenue,
	  Running_total,
	  ROUND(Running_total * 100 / Total_Revenue,2) cumulative_pect

	 FROM perto_analysis
	 WHERE Running_total <= Total_Revenue*0.80
	 ORDER BY Revenue
--6. Find Consecutive Declining Sales Months.
WITH monthly_sale AS (
SELECT 
     DATE_TRUNC('month', order_date)::date AS Months,
	 SUM(total_sales) AS Total_revenue
	 FROM orders
	 GROUP BY 1
),	
 sales_analysis AS (
 SELECT
 Months,
 Total_revenue,
 LAG(Total_revenue,1) OVER(ORDER BY Months) AS Prev_sales,
 LAG(Total_revenue,2) OVER(ORDER BY Months) AS prev_prev_sales
 FROM monthly_sale
 
)
 SELECT 
     Months,
     Total_revenue
 FROM sales_analysis
 WHERE 	
      Total_revenue < prev_sales
 AND  prev_sales < prev_prev_sales	  

 ORDER BY Months
 
--7 Customer Lifetime Value (CLV).
SELECT 
    c.customer_id,
	c.customer_name,
	SUM(o.total_sales) AS Life_time_value
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY Life_time_value DESC

--8 Best Performing Sales Representative in Each Region.
WITH sales_rep_sale AS (
SELECT 
      sales_rep_id ,
	  sales_rep_name,
	  region,
	  SUM(achieved_sales) AS Total_sale
	  FROM sales_reps
	  GROUP BY 1,2,3
),
 sales_rep_rnk AS(
 SELECT 
      sales_rep_id ,
	  sales_rep_name,
	  region,
	  Total_sale,
	  RANK() OVER(PARTITION BY region ORDER BY Total_sale DESC ) AS rnk
FROM sales_rep_sale
)
  SELECT sales_rep_id ,
	  sales_rep_name,
	  region,
	  Total_sale
  FROM sales_rep_rnk
  WHERE rnk = 1
  ORDER BY Total_sale DESC

--9 Product Ranking Within Category.
SELECT 
      p.product_id,
	  p.category,
	  p.product_name,
	  SUM(o.total_sales) AS Sales,
	  DENSE_RANK() OVER(PARTITION BY category ORDER BY SUM(o.total_sales) DESC ) AS rnk
FROM  products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY 1,2,3

--10. Customer Segmentation Based on Spending.
SELECT 
      c.customer_id,
      c.customer_name,
	  SUM(o.total_sales) AS Total_spend,
	  CASE 
	     WHEN SUM(o.total_sales) >= 10000000 THEN 'High_customer'
		 WHEN SUM(o.total_sales) BETWEEN 5000000 AND 9999999 THEN 'medium_customer' 
		 ELSE 'Low_customer' END Cust_classify_on_spending
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY 1,2
ORDER BY 3 DESC

--11. Return Rate Analysis.
WITH product_sales AS(
 SELECT 
    p.category,
	COUNT(o.order_id) AS Total_orders,
	COUNT(rf.return_id) AS Total_return
 FROM products p
 JOIN orders o ON p.product_id = o.product_id
 LEFT JOIN returns_feedback rf ON o.order_id = rf.order_id
 GROUP BY 1
 ) 
  SELECT
   category,
   Total_orders,
   Total_return,
   ROUND(Total_return * 100.0 / Total_orders,2) AS Return_rate
  FROM product_sales 
  ORDER BY Return_rate DESC
  
--12. Average Delivery Time by Region.
SELECT 
     c.region,
	 ROUND(
	 AVG(o.delivery_date - o.order_date),2) AS avg_delivery_day
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY 1
	 
--13. Products Never Returned.
SELECT
    p.product_id,
    p.product_name
FROM products p
WHERE NOT EXISTS
(
    SELECT 1
    FROM orders o
    JOIN returns_feedback rf
    ON o.order_id = rf.order_id
    WHERE o.product_id = p.product_id
);

--14. Sales Trend Using Moving Average.
WITH daily_revenus AS
(SELECT 
    order_date,
	SUM(total_sales) AS Revenue
FROM orders
GROUP BY 1
)
 SELECT 
     order_date,
	 Revenue,
	 ROUND(
	 AVG(Revenue) OVER(ORDER BY order_date
	 ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2)
	 AS seven_days_mooving_sale
FROM daily_revenus
ORDER BY order_date

--15. Customer Review Sentiment Analysis.
SELECT
     review_sentiment,
     COUNT(*) AS Total_review_count,
	 ROUND(
	 COUNT(*)* 100.0 / SUM(COUNT(*)) OVER(),2)
	 AS customer_review_pect
FROM returns_feedback
GROUP BY 1


  