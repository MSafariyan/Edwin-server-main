#######  Development #########
FROM harbor.narvanventures.com/library/python:3.11-buster
RUN mkdir /app
WORKDIR /app
COPY ../../Uni/Edwin-server-main/requirements.txt .
RUN pip3 install --no-cache-dir -r ./requirements.txt
COPY manage.py .
COPY src ./src
# Grpc Port
EXPOSE 8100
# Prometheus Port
EXPOSE 8200
# use this command to debug
#ENTRYPOINT ["tail", "-f", "/dev/null"]
