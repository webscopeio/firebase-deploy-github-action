FROM node:10

LABEL "com.github.actions.name"="Build & deploy to Firebase"
LABEL "com.github.actions.description"="Build gastby based site and deploy it to firebase hosting"
LABEL "com.github.actions.icon"="share"
LABEL "com.github.actions.color"="yellow"

# LABEL "repository"="http://github.com/octocat/hello-world"
# LABEL "homepage"="http://github.com/actions"
# LABEL "maintainer"="Octocat <octocat@github.com>"


ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
