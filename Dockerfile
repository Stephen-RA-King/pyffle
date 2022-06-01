FROM python:3.9-alpine
WORKDIR /apps/pyffle/
COPY src/pyffle/. .
COPY requirements/development.txt .
RUN ["pip", "install", "-r", "development.txt"]
CMD ["python", "pyffle.py"]
