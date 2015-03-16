# Student_Objects
This is a Ruby exercise at Ironhack to learn the Ruby. 

Overview
In this challenge you will work with a collection of simple Student objects.
Your program will create arrays of student data, and compute the average scores for each student. An optional challenge will ask you to create a search function.
Topics covered
To achieve this, you will use knoweledge of the following:
•	Designing your own objects
•	Initializing and populating and array
•	Compute from arrays
•	Basic searches
Resources
•	http://www.ruby-doc.org
Objective 1: Create an Array of Students
Part 1. Create an array students with 5 Students. Each student should be assigned a first_name, and 5 test scores (scores are between 0 and 100) when it is created. The first Student should be named "Alex" with scores[100,100,100,0,100].
After you've updated the Student class and populated your students array, this driver code should pass:
p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0

After you've updated the Student class and populated your students array.

Part 2. Compute and assign a score average and a letter grade to each student. Letter grades are based on the average (A for >=90%, B for >=80%, C for >= 70%, D for >= 60% and F for < 60%).
This driver code should pass:
p students[0].average == 80
p students[0].letter_grade == 'B'

Part 3. Write a linear_search method that searches the student array for a student's first_name and returns the position of that student if they are in the array. If the student is not in the array then the method should return -1.

This driver code should pass:
p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1
You are done when...
The tests defined at the end of each part will pass.


What to submit
A working program that meets the expectations above, including driver code that includes these tests.

OPTIONAL Objective 2: Let's Add Sorting
Let's extend our functionality to sorting.
You will write code for the following 2 parts. Start with the Student Class that already passes all the driver code in Objective 1. Add the Driver Code provided and methods to make the Driver Code run.

Part 1. Write a sort method that sorts the array of students by their SSN. You will first need to add a unique SSN to each student. (Assign "111-11-1111" to Alex for the tests.) You may write your own method from scratch or use existing ruby methods.
This driver code (or equivalent driver code if you implementation of sort requires it) should pass:
students.sort
p students[0].ssn < students[1].ssn
p students[3].ssn > students[0].ssn

Part 2. Write a binary_search method that searches the student array for a student ssn and returns the position of that student if they are in the array. If the student is not in the array then the method should return -1. You can write a recursive or iterative version of binary_search.
This driver code should pass:
p binary_search(students, "111-11-1111") == 0
p binary_search(students, "000-00-0000") == -1
You are done when...
•	All the driver code runs.
•	Your code is efficient and well factored.

What to submit
A working program that meets the expectations above, including driver code that passes the tests.



