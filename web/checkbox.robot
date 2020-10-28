***Settings***
Library     SeleniumLibrary

***Variables***
${url}      https://training-wheels-protocol.herokuapp.com

***Test Cases***
Mark option with Id
    Open Browser                    ${url}      firefox
    Go To                           ${url}/checkboxes
    Select Checkbox                 id:thor
    Checkbox Should Be Selected     id:thor
    Sleep                           5
    Close Browser
    
Mark option with CSS Selector
    [tags]                          ironman
    Open Browser                    ${url}      firefox
    Go To                           ${url}/checkboxes
    Select Checkbox                 css:input[value='iron-man']
    Checkbox Should Be Selected     css:input[value='iron-man']
    Sleep                           5
    Close Browser
    
