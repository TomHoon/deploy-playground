echo "build..."
npm run build || true

echo "For upload to docker Hub"
docker build -t tomhoon/deploy-front:latest . || true

echo "Uploading docker Hub"
docker push tomhoon/deploy-front:latest || true