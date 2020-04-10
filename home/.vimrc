" Init
" {{{
  "Init Vundle
  " {{{
      filetype off                  " required

      " set the runtime path to include Vundle and initialize
      set rtp+=~/.vim/bundle/Vundle.vim
      call vundle#begin()
      " alternatively, pass a path where Vundle should install plugins

      " let Vundle manage Vundle, required
      Bundle 'VundleVim/Vundle.vim'
      Bundle 'mattn/emmet-vim'
      Bundle 'scrooloose/nerdcommenter'
      Bundle 'scrooloose/nerdtree'
      Bundle 'ybian/smartim'
      Bundle 'scrooloose/syntastic'
      Bundle 'MarcWeber/vim-addon-mw-utils'
      Bundle 'jistr/vim-nerdtree-tabs'
      Bundle 'tpope/vim-commentary'
      Bundle 'tpope/vim-endwise'
      Bundle 'tpope/vim-surround'
      Bundle 'tpope/vim-fugitive'
      Bundle 'tpope/vim-repeat'
      Bundle 'itchyny/lightline.vim'
      Bundle 'jiangmiao/auto-pairs'
      Bundle 'elzr/vim-json'
      Bundle 'junegunn/goyo.vim'
      Bundle 'rking/ag.vim'
      Bundle 'pangloss/vim-javascript'
      Bundle 'tpope/vim-haml'
      Bundle 'tpope/vim-cucumber'
      Bundle 'majutsushi/tagbar'
      Bundle 'vim-scripts/matchit.zip'
      Bundle 'terryma/vim-expand-region'
      Bundle 'nathanaelkane/vim-indent-guides'
      Bundle 'kana/vim-textobj-user'
      Bundle 'austintaylor/vim-indentobject'
      Bundle 'lucapette/vim-textobj-underscore'
      Bundle 'tpope/vim-dispatch'
      Bundle 'wting/rust.vim'
      Bundle 'mxw/vim-jsx'
      Bundle "tomtom/tlib_vim"
      Bundle "SirVer/ultisnips"
      Bundle 'honza/vim-snippets'
      Bundle 'kien/ctrlp.vim'
      Bundle 'AndrewRadev/splitjoin.vim'
      Bundle 'nikvdp/ejs-syntax'
      Bundle 'godlygeek/tabular'
      Bundle 'plasticboy/vim-markdown'
      Bundle 'lfilho/cosco.vim'
      Bundle 'dracula/vim'
      Bundle 'leafgarland/typescript-vim'
      Bundle 'ianks/vim-tsx'
      Bundle 'posva/vim-vue'
      Bundle 'epilande/vim-react-snippets'
      Bundle 'Galooshi/vim-import-js'
      Bundle 'chemzqm/wxapp.vim'
      Bundle 'prettier/vim-prettier'
      Bundle 'janko/vim-test'
      Bundle 'jhkersul/vim-jest-snippets'
      Bundle 'mg979/vim-visual-multi'
      Bundle 'Shougo/deoplete.nvim'
      Bundle 'roxma/nvim-yarp'
      Bundle 'roxma/vim-hug-neovim-rpc'
      "plugin

      call vundle#end()            " required
      filetype plugin indent on    " required
  " }}}
  set shell=/bin/zsh
  set nocompatible
  set hidden
  syntax on
  set encoding=utf-8
  set clipboard=unnamed
" }}}
  runtime macros/matchit.vim
" Settings
" {{{
"   Basic {{{
      augroup reload_vimrc " {
        autocmd!
        autocmd BufWritePost $MYVIMRC source $MYVIMRC
      augroup END " }

      set backspace=indent,eol,start " make backspace a more flexible
      let loaded_matchparen=1 " match paranthesis
      set backup " create backup
      set backupdir=~/.vim/tmp/backup " where to put backup files
      set directory=~/.vim/tmp/swap " directory to place swap files in
      "set undodir=~/.vim/tmp/undo " directory to place undo files in
      "set undofile " create undo file
      set mouse=a " use mouse for everything
      set equalalways " split windows equally
      set splitright splitbelow " new splits right from current and other below
      set autoread " supress warnings
      set wildmenu " wildmenu when autocomplting option
      set wildmode=full " complete the full match, this is default behaviour
      set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png " there files will be ignored when completing in wild menu
      " set clipboard+=unnamed,unnamedplus,autoselect " share clipboard
      set history=1000
      set tags=.tags;/ " save tags generated for files in current working directory
      set ttyfast " i got a fast terminal!
      set ttimeoutlen=50  " Make Esc work faster
      set timeoutlen=200 " Make Leader work faster

    " }}}

    " UI {{{
      set background=dark
      colorscheme dracula "colorsbox-material Color scheme

      set nowrap
      set shiftround " round the indent to shiftwidth (when at 3 spaces, and I hit > go to 4, not 5)
      set autoindent
      set infercase " case inferred by default, used for autocompletition in insert mode and so on..
      set t_Co=256

      set ignorecase " ignore case when searching
      set hlsearch   " highlight search matches
      set incsearch " search as you type
      set gdefault  " global matching is default
      set smartcase " use smartcase, when search query starts with Uppercase, turn off case insensitive search

      "set list " show trailing characters
      "set listchars=tab:▸\ ,trail:¬,extends:❯,precedes:❮,nbsp:~ " it show ¬ character when as you type, fill free to comment out set list

      set number " set line numbering
      set novisualbell " do not blink
      set lazyredraw " get faster, redraw only when it's needed
      set nostartofline
      set linespace=0
      let c_no_trail_space_error = 1 " see c errors
      let java_space_errors = 1 " see java errors
      set showcmd " show the command being typed
      set ruler " always show current position
      set scrolloff=5 " Keep 5 lines (top/bottom) for scop
      set sidescrolloff=10 " Keep 10 lines at the size
      set showmode " show the current mode (Insert, Visual..)

      set expandtab " no real tabs!
      set wrap " wrap lines, we dont want long lines
      set showbreak=↪ " character show when wrapping line

      " set foldenable " folding text into clusters (+) according to  {{{ }}} or comments for example.
      " set foldmethod=manual " default options, we create fold manually.
      set fdm=indent
      set showmatch " when use insert bracket, briefly jump to matching one (i like it, but i might be annoying)

      set infercase " case inferred by default
      set shiftround " round the indent to shiftwidth (when at 3 spaces, and I hit > go to 4, not 5)
      set shiftwidth=2 " auto-indent amount when using >> <<
      set softtabstop=2 " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
      set tabstop=2 " real tabs should be 4, and they will show with set list on

      set completeopt=longest,menu,preview
      " }}}

      " React.js
      let g:jsx_ext_required = 0 " Allow JSX in normal JS files"
      " let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

    " Advanced macros
    " {{{

      " Cursor highlight
      " :hi CursorLine   cterm=NONE ctermbg=8
      :hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white
      set cursorline

      "improve autocomplete menu color
      highlight Pmenu ctermbg=238
      " }}}
      "

      " Removes trailing spaces
      function! TrimWhiteSpace()
        if !&binary && &filetype != 'diff'
          normal mz
          normal Hmy
          %s/^\s\+$//e
          normal 'yz<CR>
          normal `z
        endif
      endfunction

      " Filter and trim whitespaces
      autocmd FileWritePre * :call TrimWhiteSpace()
      autocmd FileAppendPre * :call TrimWhiteSpace()
      autocmd FilterWritePre * :call TrimWhiteSpace()
      autocmd BufWritePre * :call TrimWhiteSpace()

      " Use relative numbering in insert mode
      autocmd InsertEnter * :set relativenumber
      autocmd InsertLeave * :set number

    "}}}

    " Binding
    " {{{
    " Map leader
      let mapleader = "\<Space>" " used for lot of stuff, feel free to change it.
      inoremap <leader><leader> <ESC>

      " Open all folds
      nnoremap <space> :%foldopen<CR>

      nnoremap <leader>q :q<CR>
      nnoremap <leader>w :w<CR>
      nnoremap <leader>x :x<CR>
      nnoremap <Leader>qq :q!<CR>

      " Quickly edit/reload the vimrc file
      nmap <silent> <leader>ev :e $MYVIMRC<CR>
      nmap <silent> <leader>so :so $MYVIMRC<CR>

      " convenient window switching
      map <C-h> <C-w>h
      map <C-j> <C-w>j
      map <C-k> <C-w>k
      map <C-l> <C-w>l

      " jump to end of line in insert mode
      inoremap <C-e> <C-o>$

      " open horizontal  split and switch to it
      nnoremap <leader>h :split<CR>

      " run ctags silently
      map <leader>g :Dispatch ctags -R . &<CR>

      " reformat whole file
      nnoremap <leader>= ggVG=

      " use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
      " (it will prompt for sudo password when writing)
      cmap w!! %!sudo tee > /dev/null %

      " upper/lower word
      nmap <leader>uc mQviwU`Q
      nmap <leader>lc mQviwu`Q

      " upper/lower first char of word
      nmap <leader>wu mQgewvU`Q
      nmap <leader>wl mQgewvu`Q

      " Swap two words
      nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

      " Map the arrow keys to be based on display lines, not physical lines
      map <Down> gj
      map <Up> gk

      " expand region
      vmap v <Plug>(expand_region_expand)
      "vmap <C-v> <Plug>(expand_region_shrink)
   " }}}

    " Filetypes
    " {{{

      " HTML, XML {{{
      augroup FTHtml
        au!
        autocmd FileType html,xhtml,wml,cf      setlocal ai et sta sw=2 sts=2 " set indent size and stuff
        autocmd FileType xml,xsd,xslt           setlocal ai et sta sw=2 sts=2 ts=2
        autocmd FileType html setlocal iskeyword+=~

      augroup END

      " CSS, SCSS {{{
      augroup FTCss
        au!
        au BufRead,BufNewFile *.scss.erb set ft=scss  " when erb-ing sccs, use scss code highlighting
        autocmd FileType css,scss  silent! setlocal omnifunc=csscomplete#CompleteCSS " autocomplete function
        autocmd FileType css,scss  setlocal iskeyword+=-
        autocmd FileType css,scss   setlocal ai et sta sw=2 sts=2
      augroup END
      " }}}

      " }}}
      " Ruby {{{
      augroup FTRuby
        au!
        autocmd FileType eruby,yaml,ruby        setlocal ai et sta sw=2 sts=2
        autocmd BufNewFile,BufRead *.html.erb   set filetype=eruby.html  " load html snippets along with erb
        autocmd FileType ruby,eruby             let g:rubycomplete_rails = 1
        autocmd FileType ruby,eruby             let g:rubycomplete_classes_in_global=1
        autocmd FileType ruby,eruby             let g:rubycomplete_buffer_loading = 1
      augroup END
      " }}}

      augroup C
        au!
        ""autocmd FileType c,cpp,h,hpp     colorscheme molokai
      augroup END

      " Git {{{
      augroup FTGit
        au!
        autocmd FileType git,gitcommit setlocal foldmethod=syntax foldlevel=1
        autocmd FileType gitcommit setlocal spell
      augroup END
      " }}}

      inoremap <leader>; <C-o>A;


    " }}}

    " Plugins
    " {{{

      " Html5 plugin
      " {{{
      let g:html5_event_handler_attributes_complete = 0
      let g:html5_rdfa_attributes_complete = 0
      let g:html5_microdata_attributes_complete = 0
      let g:html5_aria_attributes_complete = 0
      " }}}
      "

      imap <expr> <leader><tab> emmet#expandAbbrIntelligent("\<tab>")

      " vim-javascript
      " {{{
      let g:html_indent_inctags = "html,body,head,tbody"
      let g:html_indent_script1 = "inc"
      let g:html_indent_style1 = "inc"
      " }}}

      " Statusline
      " {{{
      set laststatus=2
      " }}}

      " Gist
      " {{{
      let g:gist_clip_command = 'xclip -selection clipboard'
      let g:gist_detect_filetype = 1
      let g:gist_open_browser_after_post = 1
      let g:gist_browser_command = 'google-chrome %URL% &' " NOTE: use your browser!
      let g:gist_show_privates = 1
      " }}}

      " supertab {{{
      let g:SuperTabDefaultCompletionType = 'context'
      let g:SuperTabContextDefaultCompletionType = '<c-n>'
      " }}}

      " syntastic {{{
      nnoremap <C-E> :SyntasticCheck<CR>
      let g:syntastic_auto_loc_list=1
      let g:syntastic_enable_signs=1
      let g:synastic_quiet_warnings=1

      " }}}

      " syntastic {{{
      let test#strategy = "vimterminal"
      nnoremap <leader>t :TestNearest<CR>
      nnoremap <leader>f :TestFile<CR>
      nnoremap <leader>l :TestLast<CR>
      " }}}

      " Rubycomplete {{{
      let g:rubycomplete_rails=1
      let g:rubycomplete_classes_in_global=1
      let g:rubycomplete_buffer_loading=1
      let g:rubycomplete_include_object=1
      let g:rubycomplete_include_objectspace=1
      " }}}

      " NERDTree {{{
      nnoremap <TAB> :NERDTreeToggle<CR>
      nmap <leader>1 :NERDTreeFind<CR>
      let g:NERDTreeMinimalUI=1
      let g:NERDTreeDirArrows=1
      let g:NERTreeHighlightCursorLine=1
      "}}}

      " CtrlP {{{
      nmap <leader>bs :CtrlPMRU<cr>
      nmap <leader>bb :CtrlPBuffer<cr>
      let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|node_modules|dist)$'
      "}}

      " ag {{{
      let g:ag_prg="ag --column"
      " start ack search, (using ACK tool, like grep but for source code)
      nnoremap <leader>a :Ag 
      " }}}

      nmap <Leader>ta :TagbarToggle<CR>

      let g:UltiSnipsExpandTrigger="<tab>"
      let g:UltiSnipsJumpForwardTrigger="<tab>"
      let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

      " let g:deoplete#enable_at_startup = 1
      " call deoplete#custom#option('sources', {
      "       \ '_': ['ale']
      "       \})
      " let g:ale_completion_enabled = 1

      " let g:ale_fixers = ['eslint']

      " let g:ale_sign_error = '❎'
      " let g:ale_sign_warning = '⚠️'
      " let g:ale_fix_on_save = 1

      au BufNewFile,BufRead Jenkinsfile setf groovy

    " GUI setting
    " {{{
    " Under the Mac(MacVim)
    if has("gui_macvim")
      set macligatures
      set guifont=Fira\ Code:h28
      " set guifont=Menlo\ Regular:h18
      "remove toolbar
      set guioptions-=T
      set showtabline=1
      " remove scrollbars
      set guioptions-=L
      set guioptions-=r

      " set fullscreen fullscreen
    endif
    " }}}
" }}}
