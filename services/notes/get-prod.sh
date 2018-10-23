#!/bin/bash
#npx aws-api-gateway-cli-test \
apig-test \
--username='admin@example.com' \
--password='Passw0rd!' \
--user-pool-id='us-east-1_XLZw1Yfs1' \
--app-client-id='3sms6r6qnujhdnb10ita4tp4sl' \
--cognito-region='us-east-1' \
--identity-pool-id='us-east-1:ba14299e-dd40-4e51-962e-39dd0cdef961' \
--invoke-url='https://5x3wjhrhlg.execute-api.us-east-1.amazonaws.com/dev' \
--api-gateway-region='us-east-1' \
--path-template='/notes' \
--method='GET' \
--body='{}'
