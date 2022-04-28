FROM python:3.9.2

COPY requirements.txt .
RUN pip3 install -r requirements.txt

WORKDIR /app

COPY app.py .
COPY templates templates

EXPOSE 5000

ENV FLASK_APP app.py

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
