select 
    customer_id, 
    email, 
    name, 
    min(created_at) as first_order_at, 
    count(cso.id) as number_of_orders
 from `analytics-engineers-club.coffee_shop.customers` as csc
  left join `analytics-engineers-club.coffee_shop.orders` as cso on csc.id = cso.customer_id  
  group by 1, 2, 3
  order by first_order_at 
  limit 5