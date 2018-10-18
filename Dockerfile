FROM ubuntu:18.04
LABEL "https://www.github.com/mrvnmchm"="mrvnmchm"
LABEL "version"="1.0"
LABEL "description"="Docker template for Flask/Jinja2 web applications."
RUN apt-get update && apt-get install -y python-pip python-dev build-essential
RUN apt-get clean
ENTRYPOINT ["rm /var/lib/apt/lists/*"]
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]