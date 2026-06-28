# https://developers.home-assistant.io/docs/apps/configuration#app-dockerfile
FROM ledfxorg/ledfx:latest

# Install nginx as reverse proxy
RUN apk add --no-cache nginx

# Copy nginx config
COPY rootfs/etc/nginx/nginx.conf /etc/nginx/nginx.conf

# Copy startup script
COPY rootfs/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

LABEL org.opencontainers.image.title="Home Assistant App: LedFx"
LABEL org.opencontainers.image.description="LedFx app for Home Assistant OS"
LABEL org.opencontainers.image.source="https://github.com/LedFx/LedFx"

ENTRYPOINT ["/entrypoint.sh"]
