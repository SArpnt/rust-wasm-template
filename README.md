# Rust WASM template

## Automatic dev builds

install python, or replace the python line in build debug with a one-line server of your choosing
```sh
cargo install cargo-watch
cargo install wasm-bindgen-cli
cd "rust source"
sh "build debug.sh"
```

## Release

install [binaryen](https://github.com/webassembly/binaryen)
```sh
cargo install wasm-bindgen-cli
cd "rust source"
sh "build.sh"
```
