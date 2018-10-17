FROM ubuntu:18.04
LABEL "https://www.github.com/mrvnmchm"="mrvnmchm"
LABEL "version"="1.0"
LABEL "description"="Docker template for Flask/Jinja2 web applications."
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]