>&2 echo "Building project for target wasm32-unknown-unknown, language JavaScript, build mode Release"
cargo +nightly build --target wasm32-unknown-unknown --bin=basm-submit --release "$@"
python3 scripts/wasm-gen.py wasm-template.html