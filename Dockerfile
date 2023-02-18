FROM python:3.10

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

ENV Secret=frihr5hbjd6eu84er34f54f4354rf

EXPOSE 8000

CMD ["python", "manage.py" , "runserver"]

# comemnt for push

# another comment 

# another comment

