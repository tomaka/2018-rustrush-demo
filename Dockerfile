# Note: normally we'd use alpine, but the nightly it uses is buggy

FROM rust

WORKDIR /usr/code
COPY . /usr/code

RUN cargo build --release

EXPOSE 30333
CMD ["/usr/code/target/release/rustrush-demo", "30333"]
