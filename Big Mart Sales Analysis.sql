show databases;
create database Projects;
show databases;
use projects;

select * from project1_csv;

#Project 1 

#Query 1
select Item_Identifier from project1_csv;

#Query 2
select count(Item_Identifier) from project1_csv;

#Query 3
select max(Item_Weight) from project1_csv;

#Query 4
select min(Item_Weight) from project1_csv;

#Query 5 
select avg(Item_weight) from project1_csv;

#Query 6
select count(Item_Fat_Content) from project1_csv where Item_Fat_Content in("LF","Low Fat");

#Query 7 
select count(Item_Fat_Content) from project1_csv where Item_Fat_Content in("reg","Regular");

#Query 8 
select max(Item_MRP) from project1_csv ;

#Query 9 
select min(Item_MRP) from project1_csv ;

#Query 10 
select Item_Identifier, Item_Fat_Content, Item_Type, Item_MRP from project1_csv where Item_MRP >200;

#Query 11
select max(Item_MRP) from project1_csv pc where Item_Fat_Content in("LF","Low Fat");

#Query 12
select min(Item_MRP) from project1_csv pc where Item_Fat_Content in("LF","Low Fat");

#Query 13
select * from project1_csv pc where Item_MRP between 50 and 100;

#Query 14
select distinct(Item_Fat_Content) from project1_csv pc ;

#Query 15 
select distinct(Item_Type) from project1_csv pc ;

#Query 16 
select * from project1_csv pc order by Item_MRP desc;

#Query 17
select * from project1_csv pc order by Item_Outlet_Sales ;

#Query 18
select * from project1_csv pc order by Item_Type;

#Query 19
select * from project1_csv pc where Item_type in("Dairy","Meat");

#Query 20
select distinct(Outlet_Size) from project1_csv pc ;

#Query 21
select distinct(Outlet_Location_Type) from project1_csv pc ;

#Query 22
select distinct(Outlet_Type) from project1_csv pc ;

#Query 23 
select count(Item_Type),Item_Type from project1_csv pc group by Item_Type order by Item_Type desc;

#Query 24 
select count(Outlet_Size),Outlet_Size from project1_csv pc group by outlet_Size order by Outlet_Size;

#Query 25 #Under Review
select count(Outlet_Size),Item_Type from project1_csv pc group by Item_Type order by Outlet_Size;

#Query 26
select count(Outlet_Type),Outlet_Type from project1_csv pc group by Outlet_Type order by Outlet_Type desc;

#Query 27
select count(Outlet_Location_Type),Outlet_Location_Type from project1_csv pc group by Outlet_Location_Type order by Outlet_Location_Type desc;

#Query 28 
select max(Item_MRP),Item_Type from project1_csv pc group by Item_Type;

#Query 29
select min(Item_MRP),Item_Type from project1_csv pc group by Item_Type;

#Query 30
select min(Item_MRP), Outlet_Establishment_Year from project1_csv pc group by Outlet_Establishment_Year order by Outlet_Establishment_Year desc;

#Query 31
select max(Item_MRP), Outlet_Establishment_Year from project1_csv pc group by Outlet_Establishment_Year order by Outlet_Establishment_Year desc;

#Query 32
select avg(Item_MRP), Outlet_Size from project1_csv pc group by Outlet_Size order by Outlet_Size desc;

#Query 33
select avg(item_MRP) from project1_csv pc group by Outlet_Size ;

#Query 34
select avg(item_MRP) from project1_csv pc group by Outlet_Type order by Outlet_Type ;

#Query 35
select max(Item_MRP), Outlet_Type from project1_csv pc group by Outlet_Type;

#Query 36
select max(Item_Weight), Item_Type from project1_csv pc group by Item_Type;

#Query 37
select max(Item_Weight), Outlet_Establishment_Year from project1_csv pc group by Outlet_Establishment_Year ;

#Query 38
select min(Item_Weight), Outlet_Type from project1_csv pc group by Outlet_Type;

#Query 39
select avg(Item_Weight), Outlet_Location_Type from project1_csv pc group by Outlet_Location_Type order by Outlet_Location_Type desc;

#Query 40
select max(Item_Outlet_Sales), Item_Type from project1_csv pc group by Item_Type;

#Query 41
select min(Item_Outlet_Sales), Item_Type from project1_csv pc group by Item_Type;

#Query 42
select min(Item_Outlet_Sales), Outlet_Establishment_Year from project1_csv pc group by Outlet_Establishment_Year ;

#Query 43
select max(Item_Outlet_Sales), Outlet_Establishment_Year from project1_csv pc group by Outlet_Establishment_Year order by Outlet_Establishment_Year desc;

#Query 44
select avg(Item_Outlet_Sales), Outlet_Size from project1_csv pc group by Outlet_size order by Outlet_size desc;

#Query 45
select avg(Item_outlet_sales), outlet_size from project1_csv pc group by outlet_size;

#Query 46
select avg(Item_outlet_sales), outlet_type from project1_csv pc group by Outlet_Type ;

#Query 47
select max(Item_outlet_sales), outlet_type from project1_csv pc group by Outlet_Type ;

#Query 48 #Incomplete question

#Query 49
select count(item_outlet_sales) from project1_csv pc group by item_type;

#Query 50 #Incomplete question

#Query 51
select count(item_outlet_sales) from project1_csv pc group by Item_Fat_Content;

#Query 52
select max(item_visibility) from project1_csv pc  group by item_type;

#Query 53
select min(item_visibility) from project1_csv pc  group by item_type;

#Query 54 
select count(item_outlet_sales),Outlet_Location_Type from project1_csv pc group by item_type having outlet_location_type="Tier 1";

#Query 55 
select count(item_outlet_sales),Item_Fat_Content from project1_csv pc group by item_type having item_fat_content in("Low Fat", "LF");


