call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'

call plug#end()


syntax on
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
set ruler
set hlsearch
set number
set relativenumber
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '\.swp$']
set runtimepath^=~/.vim/bundle/ctrlp.vim
set list
set listchars=tab:>-
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set colorcolumn=88
highlight ColorColumn ctermbg=red
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>:
nnoremap ü :cprevious<CR>
nnoremap ä :cnext<CR>
nnoremap Ü :lprevious<CR>
nnoremap Ä :lnext<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap K <C-y>
nnoremap J <C-e>
nnoremap Y J
noremap H L
noremap L H
noremap v V
noremap V v
nnoremap , ;
nnoremap ; ,
nnoremap <Space>j o<Esc>
nnoremap <Space>k O<Esc>
noremap ß $
imap jk <Esc>
cnoremap jk <C-C><Esc>
nnoremap gb :ls<CR>:b<Space>
set hidden
nnoremap gn :NERDTreeToggle<CR>
set autoindent
inoremap "" ""<left>
inoremap '' ''<left>
inoremap (( ()<left>
inoremap [[ []<left>
inoremap {{ {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap (<CR> (<CR>)<ESC>O
inoremap [<CR> [<CR>]<ESC>O
let mapleader = "ö"
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
nnoremap <Leader>f :vim /<C-r><C-w>/ ** \| copen<CR>
nnoremap <Leader>g :vim // ** \| copen<Home><Right><Right><Right><Right><Right>
nnoremap <Leader>k ciw<C-r>0<Esc>
nnoremap <Leader>l yiw
nnoremap <Leader>ö :
nnoremap <Leader>w :w
nnoremap <Leader>q :q<CR>
nnoremap <Leader>e :e
nnoremap <Leader>h <C-6>
nnoremap <Leader>j :cclose<CR>
nnoremap <Leader>J :lclose<CR>
vnoremap <Leader>j <C-c>
let g:ctrlp_working_path_mode = 'rwa'
let g:pymode_options_max_line_length = 88
let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_doc = 0
let g:pymode_doc_bind = ''
"let g:pymode_options_colorcolumn = 1
"let g:pymode_rope = 1
"let g:pymode_rope_completion = 1
"let g:pymode_rope_completion_bind = '<C-Space>'
"let g:pymode_rope_project_root = "/Users/lee/Documents"
map <Space> <Plug>(easymotion-prefix)
