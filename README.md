# jupyter-docker
使用 docker 架設 jupyter
```
docker build -t $IMAGE_NAME .
docker run -d -p $PORT:8888 $IMAGE_NAME
```

連接 local 的目錄跟 container 的目錄
```
mkdir data
docker run -d -p $PORT:8888 -v ~/jupyter-docker/data:/home $IMAGE_NAME
```

連線至遠端機器上的 jupyter notebook
```
ssh -L 8888:localhost:8888 $USER@$MACHINE_HOST
```

連接到另一個 container 裡的 mongodb
```
docker network create mynetwork
docker pull mongo:4.2.7
docker run --name mongodb --network mynetwork -d -p 27017:27017 mongo:4.2.7
docker run --name jupyter --network mynetwork -p 8888:8888 -d jupyter_docker
```

example code:
```
from pymongo import MongoClient

client = MongoClient('mongodb://mongodb:27017/')

db = client['mydatabase']
collection = db['mycollection']
collection.insert_one({"name": "John", "age": 30})

data = collection.find_one({"name": "John"})
print(data)
```
