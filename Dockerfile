FROM alpine:latest

WORKDIR /src

COPY src/requirements.txt .

RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

RUN pip install -r requirements.txt

COPY . /src/

EXPOSE 5000

CMD ["python3", "src/app.py"]
 
