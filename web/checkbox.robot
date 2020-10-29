***Settings***
Library     SeleniumLibrary

Test Setup      New Session
Test Teardown   End Session

***Variables***
${url}          https://training-wheels-protocol.herokuapp.com
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    xpath://*[@id='checkboxes']/input[7]

***Test Cases***
Mark option with Id
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}
    Sleep                           1
    
Mark option with CSS Selector
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    Checkbox Should Be Selected     ${check_iron}

Mark option with Xpath
    [tags]                          ironman
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}

***Keywords***
New Session
    Open Browser                    ${url}      firefox

End Session
    Close Browser