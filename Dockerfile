FROM python:3
COPY ..
EXPOSE 8080
ENTRYPOINT ["python3", "server.py"]
