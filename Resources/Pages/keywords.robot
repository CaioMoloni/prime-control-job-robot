*** Settings ***
Resource    ../common.robot

*** Variables ***
${header}=      Create Dictionary     Content-Type=application/json

*** Keywords ***

Create a new user 
    [Documentation]     Criando um novo usuário e retornando a resposta do servidor
    [Arguments]               ${email}    ${password}
    ${body}=                  Create Dictionary       email=${email}    password=${password} 
    ${response}=              Perform POST Request    ${register_endpoint}   ${body}   ${header}
    [Return]     ${response} 

Fetch the new user
    [Documentation]     Buscando se o usuário existe no banco de dados
    [Arguments]               ${id}       ${email}    ${first_name}    ${last_name}
    ${response}=              Perform GET Request     ${users_endpoint}/${id}
    ${responseJson}=          Convert String To Json    ${response.content}   
    ${actualEmail}=           Set Variable      ${responseJson['data']['email']}
    ${actualFirstName}=       Set Variable      ${responseJson['data']['first_name']}
    ${actualLastName}=        Set Variable      ${responseJson['data']['last_name']}
    Should be Equal           ${email}           ${actualEmail}         The expected user's e-mail is "${email}" and the actual e-mail is "${actualEmail}"
    Should be Equal           ${first_name}      ${actualFirstName}     The expected user's first name is "${email}" and the actual first name is "${actualEmail}"
    Should be Equal           ${last_name}       ${actualLastName}      The expected user's last name is "${email}" and the actual last name is "${actualEmail}"