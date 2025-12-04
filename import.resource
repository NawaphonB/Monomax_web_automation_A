*** Settings ***
Library    SeleniumLibrary
Library    yaml

Resource    ./Keywords/Keywords_login.resource
Resource    ./Resource/locator_login.resource
Variables    ./Resource/Testdata_login.yaml

Resource    ./Keywords/Keywords_livetv.resource
Resource    ./Resource/locator_livetv.resource
Variables   ./Resource/Testdata_livetv.yaml


Resource    ./Keywords/Keywords_package.resource
Resource    ./Resource/locator_package.resource
Variables    ./Resource/Testdata_package.yaml


