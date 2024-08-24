URL="http://localhost:3001"

INTERVAL=0.5

while true; do
  STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" "$URL")
  echo "Pinged $URL - Status code: $STATUS_CODE"
  sleep $INTERVAL
done
