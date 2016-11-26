Feature: Get recipes

 Scenario: User gets list of recipes
  Given User sends a GET request to /recipes route
  Then User gets a list of recipes in JSON format

  