aws cognito-idp sign-up \
  --region us-east-1 \
  --client-id 3sms6r6qnujhdnb10ita4tp4sl \
  --username admin@example.com \
  --password Passw0rd!

aws cognito-idp admin-confirm-sign-up \
  --region us-east-1 \
  --user-pool-id us-east-1_XLZw1Yfs1 \
  --username admin@example.com
