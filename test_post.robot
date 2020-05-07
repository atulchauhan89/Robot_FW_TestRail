*** Settings ***
Library      ./Test_Rail.py


*** Test Cases ***

Create Project Milestone:
    ${create_milestone}    Create Milestone  Robot_FW_Zephyr     Release 2   "This is second release generated through script"
    Log to Console    ${create_milestone}

Create New TestRail Project:
    ${create_new_project}    Create New Project  Test Project  "This is created through scripting"   0    1
    Log to Console    ${create_new_project}

Create New Test Run:
     ${create_testrun}    Create Test Run   Robot_FW_Zephyr   Automatic_test_run    Release 2   "Auto generated run"   suite_name=Functional Testing  assigned_to=Shivam Kukreja
     Log to Console    ${create_testrun}

Fetch Run Id:
    ${run_id}    Get Run Id   Robot_FW_Zephyr  Test E2E
    Log to Console    ${run_id}
