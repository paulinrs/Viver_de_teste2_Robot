*** Settings ***
Documentation     Login tests

Resource    ../resources/main.resource

*** Test Cases ***
Deve logar com sucesso
    
    Go To Login Page
    Submit Credenntials    papito@gmail.com     vaibrasil 
    User Logged in
      
Não deve logar com senha incorreta
    
    Go To Login Page
    Submit Credenntials       papito@gmail.com     vaiargentina  
    Toast Message Shold Be    Credenciais inválidas, tente novamente! 
