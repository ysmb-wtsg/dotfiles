" settings
set number
set hlsearch
set cursorline
set incsearch
set smartindent
set ignorecase
set smartcase
syntax on

" keymaps
" cusor
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <S-j> <C-d>
nnoremap <S-k> <C-u>
vnoremap <S-j> <C-d>
vnoremap <S-k> <C-u>
nnoremap <S-h> g^
nnoremap <S-l> g$
vnoremap <S-h> g^
vnoremap <S-l> g$

" mode
inoremap jj <ESC>
inoremap kk <ESC>

" indent
nnoremap <Tab> >>
nnoremap <Space><Tab> <<
vnoremap <Tab> >gv
vnoremap <Space><Tab> <gv

" search
nnoremap <Space>s :%s/

" format
nnoremap <Space>i gg=<S-g>

" file action
nnoremap <Space>w :w<CR>
nnoremap <Space>q :q<CR>
nnoremap <Space>fq :q!<CR>
nnoremap <Space>jj :wq<CR>

" selection
nnoremap <C-a> gg<S-v>G

" calc
nnoremap <Space>+ <C-a>
nnoremap <Space>- <C-x>

" highlight
nnoremap <Space>nh :noh

" yank
nnoremap x "_x

" mainly for markdown
inoremap っj <ESC>
inoremap ｊｊ <ESC>
inoremap ーー -<Space>
inoremap ” "
inoremap １。 1.<space>
inoremap １。 1.<space>
inoremap ２。 2.<space>
inoremap ３。 3.<space>
inoremap ４。 4.<space>
inoremap ５。 5.<space>
inoremap 「」 []()<Left><Left><Left>
inoremap ＞ >
inoremap ｀ `
inoremap ＊ *
inoremap 〜 ~
inoremap ｜ |
inoremap ： :
inoremap ； :
