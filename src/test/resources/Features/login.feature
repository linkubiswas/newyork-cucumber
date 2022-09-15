@SmokeTest @RegressionTest @LoginTest

Feature: Test login functionalities

  Background:
    Given a user is on login page


  @positive_test
  Scenario: Check login is successful with valid credentials
    When user enters username "toma mondal" and password "12345"
    And click on login button
    Then user is navigate to home page

  @negative_test
  Scenario: Check login is unsuccessful with invalid credentials
    When user enters username "toma mondal" and password "44444"
    And click on login button
    Then user is failed to login

      @dataDriven_test
Scenario Outline: Check login is successful with valid credentials
    When user enters username "<username>" and password "<password>"
    And click on login button
    Then user is navigate to home page

  Examples:
  |username|password|
  |linku biswas|12345|
  |korno biswas|12345|
  |areon biswas|12345|

      @datatable_test
 Scenario: Check login is successful using data table
    When user click on login button upon entering credentials
    |username|password|
    |linku biswas|12345|
   Then user is navigate to home page
