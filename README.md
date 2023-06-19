# Fork from UNPKG

## Docker compose

```yaml
version: '3.9'
services:
  unpkg:
    image: linktodream/unpkg
    environment:
      - NPM_REGISTRY_URL=<Your npm registry server>
      - URL_PREFIX=<Your url prefix>
```

国内镜像

```yaml
version: '3.9'
services:
  unpkg:
    image: registry.cn-hangzhou.aliyuncs.com/tf98_public/unpkg
    environment:
      - NPM_REGISTRY_URL=<Your npm registry server>
      - URL_PREFIX=<Your url prefix>
```

## New features

### URL Prefix

After going through the nginx agent, you may need a prefix path to properly access your unpkg service. Set the environment variable `URL_PREFIX` to add the prefix to the resource path.

# UNPKG &middot; [![Travis][build-badge]][build]

[build-badge]: https://img.shields.io/travis/mjackson/unpkg/master.svg?style=flat-square
[build]: https://travis-ci.org/mjackson/unpkg

[UNPKG](https://unpkg.com) is a fast, global [content delivery network](https://en.wikipedia.org/wiki/Content_delivery_network) for everything on [npm](https://www.npmjs.com/).

### Documentation

Please visit [the UNPKG website](https://unpkg.com) to learn more about how to use it.

### Sponsors

Our sponsors and backers are listed [in SPONSORS.md](SPONSORS.md).
