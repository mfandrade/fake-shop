FROM    python:alpine3.20

WORKDIR /srv/app
COPY    src/ .
RUN pip install -r requirements.txt
ENV FLASK_APP=/srv/app/index.py \
    PROMETHEUS_MULTIPROC_DIR=/tmp
CMD ["sh", "entrypoint.sh"]
