# Vimrc File

Vim setup for portability.

To use this vimrc file, you can do one of the following:

1. Replace `~/.vimrc` with the `vimrc` file in this repo.
2. Place the `vimrc` file from this repo in your `~/.vim` directory and remove your `~/.vimrc` file if there is one.
3. Set the `$MYVIMRC` environment variable to the location of vimrc in this repo. This can be done in your `.zshrc` or `.bash_profiles` file, for example.

If you want to copy the vimrc file in this directory to the `.vimrc` file in your home directory, you can do so by running `make update`. This will also create a backup of your old `.vimrc` file.  

## Development

Run `make fmt` to strip trailing whitespace from files.

## Command Cheatsheat

### Code Navigation

| Action                                | Keys                          |
| ------------------------------------- | ----------------------------- |
| Toggle the current Fold               | space                         |
| Open All Folds                        | z + R                         |
| Close All Folds                       | z + M                         |
| Move Left One Window                  | ctrl + h                      |
| Move Down One Window                  | ctrl + j                      |
| Move Up One Window                    | ctrl + k                      |
| Move Right One Window                 | ctrl + l                      |
| Move out of the terminal window       | ctrl-w + k                    |
| Search for some text in this file     | :/<search-term>               | 
| Go back in location history           | ctrl + o                      |
| Go forward in location history        | ctrl + i                      |
| 

### Editing

| Action                                | Keys                          |
| ------------------------------------- | ----------------------------- |
| comment the current line              | gcc                           |
| comment visual selection              | gc                            |

### Language Server Protocols

| Action                                | Keys                          |
| ------------------------------------- | ----------------------------- |
| Install LSP Server for current file   | :LspInstallServer             |
| Uninstall LSP Server                  | :LspUninstallServer           |
| Goto Definition                       | gd or gD with cursor over def |

### Clojure

| Action                                | Keys                          |
| ------------------------------------- | ----------------------------- |
| Get symbol definition from docs       | K with cursor over symbol     |
| Run visual seletion                   | :Eval                         |

### Python

| Action                                | Keys                                           |
| ------------------------------------- | ---------------------------------------------- |
| Show completions                      | ctrl + space                                   |
| Show docstring for symbol             | shift + k                                      |
| Goto definition                       | <leader> + d                                   |
| Goto assignment                       | <leader> + g                                   |
| Goto stub (package definition)        | <leader> + s                                   |
| Set jedi interpreter to venv          | :let g:jedi#environment_path="venv/bin/python" |


### Macros

1. Press `qa` to start recording. Can replace `a` with a different character to record to a different register.
1. Type your command. If it is line by line, make sure to add `j` at the end of the commands to go to the next line.
1. Press `q` to stop recording.
1. Replay the macro with `@a`. Replace `a` with the register used if necessary.
    - you can replay the macro again with `@@` or repeat it multiple times with `10@a`.

