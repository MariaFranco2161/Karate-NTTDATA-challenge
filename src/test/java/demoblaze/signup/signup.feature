Feature: Signup

  Background:
    * url 'https://api.demoblaze.com/'
    * path 'signup'
    * request { "username": "testuserMF2777w", "password": "testuserMF2" }
    * def responseSuccessful = read('classpath:demoblaze/responses/signup_success.json')
    * def responseExisting = read('classpath:demoblaze/responses/signup_existing.json')

  Scenario: Successful Signup
    When method post
    Then status 200
    And match response == ''

  Scenario: Signup with existing username
    When method post
    Then status 200
    And match response == responseExisting
