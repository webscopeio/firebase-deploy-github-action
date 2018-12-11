#!/bin/sh -l

set -eu

echo "Deploy to firebase"
sh -c "npx firebase deploy $* --token $FIREBASE_AUTH_TOKEN"
