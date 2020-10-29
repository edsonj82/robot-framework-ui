***Settings***
Resource       base.robot

Test Setup      New Session
Test Teardown   End Session

***Test Cases***
Verify the value of the line
    Go To                           ${url}/tables
    Table Row Should Contain        id:actors       2       @vindiesel
