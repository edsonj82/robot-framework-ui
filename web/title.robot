*** Settings ***
Library     SeleniumLibrary

***Test Cases***
Should See Page Title
    Open Browser        https://training-wheels-protocol.herokuapp.com/     firefox
    Title Should Be      Training Wheels Protocol
    Close Browser