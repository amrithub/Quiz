# ****Software Development Plan****
## **Statement of Purpose and Scope**
#### **1. Purpose of the application:**
##### At its most enhanced level, the application can allow the user to select the level of test (easy,medium, hard) and provide access to numerous questions if database system is implemented.The project is aimed towards the learners of programmers to test their knowledge and skills in ruby programming. The application can be used for other fields as well but the main objective of the application still remains to help the students test their knowledge.
##### As the project limits the scope to terminal only as per the specification, despite the lack of graphics, the application will definitely solve the problem relevant to the conduction of multiple choice objective test. 






#### **2. Scope of the application:**
#####  The scope of this project can be outlined as below:
##### Project Scope:  This application us based on Ruby programming language regarding the coding part and is documented in MarkDown language.

##### Product Scope: The project includes a ruby programme that stores a number of questions and their multiple choice answers choses three questions randomly and displays the total score obtained by the user and the list of all correct answers.
## **Features:**
### **a. Main Features**
##### The following are the main features of this terminal application
### **1. User's Input and output :** 
##### The user can choose the number of questions he/she want to play. For example if a player wants 10 questions, the applicatoin provides only 10 questions. The questions are randomly selected and gets never repeated in the same game. 
### **2. Multimode**
##### This application provides two modes. One is practice mode and another is Tournament mode. The user can chose the mode and keep on playing. There are 5 questions in tournament mode.

### **3. Perpetual Operation**
##### User can take the quiz on as many times as she/he wants. Once user has finished a round of practice or tournament, he/she is asked by the console whether to continue or terminate.
## **b. Additional Features**
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

# **User Interaction and Experience**
##### A user can start the use the application as per the steps below:
* User can enter his/name either from terminal as an argument or later when program exexutes

![Screenshot](/images/output1.png)
* User is then asked to choose between practice mode(p) and tournament mode. User then chooses the number of questions he/she want to play in practice mode. 

![Screenshot](/images/output3.png)

* First question appears on the terminal with four possible answers and asks the user to choose one of the possible answers. Then next question is displayed followed by the third,fourth and so on until the final question is diplayed.

![Screenshot](/images/output4.png)


* Once the user enters the answer of the last question, the final score and the list of all correct answers are displayed on the screen.

![Screenshot](/images/output5.png)

# **How errors will be handled by the application and user will be informed**
1. If user enters invalid input for number of questions:
If user enters invalid response ( for example: 'a'.'sadsad', 0,12 for the number of questions, he/she will be informed about it and asked to enter a valifd response as shown by the screenshot below:

![Screenshot](/images/error.png)


2. If user enters invlaid response for correct answer:
If user enters any other response instead of 'a', 'b', 'c' or 'd' ( for example user enters 'e' or 9 or 'ssdsada')for the correct answer of each question, he/she will be informed of it and will be asked to enter valid response as shown by the screenshot:
![Screenshot](/images/error2.png)



# **Control Flow Diagram**
The overall control flow diagram is given by the image below:

![Control Flow Daigram](/screenshots/controlflow.png)







