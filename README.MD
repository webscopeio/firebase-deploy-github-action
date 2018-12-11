# Firebase deploy Github action

This is github action for automatic deployment to firebase.

## Prerequisities

- you have to have firebase cli installed in your project as dev dependecy
- you have to add firebase auth token for CI to you github repo secrets as `FIREBASE_AUTH_TOKEN`

## How to use

Just add your firebase auth token to action secrets and pass deploy options to args field (see example). Action takes all valid deploy options like `--only hosting,storage` or `--only function:func1,function:func2`.

## Example

```
action "Deploy" {
  uses = "./.github/firebase-deploy"
  args = "--only hosting"
  secrets = ["FIREBASE_AUTH_TOKEN"]
  needs = ["Build"]
}
```
