*** Settings ***
Resource  ../Resources/yale.robot
Resource  ../Resources/common.robot
Resource  ../Resources/config.robot
Library   ../Libraries/Test_Rail.py


Suite Setup  Common.Begin Web Test
Suite Teardown   Common.End Test


*** Test Cases ***
Check User is able to authenticate and getting Reporting Page
    ${status} =  Run Keyword And Return Status  yale.Go To Reporting
    ${status_code} =  Status Code  ${status}
    Add Result   6   ${status_code}

Verify Reporting CSV FILE DATA
    [Documentation]  Get CSV and verify it with grid data
    yale.GET CSV
    yale.Get CSV DATA
    yale.Verify Audit Trail
    Sleep  3s

