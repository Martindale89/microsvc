FROM python:3.9.2

COPY requirements.txt .
RUN pip3 install -r requirements.txt

WORKDIR /app

COPY app.py .
COPY templates templates

EXPOSE 5000

ENV FLASK_APP app.py

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]


# FROM centos:7

# RUN yum -y install epel-release
# RUN yum -y install nginx

# EXPOSE 80

# RUN yum install -y nodejs npm
# RUN mkdir /app

# COPY . /app
# COPY ./default.conf /etc/nginx/conf.d/default.conf
# COPY ./nginx.conf /etc/nginx/nginx.conf

# WORKDIR /app

# RUN npm install
# RUN npm run build
# RUN rm -f -r /usr/share/nginx/html
# RUN ln -s /app/dist /usr/share/nginx/html

# CMD ["/bin/bash", "-c", "nginx -g 'daemon off;'"]