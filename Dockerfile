FROM rust:1.75 as builder

WORKDIR /book

RUN cargo install mdbook

COPY . .

RUN ls -alh . && mdbook build

FROM nginx:1.21-alpine

COPY --from=builder /book/book /usr/share/nginx/html

EXPOSE 80

