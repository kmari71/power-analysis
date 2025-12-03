SELECT * FROM sales_db.`message group - product`;
RENAME TABLE `message group - product` TO `product_sales`;
SELECT * FROM product_sales;
SELECT SUM(SellPrice) AS Total_revenue FROM product_sales;
SELECT BrandName, SUM(SellPrice) AS total_sales FROM product_sales GROUP BY BrandName ORDER BY total_sales DESC;
SELECT BrandName, COUNT(*) AS quantity_brand FROM product_sales group by BrandName ORDER BY quantity_brand DESC;
SELECT DISTINCT Category FROM product_sales;
SELECT Category, COUNT(*) AS quantity FROM product_sales GROUP BY Category ORDER BY quantity DESC;

CREATE TABLE total_sales_brand AS SELECT BrandName, SUM(SellPrice) AS total_sales FROM product_sales GROUP BY BrandName ORDER BY total_sales DESC;
CREATE TABLE brand_quantity AS SELECT BrandName, COUNT(*) AS quantity_brand FROM product_sales group by BrandName ORDER BY quantity_brand DESC;
CREATE TABLE products_category AS SELECT Category, COUNT(*) AS quantity FROM product_sales GROUP BY Category ORDER BY quantity DESC;