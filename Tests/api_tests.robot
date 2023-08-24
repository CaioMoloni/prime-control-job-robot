*** Settings ***
Resource       ../Resources/common.robot

*** Test Cases ***

Create a User
    Given the API is available
    When I create a user with given username and password, the status code should be 201   ${EMAIL}     ${PWD}     ${FIRSTNAME}     ${LASTNAME}
    Then The Response JSON Should Contain The Correct User Email

