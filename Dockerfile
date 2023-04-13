FROM rust:alpine as builder

RUN apk add --no-cache musl-dev openssl-dev protoc

WORKDIR /app

COPY . .

RUN cargo build -r --workspace --bins --exclude macrostack-prisma-cli
