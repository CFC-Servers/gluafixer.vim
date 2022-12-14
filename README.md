# gluafixer.vim
[ALE](https://github.com/dense-analysis/ale) Linter for Gmod Lua.

Uses Falco's [GLuaFixer](https://github.com/FPtje/GLuaFixer)

## Installation

### ALE
Install the [ALE Vim plugin](https://github.com/dense-analysis/ale)

### GLuaFixer
You'll need to have the GLuaFixer executable in your path somewhere.

The easiest way to do this is to download the Latest GLuaFixer release for your system and put it in your path (such that calling `glualint` calls the gluafixer executable).

On Linux, this looks something like:
```sh
curl -LO https://github.com/FPtje/GLuaFixer/releases/download/1.21.1/glualint-1.21.1-linux.zip;
unzip glualint-1.21.1-linux.zip;
sudo mv glualint /usr/bin/;
sudo chown root:root /usr/bin/glualint;
```

You can find more instructions on the [GLuaFixer](https://github.com/FPtje/GLuaFixer) repo description.

### gluafixer.vim plugin
Install using your favorite package manager, or use Vim's built-in package support:
```
mkdir -p ~/.vim/pack/brandonsturgeon/start
cd ~/.vim/pack/brandonsturgeon/start
git clone https://github.com/CFC-Servers/gluafixer.vim.git
```

## Configuration
Because this plugin just calls `glualint`, it respects all of GLuaFixer's config options.

You can read more about the individual options and config files on the [GLuaFixer repo](https://github.com/FPtje/GLuaFixer).
