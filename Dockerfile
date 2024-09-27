FROM python:3.10-alpine
WORKDIR app/
COPY . .
RUN --mount=type=cache,id=custom-pip,target=/root/.cache/pip pip install -r requirements.txt
RUN apk update && apk add bash
#RUN python3 manage.py makemigrations
#RUN python3 manage.py migrate
#CMD ["python3" , "manage.py" , "runserver"]