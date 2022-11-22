" カーソル移動
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

" 行番号を表示
set number

" 検索結果をハイライト表示
set hlsearch

" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect

" カーソル位置をハイライト
set cursorline

" インクリメントサーチ
set incsearch

" 行追加時に自動インデント
set smartindent

" jjでノーマルモードに抜ける
inoremap jj <ESC>
inoremap kk <ESC>

" TABでインデント
nnoremap <Tab> >>
nnoremap <Space><Tab> <<

" <Space>s で置換
nnoremap <Space>s :%s/

" <Space>i でコードをインデント整形
nnoremap <Space>i gg=<S-g>

" <Space><Space>で上書き保存
nnoremap <Space><Space> :w<CR>

" <Space>jjで上書きして閉じる
nnoremap <Space>jj :wq<CR>

" ctrl+Aで全選択
nnoremap <C-a> gg<S-v>G

" cdxをヤンクしない
nnoremap c "_c
vnoremap c "_c
nnoremap d "_d
vnoremap d "_d
nnoremap x "_x
vnoremap x "_x

" 数字のインクリメント
nnoremap <Up> <C-a>
nnoremap <Down> <C-x>
