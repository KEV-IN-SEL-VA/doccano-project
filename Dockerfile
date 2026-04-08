FROM doccano/doccano:latest

EXPOSE 8000

CMD ["sh", "-c", "doccano migrate && doccano createuser --username kevinselva --password admin123 --email kevinselva2000@gmail.com || true && doccano webserver --host 0.0.0.0 --port 8000"]
