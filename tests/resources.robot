*** Variables ***
# INCORRECT FIELDS VARS
${INCORRECT_NAME}=         luke123123123123 
${"INCORRECT_POSTCODE"}    s62hh123123123
${"INCORRECT_EMAIL"}       123-^hello@e.com1232131
${"INCORRECT_PHONE"}       +3312321312312


# DOM ELS
${NAME_FIELD}=         id=name 
${"POSTCODE_FIELD"}    id=postcode
${"EMAIL_FIELD"}       id=email
${"PHONE_FIELD"}       id=phone


# CORRECT FIELDS VARS
${"name"}        id=name
${"POSTCODE"}    id=postcode
${"EMAIL"}       id=email
${"PHONE"}       id=phone