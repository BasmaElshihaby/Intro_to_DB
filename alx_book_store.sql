import mysql.connector

# Database connection details (replace with your own)
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="567567@ShahShah",
    database="alx_book_store"
)
mycursor = mydb.cursor()

# Creating the database
mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

# Using the created database
mycursor.execute("USE alx_book_store")


print(mydb.get_server_info())

mycursor.execute("""
CREATE TABLE IF NOT EXISTS Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
)
""")

mycursor.execute("""
CREATE TABLE IF NOT EXISTS Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
)
""")

mycursor.execute("""
    CREATE TABLE IF NOT EXISTS Customers (
        customer_id INT AUTO_INCREMENT PRIMARY KEY,
        customer_name VARCHAR(215) NOT NULL,
        email VARCHAR(215) NOT NULL,
        address TEXT
    )
""")

mycursor.execute("""
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)
""")


mycursor.execute("""
CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
)
""")






