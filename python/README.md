# Python Devcontainer

Docker containers as development environment with [code-server](https://github.com/coder/code-server) and [fish](https://fishshell.com/).


## Tags

> The tag name corresponds to the version of Miniconda.

- `22.11.1`, `latest`

## Usage

```sh
docker run -d --name code-python -p 8080:8080 tianze0926/code-python

# gitconfig
docker cp ~/.gitconfig code-python:/root/.gitconfig
```
