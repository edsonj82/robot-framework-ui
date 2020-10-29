***Settings***
Library     SeleniumLibrary

Test Setup      New Session
Test Teardown   End Session

***Variables***
${url}          https://training-wheels-protocol.herokuapp.com

***Keywords***
New Session
    Open Browser                    ${url}      firefox

End Session
    Close Browser