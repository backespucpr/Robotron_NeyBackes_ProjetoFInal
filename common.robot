*** Settings ***
Documentation    Keyword e Variaves para acoes gerais
Library          OperatingSystem

*** Keywords ***

validar Status Code "${statuscode}"
    Should Be true     ${response.status_code} == ${status_code}

Importar Json Estatico  
    [Arguments]     ${nome_arquivo}
    ${arquivo}      Get File    ${EXECDIR}/${nome_arquivo}
    ${data}         Evaluate    json.loads('''${arquivo}''')    json
    [Return]        ${data}
