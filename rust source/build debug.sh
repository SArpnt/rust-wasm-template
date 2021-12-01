#!/bin/sh
trap "exit" INT TERM ERR
trap "kill 0" EXIT

python -m http.server -d .. 8080 &
cargo watch\
	-x "build --target wasm32-unknown-unknown"\
	-s "wasm-bindgen target/wasm32-unknown-unknown/debug/*.wasm --out-dir ../web_build --out-name rustWasm --target web --no-typescript" &

wait