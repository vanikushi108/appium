Feature: Sign up
  Description: As a: User

  I want:  I want sign up to Albert to be quick, simple and friendly.
  So that: I can feel confident in sending lots of invoices.

  Background:
  New users should see their invoice page once successfully signed up. They should
  |add email          |
  |enter pincode	     |
  |choose business name|

  Scenario: Given I have chosen to sign up to Albert
  Where someone has an unregistered email
    Given I have chosen to sign up
    When I enter unregistered email address
    Then I should be prompted to enter pincode
    Then I should add my business name
    And I should see notification to get started

  Scenario: Duplicate email
  Where someone tries to create an account for an email that is already registered
    Given I have chosen to sign up
    When I enter an email address that has already registered
    Then I should be prompted to enter pincode
    Then I should add business name
    But I should be notified that Another account is using this email
    And I should be returned to sign up page

  Scenario: Sign up without wifi connectivity
  Where sign up occurs and there is no connection between the app and the server.
    Given I have chosen to sign up

    When I enter unregistered email address
    Then I should be prompted to enter pincode
    Then I should add business name
    Then I should receive notification saying something has gone wrong
    And I am unable to Sign up

