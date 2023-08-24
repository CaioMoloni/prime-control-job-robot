*** Settings ***
Resource    ../common.robot

*** Keywords ***

Given the API is available
    [Documentation]     Test if the API is available by getting a user list from and endpoint
    Check if the API is available

When I create a user with given username and password, the status code should be 201
    [Documentation]     Create a user with the data from the environment variables
    [Arguments]    ${user_email}     ${user_password}    ${user_firstname}    ${user_lastname}
    ${response}=   Create a new user    ${user_email}     ${user_password}
    Set Suite Variable    ${response}
    Check If Response Code Is 200   ${response}
    [Return]    ${response}

Then the response JSON should contain The correct user email
    [Documentation]     Check if the response data is correct
    ${responseJson}=    Convert String To Json   ${response.content}
    ${id}=      Get value from JSON key     ${responseJson}      id
    Fetch the new user     ${id}    ${EMAIL}     ${FIRSTNAME}     ${LASTNAME}

