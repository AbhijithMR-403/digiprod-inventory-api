FROM python:3.10-slim

# FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
COPY .env.dev /code/

RUN pip install gunicorn
RUN pip install -r requirements.txt
COPY . /code/
EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "digiprod.wsgi:application"]
# CMD gunicorn --bind 0.0.0.0:8000 digiprod.wsgi:application
# COPY ./entrypoint.sh /
# ENTRYPOINT ["sh", "/entrypoint.sh"]

