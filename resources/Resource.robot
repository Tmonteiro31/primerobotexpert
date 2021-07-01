*** Settings ***
Documentation       Aqui estrão presentes as keywords e variáveis que usaremos no projeto automação web
Library     Seleniumlibrary
Library     Convert To String

*** Variable ***
${BROWSER  }        chrome
${URL}              http://automationpractice.com

*** Keywords***
###Setup e Teardown
Abrir navegador

        Open Browser    browse=${BROWSER}
        Maximize Browser Window

Fechar navegador
    close Browser

    
Acessar a página home do site automation Practice
    GO To       ${URL}
    wait until element visible      xpath=//*[@id='block_top_menu']/ul
    title shoult be         my store
    
