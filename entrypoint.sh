#!/bin/bash

# replace template values
sed -i "s/{{THEME}}/$THEME/" /revealjs/index.html
sed -i "s/{{SLIDE}}/$SLIDE/" /revealjs/index.html
sed -i "s/{{HIGHLIGHT}}/$HIGHLIGHT/" /revealjs/index.html
sed -i "s/{{TITLE}}/$TITLE/" /revealjs/index.html
sed -i "s/{{AUTHOR}}/$AUTHOR/" /revealjs/index.html
sed -i "s/{{DESCRIPTION}}/$DESCRIPTION/" /revealjs/index.html
sed -i "s/{{SEPARATOR}}/$SEPARATOR/" /revealjs/index.html
sed -i "s/{{VERTICAL_SEPARATOR}}/$VERTICAL_SEPARATOR/" /revealjs/index.html
sed -i "s/{{NOTE}}/$NOTE/" /revealjs/index.html
sed -i "s/{{TRANSITION}}/$TRANSITION/" /revealjs/index.html

if [ "$USE_REMOTE" == "true" ]; then
    sed -i "s;//@useremote;,{ src: 'plugin/remotes/remotes.js', async: true };" /revealjs/index.html
fi

# then run command (grunt serve)
exec "$@"
