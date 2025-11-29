FROM python:3.12.12 AS builder

WORKDIR /build

RUN python -m pip install --upgrade pip

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

RUN zensical build

FROM nginx:1.29.3

COPY --from=builder /build/site /usr/share/nginx/html

COPY robots.txt /usr/share/nginx/html/robots.txt

COPY default.conf /etc/nginx/conf.d/default.conf
