
import mysql.connector
# from mysql.connector import Error

# def create_database():
# conn = None

try:

        # Establishing the connection
        conn = mysql.connector.connect(
             host="localhost",
             user="root",
             password="567567@ShahShah",
            #  database="alx_book_store"
         )
    
        # if conn.is_connected():
        #     print('Connected to MySQL server')


        # Creating a cursor object named mycursor
        mycursor = conn.cursor()

        # Creating the database
        mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except Error as e:
        print(f"Error: {e}")
    

finally:
        # Closing the connection
            mycursor.close()
            conn.close()
            print('MySQL connection is closed')


# create_database()
