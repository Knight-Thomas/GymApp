#import modules
import sqlite3 as sq
from PyQt5 import QtCore, QtGui, QtWidgets, uic
import sys
import hashlib

#connection tp database made
conn = sq.connect('GymAppUsers.db')
cur = conn.cursor()

class Ui(QtWidgets.QMainWindow):
    '''This is a window class based om the xml code in the .ui files'''
    def __init__(self):
        '''constructor method'''
        super(Ui, self).__init__()
        uic.loadUi('/Users/tomknight/GymApp/GymWizardLogInPage.ui', self)
        #add event listeners here
        self.DontHaveAnAccountButton.clicked.connect(self.createAccountPage)
        self.LogInButton.clicked.connect(self.logIn)
        
        #self.AlreadyHaveAnAccount.clicked.connect(self.alreadyHaveAnAccount)
        self.show()

    def workoutTracker(self):
        '''loads the workout tracker page'''
        self.destroy()
        super(Ui, self).__init__()
        uic.loadUi('/Users/tomknight/GymApp/GymWizardWorkoutTracker.ui', self)
        self.BackButton.clicked.connect(self.mainPage)
        self.show()

    def calorieTracker(self):
        '''loads the calorie tracker page'''
        self.destroy()
        super(Ui, self).__init__()
        uic.loadUi('/Users/tomknight/GymApp/GymWizardCalorieTracker.ui', self)
        self.BackButton.clicked.connect(self.mainPage)
        self.show()
        
    def leaderboardPage(self):
        '''loads the leaderboard page'''
        self.destroy()
        super(Ui, self).__init__()
        uic.loadUi('/Users/tomknight/GymApp/GymWizardLeaderboardPage.ui', self)
        self.FriendsButton.clicked.connect(self.friendsPage)
        self.SettingsButton.clicked.connect(self.settingsPage)
        self.MainPageButton.clicked.connect(self.mainPage)
        self.show()

    def friendsPage(self):
        '''loads the friends page'''
        self.destroy()
        super(Ui, self).__init__()
        uic.loadUi('/Users/tomknight/GymApp/GymWizardFriendsPage.ui', self)
        self.LeaderboardButton.clicked.connect(self.leaderboardPage)
        self.SettingsButton.clicked.connect(self.settingsPage)
        self.MainPageButton.clicked.connect(self.mainPage)
        self.show()

    def settingsPage(self):
        '''loads the settings page'''
        self.destroy()
        super(Ui, self).__init__()
        uic.loadUi('/Users/tomknight/GymApp/GymWizardSettingsPage.ui', self)
        self.LeaderboardButton.clicked.connect(self.leaderboardPage)
        self.FriendsButton.clicked.connect(self.friendsPage)
        self.MainPageButton.clicked.connect(self.mainPage)
        self.show()

    
    def mainPage(self):
        self.destroy()
        super(Ui, self).__init__()
        uic.loadUi('/Users/tomknight/GymApp/GymWizardMainPage.ui', self)
        #add even listeners
        self.WorkoutTrackerButton.clicked.connect(self.workoutTracker)
        self.CalorieTrackerButton.clicked.connect(self.calorieTracker)
        self.LeaderboardButton.clicked.connect(self.leaderboardPage)
        self.FriendsButton.clicked.connect(self.friendsPage)
        self.SettingsButton.clicked.connect(self.settingsPage)
        self.show()

    def logIn(self):
        '''Handles the log in button'''
        #access form line edits
        username = self.UsernameInput.text()
        password = self.PasswordInput.text()
        if username =='' or password =='':
            messageBoxHandler('Log In Failed','All Fields Must Be Filled','warning')
        else:
            #creates a query to check to see if the inputs given match an account thats already in the database 
            query ="""SELECT * FROM Users
                    WHERE Username=? AND Password =?"""
            passwordEncode = password.encode()
            passwordHash = hashlib.sha256(passwordEncode).hexdigest()
            TorF = cur.execute(query, (username, passwordHash))
            conn.commit()
            conn.close()
            self.mainPage()
    
    def logInPage(self):
        self.destroy()
        super(Ui, self).__init__()
        uic.loadUi('/Users/tomknight/GymApp/GymWizardLogInPage.ui', self)
        self.LogInButton.clicked.connect(self.logIn)
        self.show()    

    def createAccount(self):
        #access form line edits
        email = self.EmailInput.text()
        phone = self.PhoneNumberInput.text()
        username = self.UsernameInput.text()
        password = self.PasswordInput.text()
        height = self.HeightInput.currentText()
        age = self.AgeInput.value()
        weight = self.WeightInput.value()
        if email =='' or phone =='' or username =='' or password =='':
            messageBoxHandler('Creation Failed','All Fields Must Be Filled','warning')
        else:
            '''query to insert new account into database'''
            query = '''INSERT INTO Users (Username, Password, Email, Phone, CaloriesBurntD, CalorieIntakeD, WeightLiftedD, TimeSpentD, WorkoutW, WeightLiftedW, TimeSpentW, CaloriesBurntW, CalorieIntakeW, WorkoutsM, WeightLiftedM, TimeSpentM, CaloriesBurntM, CalorieIntakeM, WorkoutsY, WeightLiftedY, TimeSpentY, CaloriesBurntY, CalorieIntakeY, WorkoutsL, WeightLiftedL, TimeSpentL, CaloriesBurntL, CalorieIntakeL, Height, Age, Weight)
                    VALUES (?,?,?,?,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,?,?,?)'''
            #hashing the password
            passwordEncode = password.encode()
            passwordHash = hashlib.sha256(passwordEncode).hexdigest()
            #executing the query
            cur.execute(query, (username, passwordHash, email, phone, height, age, weight))
            conn.commit()
            conn.close()
            #close the previous GUI window and load the next
            self.destroy()
            self.mainPage()

    def createAccountPage(self):
        '''Create account button handler'''
        self.destroy()
        super(Ui, self).__init__()
        uic.loadUi('/Users/tomknight/GymApp/GymWizardCreateAccount.ui', self)
        self.CreateAccount.clicked.connect(self.createAccount)
        self.AlreadyHaveAnAccount.clicked.connect(self.logInPage)
        self.show()    

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