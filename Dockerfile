FROM node:10

LABEL "com.github.actions.name"="Github Action for Firebase deploy"
LABEL "com.github.actions.description"="Run automatic Firebase deploy using Github Actions"
LABEL "com.github.actions.icon"="share"
LABEL "com.github.actions.color"="yellow"

LABEL "version"="1.0.0"
LABEL "repository"="https://github.com/webscopeio/firebase-deploy-github-action"
LABEL "homepage"="https://github.com/webscopeio/firebase-deploy-github-action"
LABEL "maintainer"="Pustelto <pustelnik@webscope.io>"


ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
