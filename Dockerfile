FROM python:3.10

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY Computer-Systems-hw02 Computer-Systems-hw02

RUN pip install -r Computer-Systems-hw02/requirements.txt

EXPOSE 8000

ENTRYPOINT ["python", "Computer-Systems-hw02/main.py"]