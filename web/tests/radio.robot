***Settings***
Resource       base.robot

Test Setup      New Session
Test Teardown   End Session

***Test Cases***
Select for Id
    Go To                           ${url}/radios
    Select Radio Button             movies      cap
    Radio Button Should Be Set To   movies      cap

Select for Value
    Go To                           ${url}/radios
    Select Radio Button             movies      guardians
    Radio Button Should Be Set To   movies     guardians