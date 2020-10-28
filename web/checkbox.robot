***Settings***
Library     SeleniumLibrary

***Variables***
${url}          https://training-wheels-protocol.herokuapp.com
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    xpath://*[@id='checkboxes']/input[7]

***Test Cases***
Mark option with Id
    Open Browser                    ${url}      firefox
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}
    Sleep                           1
    Close Browser
    
Mark option with CSS Selector
    Open Browser                    ${url}      firefox
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    Checkbox Should Be Selected     ${check_iron}
    Close Browser

Mark option with Xpath
    [tags]                          ironman
    Open Browser                    ${url}      firefox
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
    Close Browser
    
