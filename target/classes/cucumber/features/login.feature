Feature: Login to Albert

  As a: user

  I want: to be able to login into Albert quickly, easily and simply

  So that I can send lots of invoices to my clients

  Background:

    Given I am now registered with Albert

    And I enter a valid 4-digit pincode

    Then I shall login.

  Scenario: Using a valid pincode
    Given I have successfully signed up to Albert with email
  <phil@getalbert.com>
    When I enter a valid pincode <1379>
    Then login occurs
    And I access my user account.

  Scenario: Using a valid pincode after standby mode
    Given I have successfully signed up to Albert with email
  <phil@getalbert.com>
    When I enter a valid pincode <1379>
    Then login occurs
    And I access my user account.

  Scenario: Using invalid pincode
    Given I have successful signed up to Albert with email
  <phil@getalbert.com>
    When I enter an invalid pincode <1111>
    Then login fails
    And I cannot access my user account.

  Scenario: Using an invalid pincode for multiple login attempts.
    Given I have successful signed up to Albert with email
  <phil@getalbert.com>
    When I repeatedly enter an invalid pincode <1111>
    Then login fails
    And I cannot access my user account.

  Scenario: Login without wi-fi connectivity
    Given I have successful signed up to Albert with email 	<phil@getalbert.com>
    But there is no internet connection.
    When I repeatedly enter valid pincode <1379>
    Then login fails
    And I cannot access my user account.