# Vimrc File

Vim setup for portability.

To use this vimrc file, you can do one of the following:

1. Replace `~/.vimrc` with the `vimrc` file in this repo.
2. Place the `vimrc` file from this repo in your `~/.vim` directory and remove your `~/.vimrc` file if there is one.
3. Set the `$MYVIMRC` environment variable to the location of vimrc in this repo. This can be done in your `.zshrc` or `.bash_profiles` file, for example.

If you want to copy the vimrc file in this directory to the `.vimrc` file in your home directory, you can do so by running `make update`. This will also create a backup of your old `.vimrc` file.  

## Development

Run `make fmt` to strip trailing whitespace form the vimrc file.

