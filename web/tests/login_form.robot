***Settings***
Resource       base.robot

Test Setup      New Session
Test Teardown   End Session

***Test Cases***
Login success
    Go To           ${url}/login
    Login With      stark  jarvis!

    Page Should Contain     Olá, Tony Stark. Você acessou a área logada!

Login Invalid
    [tags]          login_error
    Go To           ${url}/login
    Login With      stark  jarvisxpto!

    Should Contain Login Alert      Senha é invalida!

User not found (404)
    [tags]          login_not_found
    Go To           ${url}/login
    Login With      edson  jarvis!

    Should Contain Login Alert      O usuário informado não está cadastrado!

***Keywords***
Login With
    [Arguments]     ${username}                     ${password}

    Input Text      css:input[name=username]        ${username}
    Input Text      css:input[name=password]        ${password}
    Click Element   class:btn-login

Should Contain Login Alert
    [Arguments]     ${expected.message}

    ${message}      Get WebElement      id:flash
    Should Contain  ${message.text}     ${expected.message}

Should see Logged User
    [Arguments]     ${fullname}
        
    Page Should Contain     Olá, ${fullname}. Você acessou a área logada!
