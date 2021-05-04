*** Settings ***
Resource    ${CURDIR}/../resource/import_api.robot

*** Test Case ***
TC001 Verify response api
    ${request}=      Post request api   ${request_data}
    Verify response body is not empty     ${request} 
    