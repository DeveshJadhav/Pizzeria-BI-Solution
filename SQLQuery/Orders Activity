select 
o.order_id, 
o.order_date,
o.created_at,
o.customer_id,
a.address,
a.city,
a.zipcode,
o.delivery_type,
m.item_name,
m.category,
m.size,
m.price,
o.quantity
from 
orders o left join menu m on o.item_id = m.item_id
left join address a on o.address_id = a.address_id;
