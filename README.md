# Docker Container for Github Pages

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

It is an Alpine based container that uses of [`github-pages` gem](https://github.com/github/pages-gem) to perform the most similar behavior as it is displayed in the GitHub Pages website.

## What is GitHub Pages

GitHub Pages are public webpages hosted and published directly through your GitHub repository. [More Info](https://pages.github.com/)

## How to Use this Image

The idea of this container is to be as much as possible *plug-and-play*. You just need to mount your page (folder that contains `_config.yml`) in volume under the `/site`.

The Jekyll server is exposed internally on the port `4000`, so if you follow bellow commands the Jekyll page will be available at `http://localhost:4000`.

## Docker

```(sh)
docker run -it --rm -v "$PWD":/site -p "4000:4000" gustavokath/github-pages
```

### Docker Compose

```(yml)
version: '3'
services:
  jekyll:
    image: gustavokath/github-pages
    ports:
      - "4000:4000"
    volumes:
      - ./:/site
    tty: true
```

### Configuration

Include the following plugins and configurations in the `_config.yml` to have the most similar behavior as GitHub website

```(yml)
...

plugins:
- jekyll-optional-front-matter
- jekyll-relative-links

optional_front_matter:
  remove_originals: true
```

## Contributing

### Issues

If you have any problems with or questions, please contact through a GitHub issue.

### Contributing



## License

The image and repository are licensed under the [MIT License](./LICENSE).
