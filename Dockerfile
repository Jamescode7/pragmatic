FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/Jamescode7/pragmatic.git

WORKDIR /home/pragmatic/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-+g*s+7r9fs-@v3b2)znho1b*k$z-3&9=qfn6qw_h^9o*$mv$eu" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]





