FROM python:3


COPY . .
RUN  pip install -r requirements.txt
RUN python manage.py migrate


EXPOSE 80
CMD ["python","manage.py","runserver","0.0.0.0:80"]