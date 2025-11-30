create database customer;
use customer;
select * from customer_table limit 20;

#1Q  What is the total Revenue genarated by male vs Female customers? 
select gender, sum(purchase_amount) as Revenue  from customer_table group by gender;

#2Q  Which customer used discount but still spent more then the avg purchase amount
select customer_id, purchase_amount from customer_table where discount_applied='yes' and  purchase_amount > (select avg(purchase_amount) from customer_table);

#3Q  which are top 5 products with the highest average review rating?
select item_purchased, round(avg(review_rating),2) as "Average Product Rating" from customer_table group by item_purchased order by avg(review_rating) DESC limit 5; 

#4Q Compare the Average Purchase  Amounts between Standard and Express shipping.
select shipping_type, round(avg(purchase_amount),2) from customer_table where shipping_type in ("Standard","Express") group by shipping_type;

#5Q Do Subscribed customers spend more? compare average spend and total revenue between subscribers and NoN -Subscribers
select count(customer_id), 
subscription_status, 
round(avg(purchase_amount),2) as avg_spend, 
sum(purchase_amount) as Total_revenue 
from customer_table 
group by subscription_status
order by Total_revenue, avg_spend desc;

#Q6. which 5 products have the  highest percentages of purchases with Discount applied?
select item_purchased,
Round(sum(discount_applied='Yes')/count(*)*100,2) as highest_discount 
from customer_table
group by item_purchased 
order by highest_discount desc limit 5;

#Q7 segment customers into new ,Returning and Loyal based on their total number of previous purchases, and show the count of each segment.
with customer_table as (
select customer_id,previous_purchases, 
case 
	when previous_purchases=1 then 'New'
    when previous_purchases between 2 and 10 then 'Returning'
    else 'Loyal'
    end as customer_segment
from customer_table
)
select customer_segment, count(*) from Customer_table
group by customer_segment;

#Q8 what are the top 3 most purchased products within each Category?
with item_counts as(select category, item_purchased ,count(customer_id ) as total_orders,
ROW_NUMBER() over (partition by category order by count(customer_id ) DESC) as item_rank    # Types of Ranks are rank() ,Dens _rank() , row_number()
from customer_table
group by category, item_purchased 
)
select item_rank , category, item_purchased , total_orders
from item_counts
where item_rank<=3;

#Q9 Are Customers who are repeat buyers (More then 5 previous purchases) also likely to  subscribe?
select subscription_status, count(customer_id)
from customer_table
where previous_purchases>5
group by subscription_status;

#Q10  what is the revenue Contribution of each age group?
select age_group,sum(purchase_amount) from customer_table group by age_group order by sum(purchase_amount) DESC ;