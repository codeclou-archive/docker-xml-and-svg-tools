# docker-xml-and-svg-tools

[![](https://codeclou.github.io/doc/badges/generated/docker-image-size-200.svg)](https://hub.docker.com/r/codeclou/docker-xml-and-svg-tools/tags/) [![](https://codeclou.github.io/doc/badges/generated/docker-from-alpine-3.5.svg)](https://www.ubuntu.com/) [![](https://codeclou.github.io/doc/badges/generated/docker-run-as-non-root.svg)](https://docs.docker.com/engine/reference/builder/#/user)

Docker-Image with XML and SVG Tools to play with SVGs.
You can use `xmlstarlet` and `rsvg`  binaries.

-----

&nbsp;

### Prerequisites

 * Runs as non-root with fixed UID 10777 and GID 10777. See [howto prepare volume permissions](https://github.com/codeclou/doc/blob/master/docker/README.md).
 * See [howto use SystemD for named Docker-Containers and system startup](https://github.com/codeclou/doc/blob/master/docker/README.md).

-----

&nbsp;

### Usage

If you have something like **`demo/convert-icons.sh`**. (See demo folder)

```
#!/bin/bash

rsvg -w 32 -h 32 /icons/icons/circle.svg /icons/build/circle-32.png
```

And a folder `demo/icons/` with a `circle.svg` you can do

```
docker run \
    -i -t \
    -v $(pwd)/demo/:/icons/ \
    codeclou/docker-xml-and-svg-tools:latest \
    bash /icons/convert-icons.sh
```

To create `demo/build/circle-32.png` from the svg.

----

&nbsp;

### License, Liability & Support

 * [![](https://codeclou.github.io/doc/docker-warranty-notice.svg?v1)](https://github.com/codeclou/docker-xml-and-svg-tools/blob/master/LICENSE.md)
 * Dockerfile and Image is provided under [MIT License](https://github.com/codeclou/docker-xml-and-svg-tools/blob/master/LICENSE.md)
