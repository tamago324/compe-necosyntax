if exists('g:loaded_compe') && has('nvim')
  lua require'compe'.register_source('necosyntax', require'compe_necosyntax')
endif
