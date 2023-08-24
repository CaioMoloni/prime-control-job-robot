*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Library     Collections
Resource    Pages/keywords.robot
Resource    Steps/steps.robot
Resource    ../Data/common.robot
Resource    ../Data/user.robot
Resource    ../Data/endpoints.robot

*** Keywords ***
Perform GET Request
    [Arguments]  ${endpoint}
    ${response}=  GET  ${BASE_URL}${endpoint}
    [Return]  ${response}

Perform POST Request
    [Arguments]  ${endpoint}  ${data}   ${headers}
    ${headers}=  Create Dictionary  Content-Type=application/json
    ${response}=  POST  ${BASE_URL}${endpoint}  json=${data}  headers=${headers}
    [Return]  ${response}

Perform PUT Request
    [Arguments]  ${endpoint}  ${data}   ${headers}
    ${headers}=  Create Dictionary  Content-Type=application/json
    ${response}=  PUT  ${BASE_URL}${endpoint}  json=${data}  headers=${headers}
    [Return]  ${response}

Perform PATCH Request   
    [Arguments]  ${endpoint}  ${data}   ${headers}
    ${headers}=  Create Dictionary  Content-Type=application/json
    ${response}=  PATCH  ${BASE_URL}${endpoint}  json=${data}  headers=${headers}
    [Return]  ${response}

Get value from JSON key
    [Arguments]  ${json}  ${key} 
    ${actual_value}=  Get From Dictionary  ${json}  ${key}
    [Return]  ${actual_value}

Check If Response Code Is 200
    [Arguments]  ${response}
    Should Be Equal  ${response.status_code}   ${200}   The expected status code is 200, but the actual is  ${response.status_code}

Check If Response Code Is 201
    [Arguments]  ${response}
    Should Be Equal  ${response.status_code}   ${201}     The expected status code is 201, but the actual is  ${response.status_code}

Check if the API is available
    ${response}=    Perform GET Request    /users?page=2
    Should Be Equal  ${response.status_code}   ${200}     The API is not available
