FROM ubuntu:20.04

WORKDIR /app

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get upgrade -y


######
### awscli v2
######

RUN apt-get install -y curl unzip
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install


######
### mysql-client
######
RUN apt-get install -y mysql-client


######
### python3
######

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install python3.8


######
### zip
######
RUN apt-get install zip


######
### boto3, psutil
######
RUN apt-get install -y python3-pip
RUN pip3 install boto3 psutil


######
### examples
######

# build
# /usr/bin/sudo docker build -t kiwifarm/awsmysql .

# run
# sudo docker run -v $PWD:/app -v $HOME/.aws/credentials:/root/.aws/credentials:ro -it kiwifarm/awsmysql aws --profile $AWS_PROFILE --help
# sudo docker run -v $PWD:/app -it kiwifarm/awsmysql mysql --help
# sudo docker run -v $PWD:/app -it kiwifarm/awsmysql mysqldump --help
# sudo docker run -v $PWD:/app -it kiwifarm/awsmysql python myfile.py
# sudo docker run -v $PWD:/app -it kiwifarm/awsmysql zip --help
