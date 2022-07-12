mkdir -p /home/ec2-user/FlightSearchApp
AMADEUS_ENV=test
PORT=3000
AMADEUS_CLIENT_ID=$(aws secretsmanager get-secret-value --region eu-west-1 --secret-id FlightSearchApp/AMADEUS_CLIENT_ID --query SecretString --output text | jq -r .AMADEUS_CLIENT_ID)
AMADEUS_CLIENT_SECRET=$(aws secretsmanager get-secret-value --region eu-west-1 --secret-id FlightSearchApp/AMADEUS_CLIENT_SECRET --query SecretString --output text | jq -r .AMADEUS_CLIENT_SECRET)


