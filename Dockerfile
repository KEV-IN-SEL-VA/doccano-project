FROM doccano/doccano:latest

RUN pip install gunicorn

EXPOSE 8000

CMD ["bash", "-c", "python manage.py migrate && gunicorn doccano.wsgi:application --bind 0.0.0.0:$PORT"]
