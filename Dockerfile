FROM    python:alpine3.20

WORKDIR /srv/app
COPY    src/ .
RUN pip install -r requirements.txt
ENV FLASK_APP=/srv/app/index.py \
    PROMETHEUS_MULTIPROC_DIR=/tmp \
    DB_HOST=backend \
    DB_PORT=5432 \
    DB_NAME=ecommerce \
    DB_USER=ecommerce
CMD ["sh", "entrypoint.sh"]
