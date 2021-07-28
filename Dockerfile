FROM python:3.9.5-buster

WORKDIR /BOT
RUN chmod 777 /BOT
RUN apt-get -qq update -y
RUN apt-get -qq install -y wget curl bash git neofetch software-properties-common ffmpeg aria2

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# If u want to use /update feature, uncomment the following and edit
#RUN git config --global user.email "your_email"
#RUN git config --global user.name "git_username"

#Copying All Source
COPY . .

#Starting Bot
CMD ["bash", "run.sh"]
