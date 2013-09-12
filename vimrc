"*************************************************************************** 
" This is configure file is mostly based on the famous chinese guy Yin Wang's
" blog post about how to cofigure vim as a IDE, all the packages included in
" his blog post is including in this conf file. the url is :
" http://blog.csdn.net/wooin/article/details/1858917
"*************************************************************************** 
"contents:
" 1. basic settings
" 2. Winmanager configurations
" 3. Ctags configurations
" 4. Taglist configurations
" 5. Cscope configurations
" 6. latex configurations
" 7. Others

" Author: Rui Han
" Email: iurnah@gmail.com
"*************************************************************************** 

" 1. basic settings
set nocompatible " not compatible with vi 

set number "this is to show the line number

set guifont=Courier\ New\ 11 " set the default font

" set guioptions-=m "remove menual bar

" set guioptions-=T "remove toolbar

set guioptions-=r "remove right-hand scroll bar

set textwidth=80  "screen in 80 columns wide

set tabstop=4 "tab = 4 char

set softtabstop=4 "softtabstop = 4

colorscheme desert

" key binding for buffer switch
nnoremap <F5> :buffer<CR>:buffer<Space>

" default window size
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=40 columns=100
else
  " This is console Vim.
  if exists("+lines")
    set lines=40
  endif
  if exists("+columns")
    set columns=100
  endif
endif

" 2. Winmanager configurations
let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|TagList'
nmap wm :WMToggle<cr>

" 3. Ctags configurations    
set tags=/home/rui/s2e/s2e/tags " set the project tags

" 4. Taglist configurations 
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" 5. Cscope configurations
:set cscopequickfix=s-,c-,d-,i-,t-,e-
:cs add /home/rui/s2e/s2e/cscope.out /home/rui/s2e/s2e

" 6. LaTex configurations
"REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" 7. Others
" for bcpl highlighting
" http://rabbit.eng.miami.edu/students/gsalles/
autocmd BufRead,BufNewFile *.b set syntax=bcpl
