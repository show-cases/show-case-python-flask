echo "run the app with docker ..."
docker run -it -d --rm --name showcase_flask -p 5000:8000 showcase:flask-latest