FROM rust:1.47.0 AS builder

# muslc is required in order to build the rust image.
RUN apt-get update && apt-get -y install ca-certificates cmake musl-tools libssl-dev && rm -rf /var/lib/apt/lists/*

# create a new empty shell project
RUN USER=root cargo new --bin rust-actix
WORKDIR /rust-actix

# add a new target for musl
RUN rustup target add x86_64-unknown-linux-musl
ENV PKG_CONFIG_ALLOW_CROSS=1

# copy over your manifests
COPY ./Cargo.lock ./Cargo.lock
COPY ./Cargo.toml ./Cargo.toml

# this build step will cache your dependencies
RUN cargo build --release --target x86_64-unknown-linux-musl
RUN rm ./src/*.rs

# copy your source tree
COPY ./src ./src

# build for release
RUN rm ./target/x86_64-unknown-linux-musl/release/deps/rust_actix*
RUN cargo build --release --target x86_64-unknown-linux-musl

FROM scratch

# copy binary into image
COPY --from=builder /rust-actix/target/x86_64-unknown-linux-musl/release/rust-actix /rust-actix

# Run the hello binary.
ENTRYPOINT ["/rust-actix"]
