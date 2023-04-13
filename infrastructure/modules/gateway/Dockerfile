FROM ghcr.io/kaylendog/macrostack-services:latest as builder

FROM alpine:latest

RUN apk --no-cache add ca-certificates

COPY --from=builder /app/target/release/gateway /gateway
ENTRYPOINT ["/gateway"]

LABEL org.opencontainers.image.source=https://github.com/kaylendog/macrostack
LABEL org.opencontainers.image.description="Macrostack gateway"
LABEL org.opencontainers.image.licenses=MIT/Apache-2.0
