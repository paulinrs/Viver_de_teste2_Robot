*** Settings ***
Documentation    Arquivo Principal do projeto

Library      Browser

Resource    pages/login.resource
Resource    pages/dash.resource

*** Keywords ***

Do login
    Go To Login Page
    Submit Credenntials     papito@gmail.com     vaibrasil  
    User Logged in 

Start Test 
    New Browser         headless=False  


    
