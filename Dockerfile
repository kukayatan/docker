FROM python:3

RUN mkdir project
WORKDIR /home/project
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8000
COPY . .
CMD ["gunicorn", "--chdir", "personalweb", "--bind", ":8000", "personalweb.wsgi:application"]










