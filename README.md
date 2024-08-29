# jupyter-docker
使用 docker 架設 jupyter
docker build -t {$IMAGE_NAME} .
docker run -d -p {$PORT}:8888 {$IMAGE_NAME}

連接 local 的目錄跟 container 的目錄
mkdir data
docker run -d -p {$PORT}:8888 -v ~/jupyter-docker/data:/home {$IMAGE_NAME}

連線至遠端機器上的 jupyter notebook
ssh -L 8888:localhost:8888 {$USER}@{$MACHINE_HOST}
