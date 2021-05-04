*** Keywords ***
open brownser
    Open Browser    https://insurance.tescolotusmoney.com/   Chrome
    Maximize Browser Window
accpet cookie
    Click button     ${cookies}[accept]
    Capture Page Screenshot     
    sleep   3
select car type    
    [Arguments]      ${select_cartype}
    Click Element     ${cartype}[xpath_cartype]   
    Wait Until Element Is Visible     ${select_cartype}      10 seconds  
    sleep   3
    Capture Page Screenshot  
    Click Element       ${select_cartype}

   

select brand car    
    [Arguments]      ${select_brand_car} 
    sleep   3
    Capture Page Screenshot 
    Wait Until Element Is Visible     ${select_brand_car}     10 seconds     
    Click Element       ${select_brand_car} 

select model car 
    [Arguments]      ${select_model_car} 
    sleep   3
    Capture Page Screenshot  
    Wait Until Element Is Visible    ${select_model_car}     10 seconds  
    Click Element       ${select_model_car} 
   

select submodel car
     [Arguments]      ${select_submodel_car}
      sleep   3
      Capture Page Screenshot  
      Wait Until Element Is Visible    ${select_submodel_car}     10 seconds  
      Click Element       ${select_submodel_car}
select registration year
     [Arguments]      ${select_registration_year}
      sleep   3
      Capture Page Screenshot   
      Wait Until Element Is Visible   ${select_registration_year}    10 seconds  
      Click Element       ${select_registration_year}
  

select insurance type
     [Arguments]      ${select insurance_type}
      sleep   3
      Capture Page Screenshot 
      Wait Until Element Is Visible   ${select insurance_type}   10 seconds  
      Click Element       ${select insurance_type}
    

click button check insurance premium
      Wait Until Element Is Visible   ${check insurance premium}   10 seconds  
      Click Element       ${check insurance premium}
      sleep   3
      Capture Page Screenshot     

