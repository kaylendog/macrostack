FROM ghcr.io/kaylendog/macrostack-services:latest as builder

FROM alpine:latest

RUN apk --no-cache add ca-certificates

COPY --from=builder /app/target/release/gateway /gateway
ENTRYPOINT ["/gateway"]
