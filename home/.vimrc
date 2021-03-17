
" {{{
  "Init Plugins
  " {{{
      filetype off                  " required

      call plug#begin()

      "Plug 'dense-analysis/ale'
      Plug 'scrooloose/nerdtree'
      Plug 'scrooloose/nerdcommenter'
      Plug 'jistr/vim-nerdtree-tabs'
      Plug 'Xuyuanp/nerdtree-git-plugin'
      Plug 'mattn/emmet-vim'
      " Plug 'ybian/smartim'
      Plug 'scrooloose/syntastic'
      " Plug 'MarcWeber/vim-addon-mw-utils'
      " Plug 'tpope/vim-commentary'
      " Plug 'tpope/vim-endwise'
      Plug 'tpope/vim-surround'
      Plug 'tpope/vim-fugitive'
      Plug 'itchyny/lightline.vim'
      Plug 'jiangmiao/auto-pairs'
      Plug 'elzr/vim-json'
      " Plug 'rking/ag.vim'
      Plug 'pangloss/vim-javascript'
      " Plug 'tpope/vim-haml'
      " Plug 'tpope/vim-cucumber'
      Plug 'majutsushi/tagbar'
      Plug 'vim-scripts/matchit.zip'
      Plug 'terryma/vim-expand-region'
      " Plug 'nathanaelkane/vim-indent-guides'
      " Plug 'kana/vim-textobj-user'
      " Plug 'austintaylor/vim-indentobject'
      " Plug 'lucapette/vim-textobj-underscore'
      " Plug 'tpope/vim-dispatch'
      Plug 'mxw/vim-jsx'
      " Plug 'tomtom/tlib_vim'
      Plug 'SirVer/ultisnips'
      Plug 'honza/vim-snippets'
      " Plug 'kien/ctrlp.vim'
      " Plug 'AndrewRadev/splitjoin.vim'
      " Plug 'nikvdp/ejs-syntax'
      " Plug 'godlygeek/tabular'
      Plug 'tpope/vim-repeat'
      Plug 'lfilho/cosco.vim' " Auto append semicolon or Comma
      Plug 'dracula/vim'
      Plug 'leafgarland/typescript-vim'
      Plug 'ianks/vim-tsx'
      Plug 'posva/vim-vue'
      " Plug 'epilande/vim-react-snippets'
      Plug 'Galooshi/vim-import-js'
      " Plug 'chemzqm/wxapp.vim'
      Plug 'prettier/vim-prettier'
      Plug 'janko/vim-test'
      Plug 'jhkersul/vim-jest-snippets'
      Plug 'mg979/vim-visual-multi'
      " Plug 'Shougo/deoplete.nvim'
      Plug 'roxma/nvim-yarp'
      Plug 'roxma/vim-hug-neovim-rpc'
      Plug 'neoclide/coc.nvim', {'branch': 'release'}
      Plug 'briancollins/vim-jst'
      Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
      Plug 'justinmk/vim-sneak'
      Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
      Plug 'luchermitte/vim-refactor'
      Plug 'ryanoasis/vim-devicons'
      Plug 'seabornlee/terminal.vim'

      call plug#end()            " required
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
      colorscheme dracula

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

      set foldenable " folding text into clusters (+) according to  {{{ }}} or comments for example.
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
      nmap <silent> <leader>ev :vsplit $MYVIMRC<CR>
      nmap <silent> <leader>so :so $MYVIMRC<CR>

      " convenient window switching
      map <C-h> <C-w>h
      map <C-j> <C-w>j
      map <C-k> <C-w>k
      map <C-l> <C-w>l

      " jump to end of line in insert mode
      inoremap <C-e> <C-o>$
      "inoremap <leader>; <C-o>A;<CR>
      autocmd FileType javascript,css,php nmap <silent> <Leader>; <Plug>(cosco-commaOrSemiColon)
      autocmd FileType javascript,css,php imap <silent> <Leader>; <c-o><Plug>(cosco-commaOrSemiColon)

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
      let g:syntastic_auto_loc_list=0
      let g:syntastic_enable_signs=0
      let g:synastic_quiet_warnings=0

      " }}}

      " vim-test {{{
      let test#strategy = "vimterminal"
      "nnoremap <leader>t :wa<CR>:TestNearest<CR>
      nnoremap <leader>t :call SaveModifiedFiles()<cr>:TestNearest<CR>
      nnoremap <leader>tf :call SaveModifiedFiles()<CR>:TestFile<CR>
      nnoremap <leader>s :call SaveModifiedFiles()<CR>:TestSuite<CR>
      nnoremap <leader>l :call SaveModifiedFiles()<CR>:TestLast<CR>
      " }}}

      function! SaveModifiedFiles() abort
          for buf in getbufinfo({'bufloaded': 1})
              if buf.changed
                  :write
              endif
          endfor
      endfunction


      if has('nvim')
        augroup TermGG
          autocmd!
          " 打开终端进入 insert 模式
          autocmd TermOpen * startinsert
          " 不滚动
          autocmd TermOpen *[tT]est{.ts,.php,.js} call feedkeys("\<C-\>\<C-n>gg", 'n') | nmap <buffer> <cr> i<cr> | nmap <buffer> <ESC> :silent! bd!<CR>
          " 执行完跳到开头
          " autocmd TermClose *[tT]est{.ts,.php,.js} call feedkeys("\<C-\>\<C-n>gg", 'n') | nmap <buffer> <cr> i<cr> | nmap <buffer> <ESC> :silent! bd!<CR>
        augroup END
      else
        function TermGg(...) abort
          nmap <buffer> <cr> :silent! bd!<CR> | nmap <buffer> <ESC> :silent! bd!<CR>
          normal gg
        endfunction

        function! TermStrategy(cmd)
          tabnew
          call term_start(a:cmd, {"exit_cb": {->timer_start(100, function('TermGg'))}, "curwin": v:true })
        endfunction

        let g:test#custom_strategies = {'termOpen': function('TermStrategy')}
        let g:test#strategy = 'termOpen'
      endif

      " Rubycomplete {{{
      " let g:rubycomplete_rails=1
      " let g:rubycomplete_classes_in_global=1
      " let g:rubycomplete_buffer_loading=1
      " let g:rubycomplete_include_object=1
      " let g:rubycomplete_include_objectspace=1
      " }}}

      " NERDTree {{{
      nnoremap <leader><TAB> :NERDTreeToggle<CR>
      nmap <leader>` :NERDTreeFind<CR>
      let g:NERDTreeMinimalUI=1
      let g:NERDTreeDirArrows=1
      let g:NERTreeHighlightCursorLine=1
      let g:nerdtree_tabs_open_on_gui_startup=0
      "}}}
      "

      " NERD commentor
      let g:NERDSpaceDelims = 1

      " ag {{{
      let g:ag_prg="ag --column"
      " start ack search, (using ACK tool, like grep but for source code)
      nnoremap <leader>a :Ag 
      " }}}

      nmap <Leader>ta :TagbarToggle<CR>

      " let g:UltiSnipsExpandTrigger="<tab>"
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

      let g:ale_fix_on_save = 1
      let g:ale_fixers = {
      \   'javascript': ['prettier', 'eslint'],
      \   'typescript': ['prettier', 'eslint'],
      \}      

      au BufNewFile,BufRead Jenkinsfile setf groovy

      " TextEdit might fail if hidden is not set.
      set hidden

      " Some servers have issues with backup files, see #649.
      set nobackup
      set nowritebackup

      " Give more space for displaying messages.
      set cmdheight=2

      " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
      " delays and poor user experience.
      set updatetime=300

      " Don't pass messages to |ins-completion-menu|.
      set shortmess+=c

      " Always show the signcolumn, otherwise it would shift the text each time
      " diagnostics appear/become resolved.
      set signcolumn=yes

      " Use `[g` and `]g` to navigate diagnostics
      nmap <silent> [g <Plug>(coc-diagnostic-prev)
      nmap <silent> ]g <Plug>(coc-diagnostic-next)

      " GoTo code navigation.
      nmap <silent> gd <Plug>(coc-definition)
      nmap <silent> gy <Plug>(coc-type-definition)
      nmap <silent> gi <Plug>(coc-implementation)
      nmap <silent> gr <Plug>(coc-references)

      " Use K to show documentation in preview window.
      nnoremap <silent> K :call <SID>show_documentation()<CR>

      function! s:show_documentation()
        if (index(['vim','help'], &filetype) >= 0)
          execute 'h '.expand('<cword>')
        else
          call CocAction('doHover')
        endif
      endfunction

      " Highlight the symbol and its references when holding the cursor.
      autocmd CursorHold * silent call CocActionAsync('highlight')

      " Symbol renaming.
      nmap <leader>rn <Plug>(coc-rename)

      " Formatting selected code.
      xmap <leader>f  <Plug>(coc-format-selected)
      nmap <leader>f  <Plug>(coc-format-selected)

      augroup mygroup
        autocmd!
        " Setup formatexpr specified filetype(s).
        autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
        " Update signature help on jump placeholder.
        autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
      augroup end

      " Applying codeAction to the selected region.
      " Example: `<leader>aap` for current paragraph
      xmap <leader>a  <Plug>(coc-codeaction-selected)
      nmap <leader>a  <Plug>(coc-codeaction-selected)

      " Remap keys for applying codeAction to the current line.
      nmap <leader>ac  <Plug>(coc-codeaction)
      " Apply AutoFix to problem on the current line.
      nmap <leader>qf  <Plug>(coc-fix-current)

      " Introduce function text object
      " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
      xmap if <Plug>(coc-funcobj-i)
      xmap af <Plug>(coc-funcobj-a)
      omap if <Plug>(coc-funcobj-i)
      omap af <Plug>(coc-funcobj-a)

      " Use <TAB> for selections ranges.
      " NOTE: Requires 'textDocument/selectionRange' support from the language server.
      " coc-tsserver, coc-python are the examples of servers that support it.
      nmap <silent> <TAB> <Plug>(coc-range-select)
      xmap <silent> <TAB> <Plug>(coc-range-select)

      " Add `:Format` command to format current buffer.
      command! -nargs=0 Format :call CocAction('format')

      " Add `:Fold` command to fold current buffer.
      command! -nargs=? Fold :call     CocAction('fold', <f-args>)

      " Add `:OR` command for organize imports of the current buffer.
      command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

      " Add (Neo)Vim's native statusline support.
      " NOTE: Please see `:h coc-status` for integrations with external plugins that
      " provide custom statusline: lightline.vim, vim-airline.
      "set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

      " Mappings using CoCList:
      " Show all diagnostics.
      nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
      " Manage extensions.
      nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
      " Show commands.
      nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
      " Find symbol of current document.
      nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
      " Search workspace symbols.
      nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
      " Do default action for next item.
      nnoremap <silent> <space>j  :<C-u>CocNext<CR>
      " Do default action for previous item.
      nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
      " Resume latest coc list.
      nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

      " Phpactor
      " Include use statement
      nmap <Space>pu :call phpactor#UseAdd()<CR>

      let g:phpactorInputListStrategy = 'phpactor#input#list#fzf'
      let g:phpactorQuickfixStrategy = 'phpactor#quickfix#fzf'

      " Invoke the context menu
      nmap <Leader>r :call phpactor#ContextMenu()<CR>

      " Invoke the navigation menu
      nmap <>b :call phpactor#Navigate()<CR>

      " Goto definition of class or class member under the cursor
      nmap <Space>pgd :call phpactor#GotoDefinition()<CR>
      nmap <Space>pgdh :call phpactor#GotoDefinitionHsplit()<CR>
      nmap <Space>pgdv :call phpactor#GotoDefinitionVsplit()<CR>
      nmap <Space>pgdt :call phpactor#GotoDefinitionTab()<CR>

      " Show brief information about the symbol under the cursor
      nmap <Space>pK :call phpactor#Hover()<CR>

      " Transform the classes in the current file
      nmap <Space>pt :call phpactor#Transform()<CR>

      " Import all missing classes in the current file
      "nmap <Space>pim :call phpactor#ImportMissingClasses()<CR>

      " Expand the class name from unqualified name to fully qualified name
      nmap <Space>pec :call phpactor#ClassExpand()<CR>

      " Class Move
      nmap <Space>pmf :call phpactor#MoveFile()<CR>

      " Generate a new class (replacing the current file)
      nmap <leader>c :call phpactor#ClassNew()<CR>

      " Extract expression (normal mode)
      nmap <silent><leader>v :call phpactor#ExtractExpression(v:false)<CR>

      " Extract expression from selection
      vmap <silent><leader>vv :<C-U>call phpactor#ExtractExpression(v:true)<CR>

      " Extract method from selection
      vmap <silent><leader>m :<C-U>call phpactor#ExtractMethod()<CR>

      " Copy an existing class to another location updating its name and namespace 
      nmap <Space>pcf :call phpactor#CopyFile()<CR>

      " Change visibility
      nmap <Space>pcv :call phpactor#ChangeVisibility()<CR>

      "Generate accessor
      nmap <Space>pga :call phpactor#GenerateAccessor()<CR>

      " LeaderF
      let g:Lf_WindowPosition = 'popup'
      let g:Lf_PreviewInPopup = 1
      let g:Lf_ShowDevIcons = 1
      let g:Lf_DevIconsFont = "DroidSansMono Nerd Font Mono"
      let g:Lf_ShortcutF = '<C-P>'

      map <C-c> <Plug>(expand_region_expand)
      map <C-t> <Plug>(expand_region_shrink)

      let g:prettier#autoformat = 1
      autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.php PrettierAsync

      nmap <Leader>tt :terminal<CR>

      " => Lightline --------------------------------
      let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'window', 'filename', 'modified'] ]
            \ },
            \ 'inactive': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'window'] ]
            \ },
            \ 'component_function': {
            \   'window': 'WindowNum'
            \ },
            \ }

      function! WindowNum()
          return winnr()
      endfunction

      nmap <silent><leader>1 :1wincmd w<CR>
      nmap <silent><leader>2 :2wincmd w<CR>
      nmap <silent><leader>3 :3wincmd w<CR>
      nmap <silent><leader>4 :4wincmd w<CR>

      tnoremap <Esc> <C-\><C-n>


    " GUI setting
    " {{{
    " Under the Mac(MacVim)
    if has("gui_macvim")
      set macligatures
      "set guifont=Fira\ Code:h24
      set guifont=DroidSansMono\ Nerd\ Font:h28
      "remove toolbar
      set guioptions-=T
      set showtabline=1
      " remove scrollbars
      set guioptions-=L
      set guioptions-=r
      set guioptions+=c

      set fullscreen fullscreen
    endif

    if has("nvim")
      set guifont=DroidSansMono\ Nerd\ Font:h28
      let g:Lf_ShowDevIcons = 0
    endif
    " }}}
" }}}
