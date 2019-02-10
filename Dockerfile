FROM python:3.6.6-slim-jessie

EXPOSE 80

RUN pip install Flask==1.0 gunicorn==19.9.0

COPY server.py message.txt /
CMD ["gunicorn", "-b 0.0.0.0:80", "server:app"]

LABEL maintainer="Herman Zvonimir Došilović, hermanz.dosilovic@gmail.com"
LABEL version="0.1.0"
