# floaty

A Neovim plugin to easily create and manage floating windows.

## Usage

The `open` function accepts either a string or a table.

```lua
require("floaty").open("Hello, world!")
```

```lua
require("floaty").open({ "Hello,", "world!" })
```

The `file` function accepts a path.

```lua
require("floaty").file("~/Notes/scratch.md")
```
