FROM ubuntu:latest

WORKDIR /src

COPY src/requirements.txt .

RUN apt-get update \
    && apt-get install -y python3-pip

RUN pip install -r requirements.txt

COPY . /src/

EXPOSE 5000

CMD ["python3", "src/app.py"]
 
