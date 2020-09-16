# https://docs.docker.com/engine/reference/builder/

# step 1 - build image
FROM golang:1.15.1-alpine AS builder

COPY hello-openshift.go .

RUN go build -o hello-openshift ./hello-openshift.go

# step 2 - run image
FROM alpine:3.12.0 AS runner
# Copy our static executable.
COPY --from=builder /go/hello-openshift /usr/bin/hello-openshift

CMD ["/usr/bin/hello-openshift"]