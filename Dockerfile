FROM rust AS builder
COPY . .
RUN rustup target add aarch64-unknown-linux-musl
RUN cargo build --release --target aarch64-unknown-linux-musl

FROM scratch
COPY --from=builder /target/aarch64-unknown-linux-musl/release/hello /
CMD ["/hello"]

