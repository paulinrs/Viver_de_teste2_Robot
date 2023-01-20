*** Settings ***
Documentation     Login tests

Resource    ../resources/main.resource

Test Setup        Start Test

*** Test Cases ***
Deve logar com sucesso
    
    Go To Login Page
    Submit Credenntials    papito@gmail.com     vaibrasil 
    User Logged in
      
Não deve logar com senha incorreta
    
    Go To Login Page
    Submit Credenntials       papito@gmail.com     vaiargentina  
    Toast Message Shold Be    Credenciais inválidas, tente novamente!

Não deve logar com senha em branco
    
    Go To Login Page
    Submit Credenntials       papito@gmail.com   ${empty}           
    Toast Message Shold Be    Por favor, informe a sua senha secreta!

Não deve logar com email em branco
  
    Go To Login Page
    Submit Credenntials   ${empty}        vaibrasil
    Toast Message Shold Be    Por favor, informe o seu email!
    
Não deve logar com email e senha em branco
  
    Go To Login Page
    Submit Credenntials   ${empty}        ${empty}
    Toast Message Shold Be    Por favor, informe suas credenciais!    

    
 
