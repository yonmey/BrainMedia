FROM alpine

# Update and install system dependencies
RUN apk update \
    && apk --update add python git

# Clone repository
RUN git clone https://github.com/itsmegb/LazyLibrarian.git

WORKDIR /LazyLibrarian

# Clean up
RUN rm -rf /var/cache/apk/*

EXPOSE 5299

CMD python LazyLibrarian.py