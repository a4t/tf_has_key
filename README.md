# tf_has_key

This module is an extension of the Terraform function lookup.

## Why?

Terraform lookup retrieves the value of a single element from a map, given its key. If the given key does not exist, a the given default value is returned instead.
https://www.terraform.io/docs/configuration/functions/lookup.html

But, this module returns false if no value exists.

## Usage

```
module has_key_1 {
  source = "github.com/a4t/tf_has_key"

  map = {
    a = "a"
    b = "b"
    c = "c"
  }
  value = "a"
}
```

## Test

```
$ make init
$ make test
```

## Version increment

```
$ make version+   # v0.0.1 -> v0.0.2
$ make version++  # v0.0.1 -> v0.1.0
$ make version+++ # v0.0.1 -> v1.0.0
```

## Release tag

```
$ make release-tag
```
