FROM devilldon/py3-alpine

WORKDIR /BOT

RUN chmod -R 777 /BOT

COPY requirements.txt .
RUN pip3 install --no-cache -r requirements.txt

COPY . .
CMD ["bash", "run.sh"]
