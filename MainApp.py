#import modules
import sqlite3 as sq
from PyQt5 import QtCore, QtGui, QtWidgets, uic
import sys

conn = sq.connect('GymAppUsers.db')
cur = conn.cursor()

class Ui(QtWidgets.QMainWindow):
    '''This is a window class based om the xml code in the login ui'''
    def __init__(self):
        '''constructor method'''
        super(Ui, self).__init__()
        uic.loadUi('/Users/tomknight/GymApp/GymWizardCreateAccount.ui', self)
        #add event listeners here
        self.CreateAccount.clicked.connect(self.createAccount)
        #self.AlreadyHaveAnAccount.clicked.connect(self.alreadyHaveAnAccount)
        self.show()

    def createAccount(self):
        '''Create account button handler'''
        #access form line edits
        email = self.EmailInput.text()
        phone = self.PhoneNumberInput.text()
        username = self.UsernameInput.text()
        password = self.PasswordInput.text()
        height = self.HeightInput.num()
        weight = self.WeightInput.num()
        age = self.AgeInput.num()
        if email =='' or phone =='' or username =='' or password =='':
            messageBoxHandler('Creation Failed','All Fields must be filled','warning')
        else:
            '''query to insert new account into database'''
            print('success')

def messageBoxHandler(title, message, iconType='info'):
    '''this will display a dialogue message'''
    msgBox = QtWidgets.QMessageBox()
    #set icon type nased on the flag
    if iconType == 'info':
        msgBox.setIcon(QtWidgets.QMessageBox.Information)
    elif iconType == 'question':
        msgBox.setIcon(QtWidgets.QMessageBox.Question)
    elif iconType == 'warning':
        msgBox.setIcon(QtWidgets.QMessageBox.Warning)
    else:
        msgBox.setIcon(QtWidgets.QMessageBox.Critical)
    #set the title
    msgBox.setText(title)
    #set the content
    msgBox.setText(message)
    msgBox.exec_()

        
def mainApplication():
    app = QtWidgets.QApplication(sys.argv)
    window = Ui()
    app.exec_()
    app.quit()
    sys.exit(app.exec_())

mainApplication()