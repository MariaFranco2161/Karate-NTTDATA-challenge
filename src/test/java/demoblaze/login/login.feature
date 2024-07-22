Feature: Login
  Background:
    * url config.baseUrl
    * path config.login
    * request { "username": "testuser", "password": "testpass" }
    * def responseLoginSuccessful = read('classpath:demoblaze/responses/login_success.json')
    * def responseLoginInvalid = read('classpath:demoblaze/responses/login_passIncorrect.json')


  Scenario: Successful Login
    When method post
    Then status 200
    And match response.Auth_token == '#notnull'

  Scenario: Login with incorrect password
    When method post
    Then status 200
    And match response == responseLoginInvalid
