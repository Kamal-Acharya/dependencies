FROM ubuntu

RUN apt-get update
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

RUN pip install psycopg2-binary
