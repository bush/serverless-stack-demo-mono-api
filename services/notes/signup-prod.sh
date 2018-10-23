aws --profile p2c-prod cognito-idp sign-up \
  --region us-east-1 \
  --client-id 5i166nq8omk64sa43c6lkaviq7 \
  --username admin@example.com \
  --password Passw0rd!

aws --profile p2c-prod cognito-idp admin-confirm-sign-up \
  --region us-east-1 \
  --user-pool-id us-east-1_N7jxTF7DV \
  --username admin@example.com
