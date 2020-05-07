*** Settings ***
Library      ./Test_Rail.py



*** Test Cases ***

Fetch Project ID:
    ${project_id}    Get Project Id   Robot_FW_Zephyr
    Log to Console    ${project_id}

Fetch Suite ID:
    ${suite_id}    Get Suite Id   Robot_FW_Zephyr  Cloud
    Log to Console    ${suite_id}

Fetch Milestone ID:
    ${milestone_id}    Get Milestone Id   Robot_FW_Zephyr   Release 1
    Log to Console    ${milestone_id}

Fetch Run Id:
    ${run_id}    Get Run Id   Robot_FW_Zephyr  Test E2E
    Log to Console    ${run_id}
