echo "run the app in container ..."
docker run -v ${PWD}:/app -w /app -it -d --rm -p 5001:8000 --name debugger python:3.12-alpine3.19 
echo "install dependencies ..."
docker exec debugger sh -c "pip install -r requirements.txt"
echo "NOTE: debugger runs on port 5001"
docker exec -it debugger sh
