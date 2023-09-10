require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
      "bash",
      "fish",
      "dot",
      "dockerfile",
      "php", 
      "phpdoc", 
      "javascript", 
      "vue",
      "json",
      "markdown",
      "html", 
      "css", 
      "lua",
      "yaml",
      "vim",
  },

  autotag = {
    enable = true
  },

  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  }
}

