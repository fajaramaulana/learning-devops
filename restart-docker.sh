echo "Stopping Docker Compose services..."
docker-compose down

echo "Fetching latest public IP..."
export PUBLIC_IP=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)
echo "Current Public IP: $PUBLIC_IP"

echo "Starting Docker Compose services..."
docker-compose up -d