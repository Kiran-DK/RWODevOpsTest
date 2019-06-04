FROM ubuntu:16.04
COPY . /app
WORKDIR /app
RUN apt-get install -y libboost-all-dev
EXPOSE 80/tcp 443/tcp
ENTRYPOINT [ "./*.out" ]
