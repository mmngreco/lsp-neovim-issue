call plug#begin()

Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }

call plug#end()

let g:python3_host_prog = $PYTHON_NEOVIM
let g:python_host_prog = $PYTHON_NEOVIM

" ===== LSP neovim
let g:LanguageClient_serverCommands = {
    \ 'python': ['/home/mgreco/miniconda3/envs/neovim/bin/pyls'],
    \ }
let g:LanguageClient_autoStart = 1
let g:LanguageClient_loggingFile =  expand('~/.local/share/nvim/LanguageClient.log')
let g:LanguageClient_serverStderr = expand('~/.local/share/nvim/LanguageServer.log')
let g:LanguageClient_settingsPath = '~/.config/nvim/settings.json'

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>

