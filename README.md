# FFJSON
Serve the JSON with subscript operator in C++

I doubt a parser could be any faster!

This parser provides ability to access nested name-value pairs in a JSON string using squence of '[]' operators in a C++ program.

Its a valgrind clean library. One don't have to worry about freeing up parser.

I recursively hacked it to extract as many features as I could and I will continue till it can!

## code at a glance:
### Employee.json
```JSON
{
   "name": "Gowtham",
   "id": 1729,
   "isProgrammer": true,
   "favLanguages": ["C++", "Javascript"],
   "address": {
      "town": "KAKINADA",
      "country": "Bhaarath"
   }
}
```

### main.cpp
```CPP
#include <base/FFJSON.h>

FFJSON obj("file://Employee.json");

cout << obj["name"] << endl;
cout << (int)obj["id"] << endl;
cout << obj["address"]["country"] << endl;
if (obj["isProgrammer"]) {
   # append new element to array
   obj["favLanguages"][obj["favLanguages"].size]="lisp";
   cout << obj["favLanguages"] << endl;
}
```

### output:
```
Gowtham
1729
Bhaarath
[
   "C++",
   "javascript",
   "lisp"
]
```

## Installation
```
git clone https://github.com/necktwi/FFJSON.git
cd FFJSON
make
sudo make install
```

## Linker option
`-lFFJSON`

- It got lot many cool features; look https://github.com/necktwi/FFJSON/blob/master/nbproject/tests/ffjsonTest.cpp
- FFJSON acronym is "FerryFairJSON"
