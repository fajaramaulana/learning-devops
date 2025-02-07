echo "Stopping Docker Compose services..."
docker-compose down

echo "Fetching latest public IP..."
TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")
export PUBLIC_IP=$(curl -s -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/public-ipv4)

echo "Current Public IP: $PUBLIC_IP"

if [ -z "$PUBLIC_IP" ]; then
  echo "Failed to fetch public IP. Exiting."
  exit 1
fi

echo "Starting Docker Compose services..."
docker-compose up -d