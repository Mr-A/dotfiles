  " Basics {
     set nocompatible       " explicitly get out of vi-compatible mode
     set background=dark    " we plan to use a dark background
     syntax on              " syntax highlighting on
  " }
 
  " Vundle Setting {
     filetype off                       " required by vundle

     set rtp+=~/.vim/bundle/vundle/
     call vundle#rc()
     " let Vundle manage Vundle
     " required!
     Bundle 'gmarik/vundle'
     " My Bundles here:
     "
     " original repos on github
     Bundle 'tpope/vim-fugitive'
     Bundle 'Lokaltog/vim-easymotion'
     Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
     Bundle 'tpope/vim-rails.git'
     Bundle 'ervandew/supertab'
     " vim-scripts repos
     Bundle 'The-NERD-tree'
     Bundle 'L9'
     Bundle 'FuzzyFinder'
     " non github repos
     Bundle 'git://git.wincent.com/command-t.git'
     "
  " }
 
  " General {
     filetype plugin indent on          " load filetype plugins and indent settings
     set autochdir                      " always switch to the current directory of the file you are editing
     set autoread                       " set to auto read when a file is changed from the outside
     set backspace=indent,eol,start     " make backspace a little more flexible
     set backup                         " make backup files
     set backupdir=~/.vim/backup        " where to put backup files
     set clipboard+=unnamed             " share windows clipboard
     set directory=~/.vim/tmp           " directory to place swap files in
     set fileformats=unix,dos,mac       " support all three, in this order
     set hidden                         " you can change buffers without saving
     set history=700                    " set how many lines of history VIM has to remember
     set iskeyword+=_,$,@,%,#           " none of these are word dividers
     set mouse=a                        " use mouse everywhere
     set noerrorbells                   " don't make noise
     set whichwrap=b,s,h,l,<,>,~,[,]    " everything wraps
     set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.swp,*.jpg,*.gif,*.png " ignore these
     set wildmenu                       " turn on command line completion
     set wildmode=list:longest          " turn on wild menu with very large list
     let mapleader=","                  " define <leader>
     let g:mapleader=","                " define <leader>
     set encoding=utf-8                 " to show Chinese
     set fileencoding=utf-8             " to show Chinese
     set fileencodings=ucs-bom,utf-8,prc " to show Chinese
  " }
 
  " Vim UI {
     colorscheme evening        " default for console (over-ridden when GUI used)
     set cursorcolumn           " highlight the current column
     set cursorline             " highlight current line
     set incsearch              " BUT do highlight as you type you search phrase
     set laststatus=2           " always show the status line
     set lazyredraw             " do not redraw while running macros
     set linespace=0            " don't insert any extra pixel lines betweens rows
     set list                   " we do what to show tabs, to ensure we get them out of my files
     set listchars=tab:>-,trail:- " show tabs and trailing whitespace
     set matchtime=5            " how many tenths of a second to blink matching brackets for
     set nohlsearch             " do not highlight searched for phrases
     set nostartofline          " leave my cursor where it was
     set novisualbell           " don't blink
     set number                 " turn on line numbers
     set numberwidth=5          " We are good up to 99999 lines
     set report=0               " tell us when anything is changed via :...
     set ruler                  " Always show current positions along the bottom
     set scrolloff=10           " Keep 5 lines (top/bottom) for scope
     set shortmess=atI          " shortens messages to avoid 'press a key' prompt
     set showcmd                " show the command being typed
     set showmatch              " show matching brackets
     set sidescrolloff=10       " Keep 5 lines at the size
     " statusline demo: ~\myfile[+] [FORMAT=format] [TYPE=type] [ASCII=000] [HEX=00] [POS=0000,0000][00%] [LEN=000]
     set statusline=
     set statusline+=%F%m%r%h%w\ 
     set statusline+=[FORMAT=%{&ff}]\ 
     set statusline+=[TYPE=%Y]\ 
     set statusline+=[ASCII=\%03.3b]\ 
     set statusline+=[HEX=\%02.2B]\ 
     set statusline+=[POS=%04l,%04v][%p%%]\ 
     set statusline+=[LEN=%L]
  " }
 
  " Text Formatting/Layout {
     set completeopt=menu,longest   " improve the way autocomplete works
     set expandtab                  " no real tabs please!
     set formatoptions=rq           " Automatically insert comment leader on return, and let gq work
     set ignorecase                 " case insensitive by default
     set nowrap                     " do not wrap line
     set shiftround                 " when at 3 spaces, and I hit > ... go to 4, not 5
     set smartcase                  " if there are caps, go case-sensitive
     " Indent Related {
        set shiftwidth=4            " unify
        set softtabstop=4           " unify
        set tabstop=4               " real tabs should be 4, but they will show with set list on
     " }
  " }
 
  " Folding {
     set foldenable                 " Turn on folding
     set foldmarker={,}             " Fold C style code (useful with high foldlevel)
     set foldmethod=marker          " Fold on the marker
     set foldlevel=100              " Don't autofold anything (but I can still fold manually)
     set foldopen=block,hor,mark,percent,quickfix,tag " what movements to open folds on
     function SimpleFoldText() " {
        return getline(v:foldstart).' '
     endfunction " }
     set foldtext=SimpleFoldText()  " Custom fold text function (cleaner than default)
  " }
 
  " Plugin Settings {
     let b:match_ignorecase = 1     " case is stupid
     let perl_extended_vars=1       " highlight advanced perl vars inside strings
 
     " Cscope maping
        "nmap <C-@><C-@> :cs find s <C-R>=expand("<cword>")<CR><CR>
     " TagList Settings {
        set tags=tags;
        let Tlist_Auto_Open=0               " let the tag list open automagically
        let Tlist_Compact_Format = 1        " show small menu
        let Tlist_Ctags_Cmd = 'ctags'       " location of ctags
        let Tlist_Enable_Fold_Column = 0    " do show folding tree
        let Tlist_Exist_OnlyWindow = 1      " if you are the last, kill yourself
        let Tlist_File_Fold_Auto_Close = 1  " fold closed other trees
        let Tlist_Sort_Type = "name"        " order by
        let Tlist_Use_Right_Window = 1      " split to the right side of the screen
        let Tlist_WinWidth = 20             " 20 cols wide, 30/40 are too wide for now
        " Langauge Specifics {
           let tlist_aspjscript_settings = 'asp;f:function;c:class'     " functions/classes
           let tlist_aspvbs_settings = 'asp;f:function;s:sub'           " functions/subs
           let tlist_php_settings = 'php;c:class;d:constant;f:function' " no variables
           let tlist_vb_settings = 'asp;f:function;c:class'             " functions/classes
        " }
    " }
  " }

  " Mappings {
      map <F12> ggVGg?
      map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
    " map <C-F12> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
      noremap <S-space> <C-b>
      noremap <space> <C-f>
      nmap <leader>w :w!<cr>
      nmap <leader>e :e! ~/.vimrc<cr>
   " For c-support
      map <silent> <F7>     <Esc>:cprevious<CR>
      map <silent> <F8>     <Esc>:cnext<CR>

   " Make Arrow Keys Useful {
      map <down> <ESC>:bn<RETURN> 
      map <left> <ESC>:NERDTreeToggle<RETURN>
      map <right> <ESC>:Tlist<RETURN>
      map <up> <ESC>:bp<RETURN>
   " }
  " }

  " Autocommands {
    au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=2     " ruby standard 2 spaces, always
    au BufRead,BufNewFile *.rb,*.rhtml set softtabstop=2    " ...
    au BufRead,BufNewFile *.rb,*.rhtml set tabstop=2        " ...
    au BufRead,BufNewFile *.go set filetype=go              " GO Lang
    " Notes {
       " I consider .notes files special, and handle them differently
       au BufRead,BufNewFile *.notes set foldlevel=1
       au BufRead,BufNewFile *.notes set foldmethod=indent
       au BufRead,BufNewFile *.notes set foldtext=foldtext()
       au BufRead,BufNewFile *.notes set listchars=tab:\ \
       au BufRead,BufNewFile *.notes set noexpandtab
       au BufRead,BufNewFile *.notes set shiftwidth=1
       au BufRead,BufNewFile *.notes set softtabstop=1
       au BufRead,BufNewFile *.notes set syntax=notes
       au BufRead,BufNewFile *.notes set tabstop=1
     " }
  " }

