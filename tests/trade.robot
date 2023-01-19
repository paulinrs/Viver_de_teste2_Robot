*** Settings ***

Documentation        Teste de negoçião de figurinhas da copa

Resource        ../resources/main.resource

Test Setup        Start Test

*** Test Cases ***
Deve negociar a figurinha do Neymar Legend

    Do login
    Search User              legend    
    Select Sticker           Neymar Jr   
    Get In Touch   
    Whatsapp Sticker Message            Neymar Jr
   
