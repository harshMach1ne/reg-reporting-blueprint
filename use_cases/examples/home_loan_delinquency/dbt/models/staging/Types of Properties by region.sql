SELECT
region_codes.REGION AS Region_Name,
property.PROPERTY_TYPE AS Type_of_Property
COUNT(property.PROPERTY_TYPE) AS Number_of_Properties
FROM 
{{ref('ref_region_codes')}} as region_codes
inner join {{ref('src_securities')}} as property on region_codes.PROPERTY_POST_CODE=property.PROPERTY_POST_CODE
GROUP BY REGION_Name, Type_of_Property
ORDER BY Number_of_Properties;
