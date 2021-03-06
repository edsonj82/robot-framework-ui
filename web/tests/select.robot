***Settings***
Resource       base.robot

Test Setup      New Session
Test Teardown   End Session

***Test Cases***
Select By Text
    Go To                           ${url}/dropdown
    Select From List By Label       class:avenger-list          Scott Lang
    ${selected}=                    Get Selected List Value     class:avenger-list
    Should Be Equal                 ${selected}                 7                 

Select By Value
    Go To                           ${url}/dropdown
    Select From List By Value       id:dropdown     6
    ${selected}=                    Get Selected List Label     id:dropdown
    Should Be Equal                 ${selected}                 Loki                 

