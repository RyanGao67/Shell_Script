#!/bin/bash
AR=('foo' 'bar' 'baz' 'bat')
for i in "${!AR[@]}"; do
  printf '${AR[%s]}=%s\n' "$i" "${AR[i]}"
done

#This results in:
#${AR[0]}=foo
#${AR[1]}=bar
#${AR[2]}=baz
#${AR[3]}=bat
#Note that this also work for non-successive indexes:

#!/bin/bash
AR=([3]='foo' [5]='bar' [25]='baz' [7]='bat')
for i in "${!AR[@]}"; do
  printf '${AR[%s]}=%s\n' "$i" "${AR[i]}"
done

#This results in:
#
#${AR[3]}=foo
#${AR[5]}=bar
#${AR[7]}=bat
#${AR[25]}=baz