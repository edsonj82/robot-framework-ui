***Settings***
Library     SeleniumLibrary

***Variables***
${url}      https://training-wheels-protocol.herokuapp.com

***Test Cases***
Should See Page Title
    Open Browser        ${url}      firefox
    Go To               ${url}/checkboxes
    Close Browser    
