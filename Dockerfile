FROM --platform=$BUILDPLATFORM python:3.7-alpine AS python37
FROM --platform=$BUILDPLATFORM python:3.8-alpine AS python38
FROM --platform=$BUILDPLATFORM python:3.9-alpine AS python39
FROM --platform=$BUILDPLATFORM python:3.10-alpine AS python310
FROM --platform=$BUILDPLATFORM python:3.11-alpine AS python311

FROM --platform=$BUILDPLATFORM alpine:latest
LABEL maintainer="Finbarrs Oketunji <f@finbarrs.eu>"

ENV PATH="/usr/local/bin:${PATH}"

RUN apk add --no-cache python3

COPY --from=python37 / /usr/local/python37/
COPY --from=python38 / /usr/local/python38/
COPY --from=python39 / /usr/local/python39/
COPY --from=python310 / /usr/local/python310/
COPY --from=python311 / /usr/local/python311/

ENV PATH="/usr/local/python37/bin:/usr/local/python38/bin:/usr/local/python39/bin:/usr/local/python310/bin:/usr/local/python311/bin:${PATH}"

CMD ["python3"]