docker build -t app .
docker run -v $PWD/dist:/usr/src/app/dist app
