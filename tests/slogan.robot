*** Settings ***
Library   Browser

*** Variables ***
${slogan}    Conectando colecionadores de figurinhas da copa.

*** Test Cases ***
Deve validar home page
    New Browser         headless=true
    New Page            https://trade-sticker-dev.vercel.app/
    Get Text            .logo-container h2    contains    ${slogan}
    Take Screenshot    