# docker-xml-and-svg-tools
Docker Image with XML and SVG Tools to play with SVGs

## Usage

If you have something like **`myproject/convert-icons.sh`**

```
#!/bin/bash

rsvg -w 32 -h 32 /icons/icons/foo.svg /icons/build/foo-32.png}
```

And a folder `myproject/icons/` with a `foo.svg` you can do

```
cd myproject
docker run --tty --volume $(pwd)/:/icons/ codeclou/docker-xml-and-svg-tools:latest bash /icons/convert-icons.sh
```

To create `myproject/build/foo-32.png`

### License

  * Dockerfile and Image is provided under [MIT License](https://github.com/codeclou/docker-xml-and-svg-tools/blob/master/LICENSE.md)
