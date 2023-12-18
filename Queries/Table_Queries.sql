SELECT * FROM "campaign"; 
SELECT * FROM "contacts";
SELECT * FROM "category";
SELECT * FROM "subcategory";

SELECT *
FROM "campaign"
LEFT JOIN "contacts" 
ON "campaign".contact_id = "contacts".contact_id;