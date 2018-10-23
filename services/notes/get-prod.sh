#!/bin/bash
#npx aws-api-gateway-cli-test \
apig-test \
--username='admin@example.com' \
--password='Passw0rd!' \
--user-pool-id='us-east-1_N7jxTF7DV' \
--app-client-id='5i166nq8omk64sa43c6lkaviq7' \
--cognito-region='us-east-1' \
--identity-pool-id='us-east-1:cb4e7e98-7438-4c13-a379-c281ebaceefc' \
--invoke-url='https://vgxt38owr1.execute-api.us-east-1.amazonaws.com/prod' \
--api-gateway-region='us-east-1' \
--path-template='/notes' \
--method='GET' \
--body='{}'
