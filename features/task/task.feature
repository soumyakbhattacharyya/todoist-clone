Feature: manage tasks
  As a user
  I want to manage tasks
  So that I operate efficiently

  Background: 
    Given the user is authenticated
    And authorized

  Scenario: create task
    When he attempts to create task
    Then he is able to create task
    And set a priority for the task
    And set a project to which the task belonged to
    And set a target completion date for the task
    And set a reminder date for the task
    And set if the task is recursive
    And set the repeatation frequency of the task

  Scenario: update task
    When he attempts to update task
    Then he is able to update task

  Scenario Outline: list tasks
    When he attempts to list tasks
    Then he is able to view list of tasks for a <period>

    Examples: 
      | period |
      | daily  |
      | weekly |

  Scenario: delete tasks
    When he attempts to delete task
    Then he is able to delete task
    And all sub - tasks under the given task gets deleted recursively

  Scenario: label task
    When I want to label a task with a speific label
    Then I am able to label the task

  Scenario Outline: review all completed task
    Given I have completed tasks
    When I want to see those tasks for a <period>
    Then I am able to view the task for a <period>

    Examples: 
      | period |
      | daily  |
      | weekly |
