echo "For upload to docker Hub"
docker build -t tomhoon/deploy-back:latest . || true

echo "Uploading docker Hub"
docker push tomhoon/deploy-back:latest || true