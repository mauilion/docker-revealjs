# Revealjs dockerized

This docker image aims to provide an easy way to launch a presentation build with [Reveal.js](http://lab.hakim.se/reveal-js/). It provides some options to launch a container with environment variables to set themes, plugins, title, and so on.

# How to...

## ... get from Docker Hub

Simply:

```
docker pull metal3d/revealjs
```

Then:

```
docker run --rm -it -p 8000:8000 metal3d/revealjs
```

That launches a container that will be removed after pressing CTRL+C, you may see example slide by browsing http://127.0.0.1:8000

To use your own slide file (markdown format) located at `/path/to/my/slides` directory and with a slide file named `myslide.md`

```
docker run --rm -it -p 8000:8000 \
-v /path/to/my/slides \
-e SLIDE=myslide.md metal3d/revealjs
```

## ... change options

There are several options you may pass to the container, all of this options should be set to container using "-e" option to set environment variable (eg. `-e THEME=night`):

- `THEME`: one of the theme name (defaul: black) - see [the list of themes](https://github.com/hakimel/reveal.js/tree/master/css/theme)
- `SLIDE`: filename of your slide in the volume
- `HIGHLIGHT`: theme for highlighted code block (default: zenburn)
- `TITLE`: the title of the presentation that appears on browser title bar
- `AUTHOR`: Give your name to appear in the author meta tag
- `DESCRIPTION`: Give a description that will fill the description meta tag
- `USE_REMOTE`: set it to "true" to allow slide control with a phone (default: false)
- `SEPARATOR`: slide separator (default: `\n---\n`)
- `VERTICAL_SEPARATOR`: vertical slide separator (default: `\n---\n`)
- `NOTE`: speaker note detection (default: `^Note:`)


 

