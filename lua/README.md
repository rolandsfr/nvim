## Getting started (MAC OS Oriented)

### Prerequisites

1. Install neo vim itself

```
brew install neovim
```

2. Install Iterm2 for better color support

3. Install Packer 

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.neovim
```

4. LSP servers

4.1. Typescript

```
npm i -g typescript typescript-language-server
```

4.1. Lua 
```
brew install lua-language-server
```
    

### Initializing packages

To install all packages, 
Go to lua/roly/packer.lua and run `:so`, then `:PackerSync`

After that, shout out all the setup files by running `:so` in init.lua



