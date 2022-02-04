FROM python:3.9-alpine

RUN apk update

WORKDIR /snake-game

COPY requirements.txt /snake-game

RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "main.py"]
