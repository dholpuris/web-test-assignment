docker ps -a 
docker logs 56c36c7cb98f
vi app.py 
> app.py 
vi app.py 
docker build -t my-python-api .
docker ps -a 
docker rm -f my-api
docker rm -f 88311f93b9ab
docker build -t my-python-api .
docker run -d --name my-api -p 8000:8000 my-python-api
docker ps -a 
docker logs my-api
vi app.py 
docker build -t my-python-api .
docker run -d --name my-api -p 8000:8000 my-python-api
docker ps -a 
docker rm -f 0f22531fedc1
docker run -d --name my-api -p 8000:8000 my-python-api
docker ps -a 
curl http://localhost:8000
exit
