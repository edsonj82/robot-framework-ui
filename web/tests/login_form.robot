***Settings***
Resource       base.robot

Test Setup      New Session
Test Teardown   End Session

***Test Cases***
Login success
    Go To           ${url}/login
    Input Text      css:input[name=username]        stark
    Input Text      css:input[name=password]        jarvis!
    Click Element   class:btn-login

    Page Should Contain     Olá, Tony Stark. Você acessou a área logada!

Login Invalid
    [tags]          login_error
    Go To           ${url}/login
    Input Text      css:input[name=username]        stark
    Input Text      css:input[name=password]        jarvisxpto!
    Click Element   class:btn-login

    ${message}=     Get WebElement      id:flash
    Should Contain  ${message.text}     Senha é invalida!

User not found (404)
    [tags]          login_error
    Go To           ${url}/login
    Input Text      css:input[name=username]        edson
    Input Text      css:input[name=password]        jarvisxpto!
    Click Element   class:btn-login

    ${message}=     Get WebElement      id:flash
    Should Contain  ${message.text}     O usuário informado não está cadastrado!