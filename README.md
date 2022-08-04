# rust-multi-stage-docker

If you look in the Dockerfile you can see it's all very simple.

The only special thing is that for rust to work in the `scratch` container it needs to be statically linked. That's why I'm using a `*-unknown-linux-musl` target. I've used the `aarch64` variant, but you should to `x86_64` if you're not building on ARM.
