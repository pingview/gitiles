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
docker run -p 8080:8080 -v /path/to/config:/config craftslab/gitiles:latest /config/gitiles.config
```



## Config

An example of *gitiles* configuration in [gitiles.config](https://github.com/pingview/gitiles/blob/main/config/gitiles.config):

```
[gitiles]
  allowOriginRegex = http://localhost
  baseGitUrl = git://git.example.org/
  canonicalHostName = gitiles.example.org
  exportAll = true
  fixedTimeZone = UTC
  siteTitle = gitiles

[markdown]
  imageLimit = 256K
  inputLimit = 5M
  render = true
```



## License

Project License can be found [here](LICENSE).



## Reference

- [gitiles-config](https://gerrit.googlesource.com/gitiles/+/refs/tags/v1.2.0/Documentation/config.md)
- [gitiles-developer-guide](https://gerrit.googlesource.com/gitiles/+/refs/tags/v1.2.0/Documentation/developer-guide.md)
- [gitiles-run-dev](https://gerrit.googlesource.com/gitiles/+/refs/tags/v1.2.0/tools/run_dev.sh)
- [how-to-install-gitiles-browser](https://lynxbee.com/how-to-install-gitiles-browser-for-git-repositories/)
