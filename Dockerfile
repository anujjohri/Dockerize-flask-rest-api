FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7

RUN apk --update add bash nano

WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["app.py"]
