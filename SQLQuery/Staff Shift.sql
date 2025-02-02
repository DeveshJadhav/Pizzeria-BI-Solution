select 
rot.date,
sh.day_of_week,
st.name,
st.position,
sh.start_time,
sh.end_time,
timediff(sh.end_time, sh.start_time) as hours_worked,
st.hourly_rate,
time_to_sec(timediff(sh.end_time, sh.start_time)) / 3600 * st.hourly_rate as total_pay
from rotation rot
left join staff st on rot.staff_id = st.staff_id
left join shift sh on rot.shift_id = sh.shift_id
