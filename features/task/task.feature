Feature: create tasks
As a user
I want to create tasks
So that I can manage those more efficiently

  Scenario: create tasks
    Given the user is authenticated
      And authorized
     When he attempts to create task
     Then he is able to create tasks
  
