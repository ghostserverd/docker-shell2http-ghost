FROM msoap/shell2http as shell2http_base

FROM lsiobase/alpine:3.10

COPY --from=shell2http_base /app/shell2http /app/shell2http
ENTRYPOINT ["/init"]
