FROM node:latest
MAINTAINER Patrice FERLET <metal3d@gmail.com>

env THEME black
env SLIDE example.md
env HIGHLIGHT zenburn
env TITLE "Example slide"
env AUTHOR ""
env DESCRIPTION "An example slide"
env USE_REMOTE false
env SEPARATOR "\n---\n"
env VERTICAL_SEPARATOR "\n----\n"
env NOTE "^Note:"

COPY reveal.js /revealjs
WORKDIR /revealjs


RUN sed -i 's/"node-sass": ".*"/"node-sass": "~3.3"/'   package.json && \
    sed -i 's/"grunt-sass": ".*"/"grunt-sass": "~1.0"/' package.json && \
    npm install -g grunt-cli && \
    npm install && \
    npm cache clean

COPY slides /revealjs/slides
COPY index.html /revealjs/index.html
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["grunt", "serve"]
