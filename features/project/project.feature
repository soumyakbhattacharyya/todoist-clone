Feature: manage projects
  As a user
  I want group tasks in bucket called project
  so that I can track the project to completion

  Background: 
    Given the user is authenticated
    And authorized

  Scenario: create project
    When he attempts to create project
    And he provides name, description, goal, due date of the project
    Then the project gets created
  
  Scenario: list projects
    When he attempts to list all project
    Then the projects are listed
    
  Scenario: update project
    When update name, description, goal, due date of the project
    Then then one or more attributes of the project gets updated
    
  Scenario: delete project
    When he deletes a project
    Then an warning message is shown to the user
     And on receiving confirmation the project and all sub - resources get deleted
    
    