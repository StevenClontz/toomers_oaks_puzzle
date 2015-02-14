# toomers_oaks_puzzle

Suppose you see a tweet with this seemingly random grid of letters:

```
BXGKORMT
SMQLASKE
QKJGKDLT
TKXVAMAB
HDTXBTCT
GEJQGTMU
BXXKOIMT
```

You're asked to find one of the `#AuburnOaks`, and the request is ended with
`#WarEagle`.

## Hint

Perhaps you try a [Vigenère cipher](http://en.wikipedia.org/wiki/Vigen%C3%A8re_cipher)
using the key `WAREAGLE` (here we assume A=0, B=1, ...).

```
XXXOOXXX
OMHPAYVI
MKAKKJWX
PKOZASLF
DDKBBZNX
CEAUGZXY
XXOOOOXX
```

Well, that certainly seems promising based on the first and last lines, but it's not quite an oak 
tree. Perhaps you should keep singing...

## Solution

Applying the first 64 characters of the lyrics of War Eagle as a one-time pad
does the trick!

```
XXXOOXXX
XXOOOOXX
XOOOOOOX
OOOOOOOO
XXXOOXXX
XXXOOXXX
XXOOOOXX
```

What a happy coincidence (read: unfortunate red herring) that the initial cihpertext
included `OAK` in the fifth column!
