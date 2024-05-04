#import modules
import sqlite3 as sq
from PyQt5 import QtCore, QtGui, QtWidgets, uic
import sys

def DBconnect():
    '''creates a connection to the database'''
    try:
        conn = sq.connect("GymAppUsers.db")
        c = conn.cursor()
        return conn, c
    except sq.Error as e:
        print(f'Database conection error: {e}')