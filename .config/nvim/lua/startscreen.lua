vim.cmd([[
  let g:startify_session_dir = '~/.config/nvim/session'
  let g:startify_custom_header = ""
  let g:startify_lists = [
    \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
    \ { 'type': 'sessions',  'header': ['   Sessions']       },
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
    \ { 'type': 'commands',  'header': ['   Commands']       },
    \ ]
  let g:startify_bookmarks = [ 
  \ {'t': '/home/ashok/t.md' },
  \ {'i': '~/.config/nvim/lua/init.lua' },
  \ {'p': '~/.config/nvim/lua/plugins.lua' },
  \ {'z': '~/.zshrc' },
  \ {'b': '~/.bashrc' }
  \ ]
  ]])
  -- let g:startify_custom_header =
  -- \ startify#pad(split(system('fortune'), '\n'))
  -- fortune
  -- let g:startify_custom_header =
  -- \ startify#pad(split(system('figlet -t -k Ashok'), '\n'))
  -- let g:startify_custom_header = [
  --   \'       █████  ███████ ██   ██  ██████  ██   ██ ',
  --   \'      ██   ██ ██      ██   ██ ██    ██ ██  ██  ',
  --   \'      ███████ ███████ ███████ ██    ██ █████   ',
  --   \'      ██   ██      ██ ██   ██ ██    ██ ██  ██  ',
  --   \'      ██   ██ ███████ ██   ██  ██████  ██   ██ ',
  --   \ ]
