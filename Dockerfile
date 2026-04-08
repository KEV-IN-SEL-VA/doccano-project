FROM doccano/doccano:latest

USER root

RUN pip install gunicorn

EXPOSE 8000

CMD bash -c "doccano migrate && doccano createuser --username kevinselva --password admin123 --email kevinselva2000@gmail.com || true && gunicorn doccano.wsgi:application --bind 0.0.0.0:$PORT"
