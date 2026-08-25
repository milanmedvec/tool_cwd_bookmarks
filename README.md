# tool_cwd_bookmarks

Shell directory bookmark helper for saving and selecting frequently used working directories.

## Commands

- `cwd` - manage/select saved directories
- `shell/cwd.sh` - bash aliases/functions for integration

## Dependencies

Required shell:
- Bash

Required commands:
- `dialog`

Optional commands:
- `fzf` - used by the `cdi` shell helper

The executable scripts call `need` for required commands before using them.

## Install

```bash
./install.sh
```

Install to a custom prefix:

```bash
PREFIX="$HOME/.local" ./install.sh
```

## Usage

```bash
cwd add
cwd
source ~/.local/share/tool_cwd_bookmarks/shell/cwd.sh
```

## Configuration

- Data is stored under `$HOME/.local/share/cwd`.

## Notes

These scripts were extracted from a personal Arch Linux + i3 workspace. Review dependencies and paths before using them on another machine.
