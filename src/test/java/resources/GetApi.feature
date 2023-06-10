Feature: Get API Demo
  Background:
    * url 'https://reqres.in/api'
    * headers Accept  = 'application/json''
  Scenario: Get Demo1
    Given path '/users?page=2
    When method GET
    Then  status 200
    And print response
    And print responseStatus
    Scenario: Get DEMO2
      Given path '/users?page=2'
      When method GET
      Then status 200
      And match response.data[0].name == 'cerulean'
      And match response.data.length