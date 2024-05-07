#import modules
import sqlite3 as sq
from PyQt5 import QtCore, QtGui, QtWidgets, uic
import sys
import hashlib

#connection tp database made
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
        height = self.HeightInput.currentText()
        age = self.AgeInput.value()
        weight = self.WeightInput.value()
        if email =='' or phone =='' or username =='' or password =='':
            messageBoxHandler('Creation Failed','All Fields must be filled','warning')
        else:
            '''query to insert new account into database'''
            query = '''INSERT INTO Users (Username, Password, Email, Phone, CaloriesBurntD, CalorieIntakeD, WeightLiftedD, TimeSpentD, WorkoutW, WeightLiftedW, TimeSpentW, CaloriesBurntW, CalorieIntakeW, WorkoutsM, WeightLiftedM, TimeSpentM, CaloriesBurntM, CalorieIntakeM, WorkoutsY, WeightLiftedY, TimeSpentY, CaloriesBurntY, CalorieIntakeY, WorkoutsL, WeightLiftedL, TimeSpentL, CaloriesBurntL, CalorieIntakeL, Height, Age, Weight)
                    VALUES (?,?,?,?,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,?,?,?)'''
            passwordEncode = password.encode()
            passwordHash = hashlib.sha256(passwordEncode).hexdigest()
            cur.execute(query, (username, passwordHash, email, phone, height, age, weight))
            conn.commit()
            conn.close()

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