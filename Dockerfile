FROM python:3.6

# Create app directory
WORKDIR /app

# Install app dependencies
COPY requirements.txt ./

RUN pip install flask

# Bundle app source
COPY server.py /app

CMD [ "python", "server.py" ]