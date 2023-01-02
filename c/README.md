# C/C++ Devcontainer

Docker containers as development environment with [code-server](https://github.com/coder/code-server) and [fish](https://fishshell.com/).


## Tags

- `latest`

## Usage

```sh
docker run -d --name code-c -p 8080:8080 tianze0926/code-c

# gitconfig
docker cp ~/.gitconfig code-c:/root/.gitconfig
```
