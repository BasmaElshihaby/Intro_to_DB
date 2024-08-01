
import mysql.connector


try:

        # Establishing the connection
        conn = mysql.connector.connect(
             host="localhost",
             user="root",
             password="567567@ShahShah",
        
         )
    
        

        # Creating a cursor object named mycursor
        mycursor = conn.cursor()

        # Creating the database
        mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error:
        print("error")

    

finally:
        # Closing the connection
            mycursor.close()
            conn.close()
            print('MySQL connection is closed')


