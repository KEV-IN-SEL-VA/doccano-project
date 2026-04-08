FROM doccano/doccano:latest

EXPOSE 8000

CMD ["sh", "-c", "doccano migrate && doccano webserver --host 0.0.0.0 --port $PORT"]
