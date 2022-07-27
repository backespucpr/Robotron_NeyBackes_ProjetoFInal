*** Settings ***
Documentation    Keyword e Variaves para geração de dados dinamicos
Library          FakerLibrary



*** Keywords ***
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Dados dinamico para login de usuario
Criar Dados Dinamicos Login Invalido
    ${email}            FakerLIbrary.Email
    ${password}         FakerLibrary.Password
    ${payload}          Create Dictionary        email=${email}    password=${password}
    [return]            ${payload}

Criar Dados Dinamicos Login Sem Senha
    ${email}            FakerLIbrary.Email    
    ${payload}          Create Dictionary        email=${email}    password=
    [return]            ${payload}

Criar Dados Dinamicos Login Sem Email    
    ${password}         FakerLibrary.Password
    ${payload}          Create Dictionary        email=    password=${password}
    [return]            ${payload}
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------