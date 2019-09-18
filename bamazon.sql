DROP DATABASE bamazon_db;
CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(255),
    department_name VARCHAR(255),
    price VARCHAR(255),
    stock_quantity VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('SAMSUNG TV', 'Electronics','$1000', '500'), ('Patio Furniture', 'Outdoors','$500','300'), ('Digital Camera', 'Electronics','$100','300'), ('Beer Glasses', 'Kitchen','$20','200'),('Dining Table', 'Furniture','$400','200'),('Computer Desk','Furniture','$120','50'),('Lamps','Household','$50','200'),('Milk','Groceries','$5','200'), ('Playstation', 'Electronics','$300','400'),('Hard Drive','Computers','$100','300'),('iPhone', 'Mobile','$800','1000');

SELECT * FROM products;

