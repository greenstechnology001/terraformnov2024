FROM python:3.6

# Create app directory
WORKDIR /appdev

# Install app dependencies
COPY requirements.txt ./

RUN pip install flask

# Bundle app source
COPY server.py /appdev

CMD [ "python", "server.py" ]
