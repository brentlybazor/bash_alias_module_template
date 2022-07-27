# Bash Alias Template

This template is set up to allow someone to create custom aliases inside their local terminal.

## Description
There are 2 types of aliases that can be created in this template. (examples in `general-aliases.sh`)

## Setup
1. Download the files into a directory on your local machine.
2. If you need to add secret variables to your template (like a private key or token), create a `local.variables.sh` file.
3. Inside the variables files (`local.variables.sh` or `variables.sh`) add any variable that can be used by your system. (Variables can be used to save a file or folder path for use in the aliases.)


## Adding New Aliases
1. Create a new file in the root directoy with a `.sh` ending. (by default this template will allow a `custom_aliases.sh` that will be ignored by a git commit) (All new `*.sh` file will be automatically added to the register for aliases.
2. Create a new alias in any `*.sh` file to add it to the alias list. The alias string option allows a text substitution, where as the alias function allows for programmatic changes when the alias is used.


## Extras
- For the aliases to get register in the system, you need to source your changed using `source index.sh`
- Another way to do this is to create a source alias function (`"custom-source = source [insert template path]/index.sh"`)
- If you want to truly customize this for your who machine, edit `~/.bashrc` (or `~/.zshrc` on Mac/Linux is zsh is used) and add `"mysource = source [insert template path]/index.sh"` (or your prefered alias name) so that it can update all of your aliases.
- All variable inside `local.variables.sh` will override the variables inside `variables.sh
