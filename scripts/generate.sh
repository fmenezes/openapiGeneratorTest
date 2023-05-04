#!/bin/bash

set -o errexit

base_path=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

OPENAPI_FILE_NAME="$base_path/../openapi.yaml"

OUTPUT_FOLDER="$base_path/../dist"

npx openapi-generator-cli generate -c "./config/config.yaml" -i "$OPENAPI_FILE_NAME" -o "$OUTPUT_FOLDER"