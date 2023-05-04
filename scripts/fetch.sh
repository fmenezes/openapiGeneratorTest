#!/bin/bash

set -o errexit

base_path=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

OPENAPI_FILE_NAME="$base_path/../openapi.yaml"
openapi_url="https://raw.githubusercontent.com/mongodb/go-client-mongodb-atlas/sdkv2/openapi/atlas-api-transformed.yaml"

curl --show-error --fail --silent -o "$OPENAPI_FILE_NAME" \
     -H "Accept: application/yaml" "$openapi_url"
