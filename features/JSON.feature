Feature: Return JSON responses to GET request 
  Scenario: Successful /recipes request
    When User sends a GET request to our API endpoint
    Then User gets a HTTP response 
    And HTTP response includes a content type header 
    And HTTP response includes JSON payload