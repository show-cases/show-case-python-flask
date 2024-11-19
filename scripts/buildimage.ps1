echo "build docker image ..."
docker build -t showcase:flask-v0.1 .
docker tag showcase:flask-v0.1 showcase:flask-latest