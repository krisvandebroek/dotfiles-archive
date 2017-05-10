set nocompatible " not vi compatible

"--------------
" Load pathogen
"--------------
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

"------------------
" Syntax and indent
"------------------
syntax on " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them

" highlight current line, but only in active window
augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

" vim can autodetect this based on $TERM (e.g. 'xterm-256color')
" but it can be set to force 256 colors
" set t_Co=256
if &t_Co < 256
    colorscheme default
    set nocursorline " looks bad in this mode
else
    set background=dark
    let g:solarized_termcolors=256 " instead of 16 color with mapping in terminal
    colorscheme solarized
    " customized colors
    highlight SignColumn ctermbg=234
    highlight StatusLine cterm=bold ctermfg=245 ctermbg=235
    highlight StatusLineNC cterm=bold ctermfg=245 ctermbg=235
    let g:NeatStatusLine_color_normal='ctermfg=64 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_insert='ctermfg=136 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_replace='ctermfg=160 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_visual='ctermfg=33 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_position='ctermfg=245 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_modified='ctermfg=166 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_line='ctermfg=61 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_filetype='ctermfg=37 ctermbg=235 cterm=bold'
endif

filetype plugin indent on " enable file type detection
set autoindent

"---------------------
" Basic editing config
"---------------------
:set showcmd " Show commands while you are typing them
set nu " number lines
set rnu " relative line numbering
set incsearch " incremental search (as string is being typed)
set hls " highlight search
exec "set listchars=tab:>>,nbsp:~"
set lbr " line break
set ruler " show current position in file
set scrolloff=5 " show lines above and below cursor (when possible)
set laststatus=2
set backspace=indent,eol,start " allow backspacing over everything
set timeout timeoutlen=1000 ttimeoutlen=100 " fix slow O inserts
set autochdir " automatically set current directory to directory of last opened file
set history=8192 " more history
set tabstop=4 " Show tabs as 4 spaces
" smart case-sensitive search
set ignorecase
set smartcase
" tab completion for files/bufferss
set wildmode=longest,list
set wildmenu
set mouse+=a " enable mouse mode (scrolling, selection, etc)
if &term =~ '^screen'
   " tmux knows the extended mouse mode
   set ttymouse=xterm2
endif
set clipboard=unnamed " Fix clipboard in iTerm2 with Vim 4.3. Source: https://evertpot.com/osx-tmux-vim-copy-paste-clipboard/
"--------------------
" Misc configurations
"--------------------

" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" toggle nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>
" Set F5 as shortcut to togge Gundo
nnoremap <F5> :GundoToggle<CR>

" Disable arrow keys. Learn hjkl!
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap jj <ESC>
