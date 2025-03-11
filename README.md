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

### Editing
| ------------------------------------- | ----------------------------- |
| Action                                | Keys                          |
| comment the current line              | gcc                           |
| comment visual selection              | gc                            |

### Language Server Protocols
| ------------------------------------- | ----------------------------- |
| Install LSP Server for current file   | :LspInstallServer             |
| Uninstall LSP Server                  | :LspUninstallServer           |
| Goto Definition                       | gd or gD with cursor over def |
