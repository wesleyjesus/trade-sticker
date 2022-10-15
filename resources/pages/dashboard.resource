*** Settings ***
Documentation       Dashboard Page

Library             Browser


*** Keywords ***
Usuario Logado
    ${header_title}    Set Variable    Aquela figurinha incrível a um clique de distância.
    Get Text    css=.header-content strong    equal    ${header_title}

Buscar Figura
    [Arguments]    ${txtBusca}

    Fill Text    css=input[id=keyword]    ${txtBusca}
    Click    css=button >> text=Buscar

Selecionar Figurinha
    [Arguments]    ${nomeJogador}
    Click    xpath=//img[@alt="${nomeJogador}"]/..

Abrir Whatsapp
    Click    css=button >> text=Entrar em contato

Whatsapp Message
    [Arguments]    ${stickerName}

    ${expected_message}    Set Variable
    ...    Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${stickerName}, bora negociar?

    Switch Page    NEW

    Wait For Elements State    css=p >> text=${expected_message}    visible    5000
