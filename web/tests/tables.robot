***Settings***
Resource       base.robot

Test Setup      New Session
Test Teardown   End Session

***Test Cases***
Verify the value of the line
    Go To                           ${url}/tables
    Table Row Should Contain        id:actors       2       @vindiesel

Search the line by a text
    Go To   ${url}/tables
    ${target}=          Get WebElement      xpath:.//tr[contains(.,'@chadwickboseman')]
    Log                 ${target.text}
    Log To Console      ${target.text}
    Should Contain      ${target.text}      $ 700.000
    Should Contain      ${target.text}      Pantera Negra
