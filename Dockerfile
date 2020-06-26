FROM ubuntu

RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev

COPY ./requirements.txt /requirements.txt

WORKDIR /

RUN pip3 install -r requirements.txt

COPY . /

ENTRYPOINT [ "python3" ]

EXPOSE 8080

CMD [ "routes.py" ]
