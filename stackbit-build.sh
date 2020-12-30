#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://f88658276114.ngrok.io/project/5fec86586202d0f902cfd0e6/webhook/build/pull > /dev/null
curl -s -X POST https://f88658276114.ngrok.io/project/5fec86586202d0f902cfd0e6/webhook/build/ssgbuild > /dev/null
jekyll build
curl -s -X POST https://f88658276114.ngrok.io/project/5fec86586202d0f902cfd0e6/webhook/build/publish > /dev/null
