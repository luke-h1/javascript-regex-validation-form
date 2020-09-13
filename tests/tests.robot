*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary


# SUITE SETUP
Suite Setup       Run Keywords    
Suite Teardown    Run Keywords    Close Browser    


*** Test Cases ***
#    Given a user has a valid name, email, phone & postcode 
#    Then they can submit the form without any errors 

#    Given a user inputs an incorrect name, email, phone or postcode 
#    then the phone will alter the user of the error 



# CHECK THAT INCORRECT CREDENTIALS THROWS AN ERROR

INCORRECT NAME
    Open Browser          https://javascript-regex-validation-form.vercel.app/    chrome 
    sleep                 1 
    Click Element         id=name 
    sleep                 1 
    ${INCORRECT_NAME}=    Set Variable                                            luke123123123123 
    ${NAME_FIELD}=        Set Variable                                            id=name 
    input text            ${NAME_FIELD}                                           ${INCORRECT_NAME}
    sleep                 1 
    Click Element         id=postcode                                             
    sleep                 2 
    Close Browser




INCORRECT POSTCODE
    Open Browser               https://javascript-regex-validation-form.vercel.app/    chrome 
    sleep                      1 
    Click Element              id=postcode                                             
    ${"POSTCODE_FIELD"}        Set Variable                                            id=postcode
    ${"INCORRECT_POSTCODE"}    Set Variable                                            s62hh123123123
    sleep                      1 
    input text                 ${"POSTCODE_FIELD"}                                     ${"INCORRECT_POSTCODE"}
    sleep                      1
    Click Element              id=name                                                 
    sleep                      2                                                       
    Close Browser



INCORRECT EMAIL
    Open Browser            https://javascript-regex-validation-form.vercel.app/    chrome 
    sleep                   1 
    Click Element           id=email 
    sleep                   1 
    ${"EMAIL_FIELD"}        Set Variable                                            id=email
    ${"INCORRECT_EMAIL"}    Set Variable                                            123-^hello@e.com1232131
    input text              ${"EMAIL_FIELD"}                                        ${"INCORRECT_EMAIL"}
    sleep                   2
    Click Element           id=postcode 
    sleep                   3                                                       
    Close Browser



INCORRECT PHONE
    Open Browser            https://javascript-regex-validation-form.vercel.app/    chrome 
    sleep                   1 
    Click Element           id=phone 
    sleep                   1 
    ${"PHONE_FIELD"}        Set Variable                                            id=phone
    ${"INCORRECT_PHONE"}    Set Variable                                            +3312321312312
    input text              ${"PHONE_FIELD"}                                        ${"INCORRECT_PHONE"}
    sleep                   1
    Click Element           id=email                                                
    sleep                   1                                                       
    Close Browser







# # CHECK THAT CORRECT CREDENTIALS WORKS

NAME VALIDATION
    Open Browser                 https://javascript-regex-validation-form.vercel.app/    chrome 
    sleep                        1 
    Click Element                id=name 
    sleep                        1 
    ${"name"}                    Set Variable                                            id=name
    element should be visible    ${"name"}
    element should be enabled    ${"name"} 
    input text                   ${"name"}                                               Luke 
    sleep                        2
    Click Element                id=postcode                                             
    sleep                        2 
    Close Browser


POSTCODE VALIDATION
    Open Browser                 https://javascript-regex-validation-form.vercel.app/    chrome 
    sleep                        1 
    Click Element                id=postcode 
    sleep                        1 
    ${"POSTCODE"}                Set Variable                                            id=postcode
    element should be visible    ${"POSTCODE"}
    element should be enabled    ${"POSTCODE"} 
    input text                   ${"POSTCODE"}                                           S62HH 
    sleep                        2
    Close Browser



EMAIL VALIDATION
    Open Browser                 https://javascript-regex-validation-form.vercel.app/    chrome 
    sleep                        1 
    Click Element                id=email 
    sleep                        1 
    ${"EMAIL"}                   Set Variable                                            id=email
    element should be visible    ${"EMAIL"}
    element should be enabled    ${"EMAIL"} 
    input text                   ${"EMAIL"}                                              luke@hey.com
    sleep                        2
    Click Element                id=postcode 
    sleep                        2                                                       
    Close Browser


PHONE VALIDATION
    Open Browser                 https://javascript-regex-validation-form.vercel.app/    chrome 
    sleep                        1 
    Click Element                id=phone 
    sleep                        1 
    sleep                        1 
    ${"PHONE"}                   Set Variable                                            id=phone
    element should be visible    ${"PHONE"}
    element should be enabled    ${"PHONE"} 
    input text                   ${"PHONE"}                                              +4407426347486
    sleep                        2
    Click Element                id=email                                                
    sleep                        2                                                       
    Close Browser






