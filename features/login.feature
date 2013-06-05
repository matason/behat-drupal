Feature: Login
  As a visitor
  I want login
  So that I can manage my account

  Background:
    Given I am on "/"

  Scenario: A user enters their credentials and logs in successfully
    And I fill in "admin" for "name"
    And I fill in "letmein" for "pass"
    When I press the "Log in" button
    Then I should see "My account"

  @javascript
  Scenario Outline: Test log in for 3 accounts
    And I fill in "<name>" for "name"
    And I fill in "<pass>" for "pass"
    When I press the "Log in" button
    Then I should see "My account"
  
    Examples:
      | name | pass |
      | admin | letmein |
      | user1 | letmein |

  Scenario: A user enters the wrong password
    And I fill in "admin" for "name"
    And I fill in "something" for "pass"
    When I press the "Log in" button
    Then I should see "Sorry, unrecognized username or password."
