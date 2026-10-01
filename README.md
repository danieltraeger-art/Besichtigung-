# Site-visit protocol (Besichtigungsprotokoll)

A mobile web form for Matera account executives to document on-site visits at WEGs (condominium owners' associations): building walk-through, technical setup and service providers, planned works and reserves, advisory board and votes, and next steps. It generates a HubSpot note and a follow-up email from the entries; all data stays in the browser's localStorage on the device, with no backend.

## Where it runs

- Platform: Railway (Dockerfile, static file served by Caddy)
- URL: TODO: production URL (request a matera.eu subdomain with `/matera-sre:request-subdomain`)
- External services: Google Fonts only (Atkinson Hyperlegible). No database, no API calls.

## Run it locally

```bash
git clone https://github.com/danieltraeger-art/Besichtigung-.git
cd Besichtigung-
python3 -m http.server 8000
# open http://localhost:8000
```

Or with Docker:

```bash
docker build -t besichtigung .
docker run -p 8080:8080 besichtigung
# open http://localhost:8080
```

The app reads no environment variables.
