Feature: GET list of recipes
  Scenario: User gets list of recipes
    When User sends a GET request to /recipes route
    Then User gets a list of recipes in JSON format