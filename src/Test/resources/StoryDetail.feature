Feature: Task management
Description: To capture task details

Scenario: Data should be valid
Given admin enters task as "Ui Design" and assignee as "Tahir" and start date as "01-Jun-17" and end date as "03-Jun-17"
And assignee is a valid sfaff
And start date should be greater than "project start date"
And end date shoould be greater than "start date" 
And end date should be less than "project end date" 
When click on button "ADD"
Then sytem saves the data 
And displays the message "Task created successfully"

Scenario: User search for a task
Given admin enters task as "Ui Design" and search
When click on button SEARCH"
Then sytem search for matching records with task as UI Design  
And displays the search results in tabular format with columns "task name", "assignee", "start date", "end date", "status"