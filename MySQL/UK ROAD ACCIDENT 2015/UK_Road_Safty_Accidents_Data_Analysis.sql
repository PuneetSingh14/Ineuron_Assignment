# 1. Evaluate the median severity value of accidents caused by various Motorcycles.

Select vt.label as Motorcycles_types, Avg(a.Accident_Severity) as Median_Severity
from Accidents as a left join vehicles as v on a.Accident_Index = v.Accident_Index
left join vehicles_types as vt on v.Vehicle_Type = vt.code
where vt.label like '%Motorcycle%' 
group by 1 order by 2;
------------------------------------------------------------------------------------------------------------------------
# 2. Evaluate Accident Severity and Total Accidents per Vehicle Type

Select a.Accident_Severity, count(a.Accident_Index) as Total_Accidents, vt.label as Vehicles_Type
from Accidents as a left join vehicles as v on a.Accident_Index = v.Accident_Index
left join vehicles_types as vt on v.Vehicle_Type = vt.code
group by Vehicles_Type order by Total_Accidents ;
------------------------------------------------------------------------------------------------------------------------
# 3. Calculate the Average Severity by vehicle type.

Select ifnull(vt.label,"No Info")as Vehicles_Type, Avg(a.Accident_Severity) as Average_Severity
from Accidents as a left join vehicles as v on a.Accident_Index = v.Accident_Index
left join vehicles_types as vt on v.Vehicle_Type = vt.code
group by Vehicles_Type order by 2;
------------------------------------------------------------------------------------------------------------------------
# 4. Calculate the Average Severity and Total Accidents by Motorcycle.

Select  ifnull(vt.label,"No Info") as Motorcycles_types, Avg(a.Accident_Severity) as Median_Severity,
count(a.Accident_Index) as Total_Accidents
from Accidents as a left join vehicles as v on a.Accident_Index = v.Accident_Index
left join vehicles_types as vt on v.Vehicle_Type = vt.code
where vt.label like '%Motorcycle%' 
group by 1 order by 3;

------------------------####-------------------------------####------------------------------------------####-----------









