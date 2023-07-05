Feature: sample karate test
  

  Background:
    * url 'https://petstore.swagger.io/v2/user'


  Scenario: create a user and then get it by username
    * def user =
      """
      {
        "id": 10,
        "username": "testuser",
        "firstName": "Test User",
        "lastName": "Test User",
        "email": "emailtest@user.com",
        "password": "pass",
        "phone": "5931234567890",
        "userStatus": 0  
      }
      """

    Given url 'https://petstore.swagger.io/v2/user'
    
    And request user
    When method post
    Then status 200

    * def username = user.username
    * print 'created username is: ', username

    Given path username
     When method get
     Then status 200
     And match response contains user
 
  Scenario: get user with username not found 

    * def usernamenot = "testpet"
    * print 'username to search is: ', usernamenot

    Given path usernamenot
     When method get
     Then status 404
  
   Scenario: update name and email by username and then get it 
    * def userupdate =
      """
      {
        "id": 10,
        "username": "testuser",
        "firstName": "Test Usernew",
        "lastName": "Test User",
        "email": "emailtest_new@user.com",
        "password": "pass",
        "phone": "5931234567890",
        "userStatus": 0  
      }
      """
    * def username = userupdate.username
    
    Given path username
    
    And request userupdate
    When method put
    Then status 200

    * print 'updated username is: ', username

    Given path username
     When method get
     Then status 200
  
Scenario: delete a user

    * def username =  "testuser"

    Given path username
     When method delete
     Then status 200
   
 Scenario: delete a user with username not found 

    * def usernamenot = "testpet"

    Given path usernamenot
     When method delete
     Then status 404
    
