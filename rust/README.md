# Rust Devcontainer

Docker containers as development environment with [code-server](https://github.com/coder/code-server).


## Tags

- `1.66`, `latest`

## Usage

```sh
docker run -d --name code-rust -p 8080:8080 tianze0926/code-rust

# gitconfig
docker cp ~/.gitconfig code-rust:/root/.gitconfig
```
