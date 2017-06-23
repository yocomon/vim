filetype plugin on

set ic hls is

set keymap=russian-jcukenwin
set iminsert=0

set laststatus=2

set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab

syntax on
colorscheme cobalt

set showcmd

set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P

set fileencodings=utf-8,cp1251,koi8-r,cp866

function MyKeyMapHighlight()
    if &iminsert == 0
        hi StatusLine ctermfg=DarkBlue guifg=DarkBlue
    else
        hi StatusLine ctermfg=DarkGreen guifg=DarkGreen
    endif
endfunction

call MyKeyMapHighlight()

au WinEnter * :call MyKeyMapHighlight()
cmap <silent> <C-F> <C-^>
imap <silent> <C-F> <C-^>X<Esc>:call MyKeyMapHighlight()<CR>a<C-H>
nmap <silent> <C-F> a<C-^><Esc>:call MyKeyMapHighlight()<CR>
vmap <silent> <C-F> <Esc>a<C-^><Esc>:call MyKeyMapHighlight()<CR>gv

au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl set filetype=glsl

autocmd FileType make setlocal noexpandtab
