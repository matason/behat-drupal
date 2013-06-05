Feature: Homepage
  As a site visitor
  I want see the welcome message
  So that I know I am on the right site

  @javascript
  Scenario: Visitor visits the homepage and observes the welcome message
    Given I am on "/"
    Then I should see "Welcome to localhost"
