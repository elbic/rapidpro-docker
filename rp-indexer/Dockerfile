FROM golang:1.11

RUN go get -d -v github.com/nyaruka/rp-indexer/...
RUN go install -v github.com/nyaruka/rp-indexer/...

EXPOSE 8080

CMD ["rp-indexer"]
