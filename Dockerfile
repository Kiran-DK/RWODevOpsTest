FROM ubuntu:16.04
COPY /home/vsts/work/r1/a/_Kiran-DK.RWODevOpsTest/MyBuildOutputs/. /app
WORKDIR /app
RUN apt-get install -y libboost-all-dev
EXPOSE 80/tcp 443/tcp
ENTRYPOINT [ "./*.out" ]
