FROM python:3
COPY *.py /mydir/
EXPOSE 8080
ENTRYPOINT ["python3", "server.py"]
