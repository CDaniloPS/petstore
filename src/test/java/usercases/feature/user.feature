Feature: sample karate test
  
  Background:
    * url 'https://petstore.swagger.io/v2/user'

  Scenario: create a user and then get it by username
    * def jsonRequest = read('../json/user_insert.json')
    Given url 'https://petstore.swagger.io/v2/user'
    And request jsonRequest
    When method post
    Then status 200

    * def username = jsonRequest.username
    * print 'created username is: ', username
    Given path username
    When method get
    Then status 200
    And match response contains jsonRequest
 
  Scenario: get user with username not found 
    * def usernamenot = "testpet"
    * print 'username to search is: ', usernamenot
    Given path usernamenot
    When method get
    Then status 404
  
  Scenario: update name and email by username and then get it 
    * def jsonRequest2 = read('../json/user_update.json')
    * def username = jsonRequest2.username
    Given path username
    And request jsonRequest2
    When method put
    Then status 200
   
    * print 'updated username is: ', username
    Given path username
    When method get
    Then status 200
  
  Scenario: delete a user
    * def jsonRequest = read('../json/user_insert.json')
    Given path jsonRequest.username
    When method delete
    Then status 200
   
  Scenario: delete a user with username not found 
    * def usernamenot = "testpet"
    Given path usernamenot
    When method delete
    Then status 404
    
