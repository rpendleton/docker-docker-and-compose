## Introduction

rpendleton/docker-and-compose is a Docker image that adds docker-compose to the
official [docker][1] image. This is useful for use in CI or other situations
where you need to restart existing containers.

Since the official [docker][1] image is based on Alpine linux which uses musl
libc instead of glibc, simply downloading docker-compose and trying to use it
will result in an error that the command does not exist. Because of this, this
image installs docker-compose using pip.

## How to Use

Simply choose this image in your CI or related scripts instead of docker. For
this to work, you must either mount the host's docker socket or use some type of
Docker-in-Docker.

[1]: https://hub.docker.com/_/docker/
