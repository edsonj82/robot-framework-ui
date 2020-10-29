***Settings***
Library     SeleniumLibrary

***Variables***
${url}          https://training-wheels-protocol.herokuapp.com

***Keywords***
New Session
    Open Browser                    ${url}      firefox

End Session
    Capture Page Screenshot
    Close Browser