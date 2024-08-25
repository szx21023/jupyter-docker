# jupyter-docker
使用 docker 架設 jupyter
docker build -t {$IMAGE_NAME} .
docker run -d -p {$PORT}:8888 {$IMAGE_NAME}

連線至遠端機器上的 jupyter notebook
ssh -L 8888:localhost:8888 {$USER}@{$MACHINE_HOST}
