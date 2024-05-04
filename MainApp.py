#import modules
import sqlite3 as sq
from PyQt5 import QtCore, QtGui, QtWidgets, uic
import sys

class Ui(QtWidgets.QMainWindow):
    '''This is a window class based on the xml code in the loguin ui'''
    def __init__(self):
        '''constructor method'''
        super(Ui, self).__init__()
        uic.loadUi('/Users/tomknight/GymApp/GymWizardCreateAccount.ui', self)

        #add event listeners
        self.CreateAccount.clicked.connect(self.CreateAccount())
        #show the window
        self.show()

    def CreateAccount(self):
        '''Handle click events on the CreateAccount button'''
        #access form line edits
        enteredUsername = self.UsernameInput.text()
        enteredPassword = self.PasswordInput.text()
        enteredEmail = self.EmailInput.text()
        enteredPhone = self.PhoneNumberInput.int()
        #perform validation on the username and password
        if enteredPassword == '' or enteredUsername =='' or enteredEmail =='' or enteredPhone =='':
            messageBoxHandler('Blank fields detected','Password and Username must be entered','warning')
        else:
            #query to insert new account into database
            query =f"""INSERT """
            executeStatementHelper(query, (enteredUsername,))

    def DBconnect():
        '''creates a connection to the database'''
        try:
            conn = sq.connect("GymAppUsers.db")
            c = conn.cursor()
            return conn, c
        except sq.Error as e:
            print(f'Database conection error: {e}')