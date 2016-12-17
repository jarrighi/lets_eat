Feature: GET a specific recipe
  Scenario: User gets a recipe by id
    Given the id is associated with a recipe in the database, 
    When a User sends a GET request to /recipes/:id route,
    Then the recipe object associated with that id is returned