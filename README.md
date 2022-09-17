# jupyter-docker
使用 docker 架設 jupyter
docker build -t {$IMAGE_NAME} .
docker run -d -p {$PORT}:8888 {$IMAGE_NAME}
