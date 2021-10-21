FROM python:3
COPY *.py ./
EXPOSE 8080
ENTRYPOINT ["python3", "server.py"]
