Feature: GET requests

  Scenario: Root endpoint
    Given I am on /
    Then I should see "Hello World" 


  Scenario: User gets list of recipes
    Given User sends a GET request to /recipes route
    Then User gets a list of recipes in JSON format