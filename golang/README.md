# Golang Devcontainer

Docker containers as development environment with [code-server](https://github.com/coder/code-server).


## Tags

- `1.19`, `latest`

## Usage

```sh
docker run -d --name code-golang -p 8080:8080 tianze0926/code-golang

# gitconfig
docker cp ~/.gitconfig code-golang:/root/.gitconfig

# GOPROXY
docker exec code-golang go env -w GOPROXY=https://goproxy.io,direct
```
