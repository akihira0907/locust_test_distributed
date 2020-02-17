FROM locustio/locust:latest

USER root
RUN apk add sudo
RUN sudo wget https://raw.githubusercontent.com/akihira0907/locust_test_distributed/master/tests/locustfile.py
ENTRYPOINT ["locust", "-H", "http://10.17.54.177", "--no-web", "-c", "5", "-r", "1"]
