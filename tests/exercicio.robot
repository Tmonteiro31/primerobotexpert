*** Settings ***
Documentation   Aqui estarão presentes todos os exercícios do prime expert


*** Variable ***
${NAME}     Thiago

&{PESSOA}
...     name=Thiago
...     sobrenome=Henrique
...     idade=27
...     carro=versa
...     sexo=masculino
...     cpf=1234567890

@{FRUTAS}       abacaxi     morango     pera        banana

*** Test Case ***
Cenario: Imprimir todas as informções da PESSOA contidas no dicionario
    Log To Console          ${PESSOA.name}
    Log To Console          ${PESSOA.sobrenome}
    Log To Console          ${PESSOA.idade}
    Log To Console          ${PESSOA.carro}
    Log To Console          ${PESSOA.sexo}
    Log To Console          ${PESSOA.cpf}

cenario: imprimir lista de FRUTAS

        Log To Console      ${FRUTAS[0]}
        Log To Console      ${FRUTAS[1]}
        Log To Console      ${FRUTAS[2]}
        Log To Console      ${FRUTAS[3]}

Cenário: meu teste de somar
    [Tags]  SOMA
    ${RESULTADO}        somar dois numeros  10  35
    Log To Console      ${RESULTADO}

Cenário: Realizar login com sucesso
    Dado que o cliente esteja na tela de login
    E informe o e-mail e senha  thi.hms@gmail.com  test@test123
    Quando clicar em entrar
    Então o mesmo será direcionado para a tela Home devidamente logado

Cenario: Criando meu e-mail 
    [Tags]      EMAIL
    ${EMAIL_NOVO}   Criando e-mail  thiago  henrique  32
    Log To Console  ${SOMA}

Cenário: Utilizando o FOR na prática
    [Tags]      LUPING
    Contar de 0 a 9

*** Keywords ***
somar dois numeros
    [Arguments]     ${NUM_A}    ${NUM_B}
    ${SOMA}     Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${SOMA}
E informe o e-mail e senha
    [Arguments]     ${EMAIL}     ${SENHA}
    Input Text  ${input_email}      ${EMAIL}
    input Text  ${input_senha}      ${SENHA}

Criando e-mail
    [Arguments]     ${NOME}     ${SOBRENOME}    ${IDADE} 
    ${EMAIL}        Catenate    SEPARATOR=_     ${NOME}     ${SOBRENOME}    ${IDADE}@robot.com
    [Return]        @{EMAIL}


Contar de 0 a 9
    Exit For Loop${count}       IN RANGE    0   9
    Log To Console  ${count}
    END

    
