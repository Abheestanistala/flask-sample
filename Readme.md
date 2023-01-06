To run the application, run the following commands:
sudo apt-get update
sudo apt-get install python3 python3-pip
git clone <github-repo>
cd <folder-name>
sudo pip3 install flask
sudo python3 hello.py

Using Python 3.18 IMG the above steps have been omitted to much extent.


#################DockerFile-TesterServer-Slave1###########
FROM python:3.8

# install Flask and other dependencies
RUN pip install Flask

# copy the app code to the container
COPY app.py /app/

# set the working directory
WORKDIR /app

# specify the command to run the app
CMD ["python", "app.py"]


To Build::
docker build -t myapp .


To Run:: 
docker run -d -p 5000:5000 myapp



#####################################################
