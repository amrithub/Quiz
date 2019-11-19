# ****Software Development Plan****
## **Statement of Purpose and Scope**
#### **Purpose of the application:**
##### At its most enhanced level, the application can allow the user to select the level of test (easy,medium, hard) and provide access to numerous questions if database system is implemented.The project is aimed towards the learners of programmers to test their knowledge and skills in ruby programming. The application can be used for other fields as well but the main objective of the application still remains to help the students test their knowledge.
##### As the project limits the scope to terminal only as per the specification, despite the lack of graphics, the application will definitely solve the problem relevant to the conduction of multiple choice objective test. 

##### A user can start the use the application as per the steps below:
* User enters his/her name
* user then chooses the number of questions he/she want to play.
* First question appears on the terminal with foru possible answers and asks the user to choose one of the possible answers.
* Then next question is displayed followed by the third,fourth and so on until the final question is diplayed.
* Once the user enters the answer of the last question, the final score and the list of all correct answers are displayed on the screen.


#### Scope of the application:
#####  The scope of this project can be outlined as below:
##### Project Scope:  This application us based on Ruby programming language regarding the coding part and is documented in MarkDown language.

##### Product Scope: The project includes a ruby programme that stores a number of questions and their multiple choice answers choses three questions randomly and displays the total score obtained by the user and the list of all correct answers.

<!--  describe at a high level what the application will do
- identify the problem it will solve and explain why you are developing it
- identify the target audience 
- explain how a member of the target audience will use it -->
## **Features**
#### The following are the main features of this terminal application
<!-- ### **User Introduction :**
##### As soon as the program is run, the terminal asks the user to enter his/her name and welcomes to the game.  -->
### **User's Input and output :** 
##### The user can choose the number of questions he/she want to play. For example if a player wants 10 questions, the applicatoin provides only 10 questions. The questions are randomly selected and gets never repeated in the same game. 
### **Multimode**
##### This application provides two modes. One is practice mode and another is Tournament mode. The user can chose the mode and keep on playing.
### **Final Score and list of correct answers:**
##### After the user answers all the questions that he chose, the terminla displays the total score obtained and the list of all the correct answers in the correct order.
### **Handles Error**
##### Whenever a user enters invalid input, he/she is asked to enter the valid input without terminating the program. For example, if the user enters 'g' for the number of questions he/she wants to face, the terminal asks the user to enter an valid input which is an integer between 1 to 10
##### Also, The features can be  summarized as below in terms of basic and advanced qualities:

### **The Basic Features:**
 
* One player can play at a time
* Player can chose how many questions he/she want to face
* Each question has four possible answers
* The application should display the final score of the player and the list of all correct answers in sequence 

#### **The Extended Features:**
* The application can be extended by the use of database to enable more options to the user and uplift the scope of the project.
* separate buttons and levels for a better, friendly and more practical purpose.


## **User Interaction and Experience** 
##### User can get the guidance (how to start and play the game) by looking into a help file which is written in MarkDown language. The file will guide the user how to enter the input and chose the mode of the game which may be practice mode or tournament mode
##### If the user enters a number > 10
##### User also gets the infromation regarding the valid inputs (multiple choice question answers) which can be either 'a', 'b', 'c' or 'd'.
##### If user enters an invalid response, the application guides the user with a proper message. For example, if the user enters 'e' as a response, the console displays 'Please enter the valid response ('a', 'b', 'c' or 'd').


## **Control flow diagram**
##### The overall flow chart of the ruby based programme is as below:
Follow the link for control flow diagram of the application.
https://www.draw.io/#Weffaeb3500157e5c%2FEFFAEB3500157E5C!330



# **Project Implementation Plan**

| features            | Checklist                                                                                                                                                                                                                                                                                                         | Priority | deadline   |
|---------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|------------|
| User Input          | * Deterrmine the data structure of input * Determine the range of user input * apply conditional statements * Apply for loop and while loop * Apply a method for a more effective design * Test the inputs with different users who    know nothing about my project.                                             | High     | 18/11/2019 |
| Multimode           | * Determine number of modes. * Use if statement to switch to different modes. * Use different loops. * Use methods as required. * Test the modes with different users.                                                                                                                                            | low      | 19/11/2019 |
| Perpetual operation | * Determine if perpetual operation is desirable or not. * Determine where to restart the execution. * Use if statement for to continually run the program. * Use a method to call the game as long as the user  wants. * Test for this feature with different people who are    not familiar to your application. | mdium    | 19/11/2019 |

