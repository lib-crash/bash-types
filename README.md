# bash-types

Types for bash.

Is it safe? No.
Is it fast? No.
Is it stable? No.
Is it smart? No.

Does it work? ... kinda actually

```bash
source bash-types.sh

int a=2

echo "$a" # => 2

int b=foo # => Error: int b assigned to non numeric value 'foo'
```
