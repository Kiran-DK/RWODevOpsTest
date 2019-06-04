FROM ubuntu:16.04
COPY . /app
COPY /home/vsts/work/r1/a/_Kiran-DK.RWODevOpsTest/MyBuildOutputs/*.out /app
COPY /home/vsts/work/r1/a/_Kiran-DK.RWODevOpsTest/MyBuildOutputs/*.txt /app
WORKDIR /app
RUN apt-get install -y libboost-all-dev
EXPOSE 80/tcp 443/tcp
ENTRYPOINT [ "./*.out" ]
