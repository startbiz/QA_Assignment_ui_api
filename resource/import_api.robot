*** Settings ***
Library      RequestsLibrary
Library      JSONLibrary
Library      Collections
Library      String
Library      json
Library      yaml

Resource     ${CURDIR}/../Keywords/api_keywords.robot
Variables     ${CURDIR}/../resource/data_api.yaml
Variables     ${CURDIR}/../resource/api_request.yaml