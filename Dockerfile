FROM doccano/doccano:latest

USER root

# Ensure the app listens on the port Render provides
ENV PORT=8000

# 1. Run migrations to setup the database
# 2. Try to create a superuser (if it exists, '|| true' keeps the boot going)
# 3. Start the webserver on the dynamic PORT assigned by Render
CMD ["sh", "-c", "doccano migrate && doccano createuser --username kevinselva --password admin123 --email kevinselva2000@gmail.com --super-user || true && doccano webserver --port $PORT"]
