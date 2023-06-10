Feature: sample Api Tests
  Scenario: test a sample get api
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 201