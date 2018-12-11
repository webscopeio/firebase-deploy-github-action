FROM node:10

LABEL "com.github.actions.name"="Build & deploy to Firebase"
LABEL "com.github.actions.description"="Build gastby based site and deploy it to firebase hosting"
LABEL "com.github.actions.icon"="share"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="https://github.com/webscopeio/firebase-deploy-github-action"
LABEL "homepage"="https://github.com/webscopeio/firebase-deploy-github-action"
LABEL "maintainer"="Pustelto <pustelnik@webscope.io>"


ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
