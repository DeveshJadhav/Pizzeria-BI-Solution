# Pizzeria-Data-Insights-SQL-Looker-Studio-for-Business-Intelligence

## 📌 Project Dashboard  
📊 **[View the looker Dashboard](https://lookerstudio.google.com/reporting/5f2f4a3c-abdf-4405-aeb8-3bf99af779fb)**

https://lookerstudio.google.com/reporting/5f2f4a3c-abdf-4405-aeb8-3bf99af779fb

📌 Understanding the Business Problem :
The client has opened a new takeout & delivery-only pizzeria and needs an efficient data system. The client wants Us to make relational database for his business that will allow him to capture and store all of the important information and data that the business generates this will in turn help client to monitor business performance.

🎯 Clients Requirement: Client want dashboard to overlook Order Activity, Inventory Management, and Staff Shifts

🔹 For Order Activity:

1.Total orders                  2. Total sales

3. Total items                  4. Average order value 

5. Sales by category            6. Top selling items               

7. Orders by hour               8. Sales by hour

9. Orders by address            10. Orders by delivery/pickup.

 

🔹 For Inventory Management: Client wants to track much inventory is being used and identify items that need reordering. We also have to calculate how much each pizza cost to make based on the cost of the ingredients so we can keep an eye on pricing and profit and loss.

Total quantity by ingredient.
Total cost of ingredients.
Calculated cost of pizza.
Percentage stock remaining by ingredient.
List of ingredients to re-order based on remaining inventory.
 

🔹 For Staff Shifts: Client wants to calculate the duration worked by each staff member using their shift start and end time.

📊 Steps I Took to Solve This Problem

1. Database Design & ER Diagram: I created an Entity-Relationship (ER) Diagram using QuickDBD to ensure proper data normalization and efficient structuring. ER Diagram Screenshot 


2. SQL Database Setup & Data Import: 

After Designing a relational database schema i simply imported it into MySQL.
Used the Table Data Import Wizard to fill tables with mock order data.
Wrote SQL queries to generate key business insights in accordance with Clients Requirement. checkout queries here.
 

3. Looker Studio Dashboard & Insights: After running queries and gathering necessary dataset. I built an interactive dashboard in Looker Studio to provide real-time visibility into business performance. Live Dashboard: view here
