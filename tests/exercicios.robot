*** Settings ***
Documentation    Aqui está todos os exercicios do Prime Expert
...              para comentario de mais de uma linha.
...              Imersão Robot

*** Variables ***

# variavel simples
${NOME}          Raul Correia     

#variavel tipo dicionario
&{PESSOA}
...        nome=Raul   
...        sonbrenome=Correia    
...        idade=27

# variavel tipo lista
@{PAISES}        
...    Brasil    
...    Portugal    
...    Irlanda    
...    Paris

*** Test Cases ***
Cenario: Imprimir o Dicionário
    Log To Console    ${PESSOA.nome}
    Log TO Console    ${PESSOA.idade}
Cenario: Realizar Somar   
    [Tags]    SOMA 
    Somar dois numeros  10  30

Cenario: Meu teste soma 
    [Tags]    SOMA_2
    ${RESULTADO}  Somar dois numeros "55" e "44"
    Log To Console    ${RESULTADO}

*** Keywords ***
Somar dois numeros
    [Arguments]    ${NUM_A}    ${NUM_B}
    ${SOMA}    Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${SOMA}
    Log To Console  ${SOMA}

Somar dois numeros "${NUM_A}" e "${NUM_B}"
    ${SOMA}    Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${SOMA}

    Catenate    SEPARADOR=_
    