execute pathogen#infect()
syntax on
"A colourscheme I have modified to have no colours. I find it much easier to work with.
"Only comments are different because they are a darker shade.
"If you haven't, you should at least try working without any coloured syntax highlighting.
set t_Co=256
colorscheme lucius
set bg=dark
"bunch of normal settings that don't really need explaining
set number
set autoindent
set cursorline
set ignorecase
set smartcase
set nocompatible
set showcmd
filetype on
set wildmenu
"I don't find this useful
"set relativenumber
set tabstop=4
set shiftwidth=4
set hidden
set incsearch
set wrap
"split long lines only on whitespace
set lbr
"Always show file name
set ls=2
set statusline+=%F

"Create braces like this: {
"	[cursor ends here]
"}
inoremap <C-[> {<CR>}<Esc>O<Tab><Esc>

"Syntastic
"syntastic seems to have trouble when you import crates, so I've disabled it
"let g:syntastic_rust_checkers = ['rustc']

"YouCompleteMe rust completion
let g:ycm_rust_src_path = '/home/lebronse/Programming/Rust/.rust_src/rust/src'

"Tab switching
noremap L gt
noremap H gT

"buffer switching
noremap : :bnext<CR>

"Save pressing shift when writing a command
noremap ; :

"Changelog navigation fix that was broken by [noremap ; :]
noremap g: g;

"<Esc> is evil
inoremap jh <esc>

"change leader
let mapleader=" "

"YouCompleteMe
"GoTo
nnoremap <C-]> :YcmCompleter GoTo<CR>
inoremap <C-]> <Esc>:YcmCompleter GoTo<CR>

"comfortable-motion. The smooth visual movement makes it easier to track
"your movements.
nnoremap <silent> J :call comfortable_motion#flick(150)<CR>
nnoremap <silent> K :call comfortable_motion#flick(-150)<CR>
let g:comfortable_motion_motion_friction = 400.0
let g:comfortable_motion_air_drag = 7.0

"vim-easy-motion
"Better search!
map f <Plug>(easymotion-sn)
omap f <Plug>(easymotion-tn)
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)
"Better navigation!
map l <Plug>(easymotion-lineforward)
map j <Plug>(easymotion-j)
map k <Plug>(easymotion-k)
map h <Plug>(easymotion-linebackward)
map W b
map E ge
"Allow normal navigation if needed
noremap <C-j> j
noremap <C-k> k
noremap <C-l> l
noremap <C-h> h
