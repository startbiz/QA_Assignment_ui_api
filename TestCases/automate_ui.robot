*** Settings ***
Resource    ${CURDIR}/../resource/import_ui.robot

*** Test Case ***
TC001 Filter Car Type until Insurance Type 
    [Documentation]     Pre-requisite :  open brownser go to link  https://insurance.tescolotusmoney.com/
    ...  and  accept cookies in website
    open brownser
    accpet cookie
    select car type      ${select cartype}[sedan_car]
    select brand car     ${select brand_car}[honda]
    select model car     ${select model_car}[city]
    select submodel car     ${select submodel_car}[city_1.3]
    select registration year       ${select registration_year}[2563_(2020)]
    select insurance type     ${select insurance_type}[2st_insurance]
    click button check insurance premium
    Close All Browsers
