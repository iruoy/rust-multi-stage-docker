FROM rust AS builder
COPY . .
RUN rustup target add x86_64-unknown-linux-musl
RUN cargo build --release --target x86_64-unknown-linux-musl

FROM scratch
COPY --from=builder /target/x86_64-unknown-linux-musl/release/hello /
CMD ["/hello"]

