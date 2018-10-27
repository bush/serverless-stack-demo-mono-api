#!/bin/bash

#defaults
PROFILE="p2c-dev"
USERNAME="admin@example.com"
PASSWORD="Passw0rd!"

help ()
{
  echo "Usage: $0 [-h] [-a aws-profile] [-u username] [-p password]"
  echo "-p p2c-prod -u admin@example.com -p Passw0rd!"
}

while getopts ":hr:p:" option; do
  case "$option" in
    h)
        help
        exit 0
        ;;
    a)
        PROFILE="$OPTARG"
        ;;
    u)
        USERNAME="$OPTAGRG"
        ;;
    p)
        PASSWORD="$OPTAGRG"
        ;;
    :)
        echo "Error: -$OPTARG requires an argument" 
        help
        exit 0
        ;;
    ?)
        echo "Error: unknown option -$OPTARG" 
        help
        exit 0
        ;;
  esac
done

GIT_SHA=`git rev-parse HEAD`

if [ "-$IMAGE_VERSION-" == "--" ]; then
    IMAGE_VERSION="latest"
fi

USER_POOL_ID=$(aws --profile $PROFILE cognito-idp  list-user-pools --max-results 1 | jq -r .UserPools[0].Id)
USER_POOL_REGION=$(echo $USER_POOL_ID | cut -d'_' -f 1 )
APP_CLIENT_ID=$(aws --profile p2c-dev cognito-idp list-user-pool-clients --user-pool-id $USER_POOL_ID --max-results 1 | jq -r .UserPoolClients[0].ClientId)
IDENTITY_POOL_ID=$(aws --profile p2c-dev cognito-identity list-identity-pools --max-results 1 | jq -r .IdentityPools[0].IdentityPoolId)
echo $USER_POOL_ID
echo $USER_POOL_REGION
echo $APP_CLIENT_ID
echo $IDENTITY_POOL_ID
exit
#npx aws-api-gateway-cli-test \
apig-test \
--username=$USERNAME \
--password=$PASSWORD \
--user-pool-id=$USER_POOL_ID \
--app-client-id=$APP_CLIENT_ID \
--cognito-region=$COGNITO_REGION \
--identity-pool-id=$IDENTITY_POOL_ID \
--invoke-url='https://5x3wjhrhlg.execute-api.us-east-1.amazonaws.com/dev' \
--api-gateway-region='us-east-1' \
--path-template='/notes' \
--method='GET' \
--body='{}'
