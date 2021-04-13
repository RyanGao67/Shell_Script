#!/bin/bash
AR=('foo' 'bar' 'baz' 'bat')
for i in "${!AR[@]}"; do
  printf '${AR[%s]}=%s\n' "$i" "${AR[i]}"
done