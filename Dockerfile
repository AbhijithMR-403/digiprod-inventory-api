FROM python:3.10-slim

# FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
# RUN python3 manage.py makemigrations
COPY . /code/
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]