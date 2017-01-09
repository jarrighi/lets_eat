Feature: GET a specific recipe
  Scenario: User gets a recipe by id
    Given valid recipe id
    When client requests GET /recipes/:recipe_id
    Then return a recipe object that includes id = 1