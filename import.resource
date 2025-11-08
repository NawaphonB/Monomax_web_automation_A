*** Settings ***
Library    SeleniumLibrary
Library    yaml

Resource    ./Keywords/Keywords_login.resource
Resource    ./Resource/locator_login.resource
Resource    ./Testcase/Testcase_login.robot
Variables    ./Resource/Testdata_login.yaml

Resource    ./Keywords/Keywords_livetv.resource
Resource    ./Resource/locator_livetv.resource
Resource    ./Testcase/Testcase_livetv.robot
Variables   ./Resource/Testdata_livetv.yaml

