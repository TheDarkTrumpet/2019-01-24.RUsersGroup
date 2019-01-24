select * from INFORMATION_SCHEMA.TABLES;

select * from Application.Cities
    where StateProvinceID 
        = (select StateProvinceID from Application.StateProvinces where StateProvinceCode = 'IA');