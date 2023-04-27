#Getting base image
FROM ubuntu
RUN apt-get update -y && \
    apt-get install -y python3.9 && \
    apt-get install -y python3-pip 

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
