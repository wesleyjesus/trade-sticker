*** Settings ***
Documentation       Login tests

Resource            ../resources/main.resource

Test Setup          Iniciar Test
Test Teardown       Finalizar Test


*** Test Cases ***
Deve logar com sucesso
    Go To Login Page
    Submeter Credenciais    papito@gmail.com    vaibrasil
    Usuario Logado

Nao deve logar com senha incorreta
    [Tags]    inv_pass
    Go To Login Page
    Submeter Credenciais     papito@gmail.com    abc123
    Toast Message Success    Credenciais inválidas, tente novamente!

Deve exibir mensagem informe suas credenciais
    [Tags]    inv_pass
    Go To Login Page
    Submeter Credenciais Vazias
    Toast Message Erro    Por favor, informe suas credenciais!

    Por favor, informe o seu email!
