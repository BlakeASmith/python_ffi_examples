## `ctypes`


### Overview

`ctypes` comes built into python and enables creating python bindings to C functions.

https://docs.python.org/3/library/ctypes.html


### First Impressions

#### Pros

- Built into python with no additional installs required
- Seems to be the officially reccomended approach
- Quite simple to use

#### Cons

- Some concers about performance as compared to other options as it requires linking with the C libraries at run-time instead of in a build step
- Python classes linked to C structs do not have type hints, and your LSP (pyright at-least) cannot infer the types. 
    - You can get around this by wrapping the c functions in python functions and adding `#type: ignore[Any]` comments where needed, but this is a pain and there might be performance overhead for having the python wrapper function. 
