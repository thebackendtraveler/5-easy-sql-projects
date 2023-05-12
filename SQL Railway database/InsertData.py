# This Module has the Functions to Insert the Data in the MySQL Tables

# Importing Required Modules

import csv
import mysql.connector as mysql

# Functions


def InsertDataTrain():
    """
    InsertDataTrain() -> Inserts all the Train details in the train_info Table
    Parameters -> None
    """

    conn = mysql.connect(host="localhost",
                     user=YOUR_USERNAME,
                     password=YOUR_PASSWORD,
                     database="railway")

    cur = conn.cursor()

    # Iterating through all the values and insert's them in the table
    # Replace the path below with the absolute path of the file on your computer
    try:
        with open('C:\Users\rbandit\Documents\Python-Instagram\5-easy-python-projects\Railway database') as csv_data:
            csv_reader = csv.reader(csv_data, delimiter=",")
            for row in csv_reader:
                cur.execute(
                    'INSERT INTO train_info VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)', row)
    except FileNotFoundError:
        print("Please check whether the file is in the Assets Folder or not and try changing the Location in InsertData.py")
    finally:
        conn.commit()  # Important: Committing the Changes
        cur.close()
        conn.close()