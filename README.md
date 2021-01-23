# compe-necosyntax

[neco-syntax](https://github.com/Shougo/neco-syntax) completion source for [nvim-compe](https://github.com/hrsh7th/nvim-compe)

## Requirements

* [Neovim](https://github.com/neovim/neovim/)
* [nvim-compe](https://github.com/hrsh7th/nvim-compe)
* [neco-syntax](https://github.com/Shougo/neco-syntax)


## Installation

```vim
Plug 'hrsh7th/nvim-compe'
Plug 'tamago324/compe-necosyntax'
Plug 'Shougo/neco-syntax'


lua << EOF
require'compe'.setup {
  -- ...
  source = {
    -- ...
    necosyntax = { filetypes = {'make'} },
  }
}
EOF
```


## License

MIT
