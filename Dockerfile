FROM doccano/doccano:latest

EXPOSE 8000

CMD ["doccano", "webserver", "--host", "0.0.0.0", "--port", "8000"]
