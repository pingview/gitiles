# gitiles

[![License](https://img.shields.io/github/license/pingview/gitiles.svg?color=brightgreen)](https://github.com/pingview/gitiles/blob/main/LICENSE)



## Introduction

*gitiles* is a Git repository browser of *[pingview](https://github.com/pingview/)*.



## Prerequisites



## Build

```bash
./build.sh
```



## Run

```
docker run --rm \
  -v /path/to/config:/config \
  -v /path/to/source:/source \
  craftslab/gitiles /config/gitiles.config /source
```



## Config

An example of *gitiles* configuration in [gitiles.config](https://github.com/pingview/gitiles/blob/main/gitiles.config):

```
[gitiles]
  siteTitle = pingview
  canonicalHostName = gitiles.example.org
  baseGitUrl = git://git.example.org/
  exportAll = true
  fixedTimeZone = UTC
  allowOriginRegex = http://localhost

[markdown]
  render = true
  inputLimit = 5M
  imageLimit = 256K
```



## License

Project License can be found [here](LICENSE).



## Reference

- [gitiles-config](https://gerrit.googlesource.com/gitiles/+/refs/tags/v1.2.0/Documentation/config.md)
- [gitiles-developer-guide](https://gerrit.googlesource.com/gitiles/+/refs/tags/v1.2.0/Documentation/developer-guide.md)
- [gitiles-run-dev](https://gerrit.googlesource.com/gitiles/+/refs/tags/v1.2.0/tools/run_dev.sh)
- [how-to-install-gitiles-browser](https://lynxbee.com/how-to-install-gitiles-browser-for-git-repositories/)
