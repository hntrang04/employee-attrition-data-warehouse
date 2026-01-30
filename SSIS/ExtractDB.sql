
SELECT 
    e.Employee_ID, 
    e.Age, 
    e.Gender, 
    r.Role_ID, 
    r.Department, 
    r.Job_Title, 
    y.Years_at_Company, 
    f.Satisfaction_Level, 
    mh.Average_Monthly_Hours, 
    f.Promotion_Last_5Years, 
    s.Salary, 
    f.Attrition, 
    s.Salary_Bracket, 
    mh.Overworked
FROM 
    Fact f
JOIN 
    Dim_Employee e ON f.Employee_ID = e.Employee_ID
JOIN 
    Dim_Role r ON f.Role_ID = r.Role_ID
JOIN 
    Dim_Years y ON f.Years_at_Company = y.Years_at_Company
JOIN 
    Dim_Monthly_Hours mh ON f.Average_Monthly_Hours = mh.Average_Monthly_Hours
JOIN 
    Dim_Salary s ON f.Salary = s.Salary;
