create view Stock_1 as
select 
s1.item_name,
s1.ingredient_id,
s1.ingredient_name,
s1.ingredient_weight,
s1.cost_per_unit,
s1.order_quantity,
s1.recipe_quantity,
s1.order_quantity * s1.recipe_quantity as ordered_weight,
(s1.order_quantity * s1.recipe_quantity)*s1.cost_per_unit as ingredient_cost
from
(select
o.item_id,
m.sku,
m.item_name,
r.ingredient_id,
i.ingredient_name,
r.quantity as recipe_quantity,
sum(o.quantity) as order_quantity,
i.ingredient_weight,
i.cost_per_unit
from orders o 
left join  menu m on o.item_id = m.item_id
left join recipe r on m.sku = r.recipe_id
left join ingredient i on r.ingredient_id = i.ingredient_id
group by
o.item_id,
m.sku,
m.item_name,
r.ingredient_id,
i.ingredient_name,
r.quantity,
i.ingredient_weight,
i.cost_per_unit) s1 ;

select 
s2.ingredient_name,
s2.ordered_weight,
intg.ingredient_weight * inv.quantity as total_inventory_weight,
(intg.ingredient_weight * inv.quantity) - s2.ordered_weight as remaining_weight
from
(select 
ingredient_id,
ingredient_name, 
round(sum(ordered_weight),0) as ordered_weight
from
stock_1
group by 
ingredient_id,
ingredient_name) s2
left join inventory inv on inv.ingredient_id = s2.ingredient_id
left join ingredient intg on intg.ingredient_id = s2.ingredient_id ;
