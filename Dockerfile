# Static hosting of the site-visit protocol (single index.html) with Caddy.
# Railway injects PORT; Caddy listens on it (8080 locally).
FROM caddy:2-alpine
COPY Caddyfile /etc/caddy/Caddyfile
COPY index.html /srv/index.html
