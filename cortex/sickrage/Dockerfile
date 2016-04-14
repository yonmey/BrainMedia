FROM alpine

# Create folders used by Sickrage
RUN mkdir /config /blackhole /sorted /unsorted /app

# Update and install system dependencies
RUN apk update && \
    apk --update add python git unrar zip unzip openssl py-openssl py-mako

# Clone repository
RUN git clone --depth 1 git://github.com/SickRage/SickRage.git /app

# Clear cache
RUN rm -rf /var/cache/apk/*

# Expose port
EXPOSE 8081

# Start server
CMD ["/usr/bin/env", "python2", "/app/SickBeard.py", "--datadir=/config", "--nolaunch"]