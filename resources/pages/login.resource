*** Settings ***
Documentation       Login Page

Library             Browser


*** Keywords ***
Go To Login Page
    New Page    https://trade-sticker-dev.vercel.app

Submeter Credenciais
    [Arguments]    ${email}    ${password}
    Fill Text    css=input[name=email]    ${email}
    Fill Text    css=input[name=password]    ${password}
    Click    css=button >> text=Entrar

Submeter Credenciais Vazias
    Clear Text    css=input[name=email]
    Clear Text    css=input[name=password]
    Click    css=button >> text=Entrar

Submeter Credenciais Sem Email
    [Arguments]    ${password}
    Clear Text    css=input[name=email]
    Fill Text    css=input[name=password]    ${password}
    Click    css=button >> text=Entrar

Toast Message Success
    [Arguments]    ${expected_message}

    ${locator}    Set Variable    css=.Toastify__toast-body div >> text=${expected_message}

    Wait For Elements State    ${locator}    visible    3

Toast Message Erro
    [Arguments]    ${expected_message}

    ${locator}    Set Variable    css=.Toastify__toast-body div >> text=${expected_message}

    Wait For Elements State    ${locator}    visible    3
