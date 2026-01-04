set -e  # Stop script if build fails

IMAGE_NAME="tomhoon/deploy-back:latest"
CONTAINER_NAME="back-container"
PORT="3000:3000"
NETWORK="hotel-net"

echo "=============================="
echo "🚀 FE 컨테이너 자동 배포 시작"
echo "=============================="

echo "✅ 기존 컨테이너 제거 및 삭제"
docker stop $CONTAINER_NAME 2>/dev/null || echo "컨테이너 없음"

echo "✅ 기존 컨테이너 제거 및 삭제"
docker rm $CONTAINER_NAME 2>/dev/null || echo "컨테이너 없음"

echo "✅ 이미지 가져오기"
docker pull $IMAGE_NAME:latest || true

echo "✅ 컨테이너 띄우기"
docker run -d -p $PORT1 -p $PORT2 --name $CONTAINER_NAME --net $NETWORK $IMAGE_NAME || true

echo "=============================="
echo "🎉 배포 완료! 컨테이너 실행 중"
echo "🎯 컨테이너: $CONTAINER_NAME"
echo "🎯 이미지: $IMAGE_NAME"
echo "🎯 포트: $PORT"
echo "=============================="