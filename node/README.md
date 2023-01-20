# Node Devcontainer

Docker containers as development environment with [code-server](https://github.com/coder/code-server) and [fish](https://fishshell.com/).


## Tags

> The tag name corresponds to the version of Miniconda.

- `18`, `latest`

## Usage

```sh
docker run -d --name code-node -p 8080:8080 tianze0926/code-node

# gitconfig
docker cp ~/.gitconfig code-node:/root/.gitconfig
```
