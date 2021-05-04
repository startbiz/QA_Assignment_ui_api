*** Keywords ***
Verify http status code
    [Documentation]    Verify http status code, By send response and expected code
    [Arguments]    ${response}    ${expected_code}
    ${http_code}=    Set Variable    ${response.status_code}
    ${expected_code}=    Convert To Integer    ${expected_code}
    Should Be Equal    ${http_code}    ${expected_code}

Post request api
    [Arguments]     ${body}
    Create Session  test   ${request_host}
    ${headers}=     Create Dictionary   Content-Type=${headers}[Content-Type]   X-API-Key=${headers}[X-API-Key]
    ${api response}=   Post Request    test      /collections       headers=${headers}         data=${body}
    Verify http status code    ${api response}    200
    [Return]    ${api response.json()}

Verify response body is not empty
    [Documentation]    response is json type, body
    [Arguments]    ${body}
    should not be equal     ${body}    ${NULL}