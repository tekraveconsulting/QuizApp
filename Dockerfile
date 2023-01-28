FROM python:3.8

COPY . /app
WORKDIR /app

RUN pip install --user -r requirements.txt

CMD ["python", "lets_quiz/manage.py"]
