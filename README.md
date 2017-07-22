# problem statement
enables travis-ci for a repo

# example usage

> note: in examples, VERSION represents a version of the travis-ci.enable pkg

## install

```shell
opctl pkg install github.com/opspec-pkgs/travis-ci.enable#VERSION
```

## run

```
opctl run github.com/opspec-pkgs/travis-ci.enable#VERSION
```

## compose

```yaml
run:
  op:
    pkg: { ref: github.com/opspec-pkgs/travis-ci.enable#VERSION }
    inputs:
      githubAccessToken:
      repo:
```