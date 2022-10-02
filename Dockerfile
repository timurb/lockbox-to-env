FROM ruby

RUN curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | \
    bash -s -- -i /usr/local -n

COPY . /app

ENTRYPOINT ["/app/get-secrets.sh"]
