*** Variables ***
&{PAIS}
...        nome=Argentina 
...        capital=Buenos Aires  
...        moeda=Peso Argentino  
...        lingua=Castelhano
...        religiao=Catolica
...        populacao= 45 milhoes

&{PESSOA}
...        nome=Raul 
...        sobrenome=Correia 
...        idade=30
...        estado=Parana
...        cor=Preto
...        time=Sao Paulo

@{FRUTA}        
...    Banana 
...    Pera 
...    Uva    
...    Abacaxi
...    Melancia
...    Goiaba

*** Test Cases ***
Cenario: Imprimir o Pais
    Log To Console    ${PAIS.nome}
    Log TO Console    ${PAIS.capital}
    Log TO Console    ${PAIS.moeda}
    Log TO Console    ${PAIS.lingua}
    Log TO Console    ${PAIS.religiao}
    Log TO Console    ${PAIS.populacao}
Cenario: Imprimir o Pessoa
    [Tags]    PESSOA
    Log To Console    ${PESSOA.nome}
    Log TO Console    ${PESSOA.sobrenome}
    Log TO Console    ${PESSOA.idade}
    Log TO Console    ${PESSOA.estado}
    Log TO Console    ${PESSOA.cor}
    Log TO Console    ${PESSOA.time}

Cenario: Imprimir o fruta
    [Tags]    FRUTA
    Log To Console    \n ${FRUTA[0]}
    Log TO Console    \n ${FRUTA[1]}
    Log TO Console    \n ${FRUTA[2]}
    Log TO Console    \n ${FRUTA[3]}
    Log TO Console    \n ${FRUTA[4]}
    Log TO Console    \n ${FRUTA[5]}
