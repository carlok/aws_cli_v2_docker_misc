# aws_cli_v2_docker_misc
An Ubuntu based Dockerfile for AWS CLI v2, MySQL client and Python3

`Alpine` uses `musl` as `libc`, while `Ubuntu` (and many others) use `glibc` as `libc`. `AWS CLI` is compiled with `glibc` so running it on `Alpine` is a mess... moreover, it's easy to find `Docker` images or `Dockerfile` for `AWS CLI` V1 while I needed V2, so I created an `Ubuntu 20.04` based `Dockerfile` with:
- `AWS CLI` v2
- `MySQL` Client (CLI)
- `Python` v3 (with `boto3` and `psutil`)
- `zip`
I could have used something `glibc` compatible and leaner than Ubuntu but I didn't even want to take hours to accomplish this task. 😃

This `Dockerfile` is useful for making `MySQL` dumps and copying them to `AWS S3`, as well as being able to launch virtual machine monitoring `Python` scripts.

So here it is. You can find a few examples as comments at the end of the `Dockerfile`.
