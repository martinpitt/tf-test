#!/bin/sh
set -eux
TOKEN="${1:?Call this script with a path to your token}"

curl -v -H "Authorization: Bearer $(cat "$TOKEN")" --json @request.json https://api.dev.testing-farm.io/v0.1/requests

echo "Look for the response id and open https://artifacts.dev.testing-farm.io/<ID>"
