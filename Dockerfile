FROM ubuntu

RUN apt-get update
RUN apt install python3
RUN apt install python3-pip

RUN pip install psycopg2-binary