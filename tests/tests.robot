*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary


# SUITE SETUP
Suite Setup       Run Keywords    
Suite Teardown    Run Keywords    Close Browser    


*** Test Cases ***

NAME VALIDATION
    Open Browser                 https://javascript-regex-validation-form.vercel.app/    chrome 
    sleep                        1 
    Click Element                id=name 
    sleep                        1 
    ${"name"}                    Set Variable                                            id=name
    element should be visible    ${"name"}
    element should be enabled    ${"name"} 
    input text                   ${"name"}                                               Luke 
    sleep                        3
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
    sleep                        3
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
    sleep                        3
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
    sleep                        3
    Close Browser






