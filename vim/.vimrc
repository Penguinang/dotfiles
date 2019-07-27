
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vundle """"""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'


" Youcompleteme 依赖
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
"Plugin 'scrooloose/syntastic'
Plugin 'w0rp/ale'
" 使用yaourt替代
" YouCompleteMe
"Plugin 'Valloric/YouCompleteMe'

" 注释
Plugin 'scrooloose/nerdcommenter'
" 目录树
Plugin 'scrooloose/nerdtree'
" 缩进线
Plugin 'Yggdroot/indentLine'
" 补充Vim语法高亮
Plugin 'justinmk/vim-syntax-extra'
" JS支持
Plugin 'pangloss/vim-javascript'
" gdbmgr
Plugin 'vim-scripts/gdbmgr'
" eclpise-like tasklist(TODO,XXX,FIXME and custom)
Plugin 'chauncey-garrett/vim-tasklist'
" 状态栏
" Use pip install instead
"Plugin 'powerline/powerline'
" Git 辅助
Plugin 'airblade/vim-gitgutter' 
" Vim内Shell
Plugin 'oplatek/Conque-Shell'
" 多种颜色
Plugin 'flazz/vim-colorschemes'
" 自动切换头/源文件
Plugin 'vim-scripts/a.vim'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'jeaye/color_coded'

filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""" ColorScheme """""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme solarized
"colorscheme sublimemonokai 
"colorscheme mycolor_molokai
colorscheme mycolor_sublimemonokai
"colorscheme 1989
"colorscheme duoduo
"colorscheme materialtheme
"colorscheme onedark

syntax enable
set background=dark

let g:solarized_termcolors=256
let g:solarized_termtrans =1
"let g:solarized_degrade   =1
"let g:solarized_bold      =0
"let g:solarized_underline =0
"let g:solarized_italic    =0
"let g:solarized_contrast  ="high"
"let g:solarized_visibility= "high"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""vim基本格式设置"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf-8
set wildmenu                    "vim命令自动补全  
set ruler                       "光标位置
set number                      "显示行号
set cursorline                  "高亮显示当前行
set cursorcolumn                "高亮显示当前列
set guioptions+=l               "显示滚动条
set expandtab                   "扩展tab为空格
"set listchars=tab:>-,trail:-
"set list lcs=tab:\┆\ 
set tabstop=4                   "tab=4×space
set softtabstop=4               "4×space=tab
set shiftwidth=4
set scrolloff=4                 "光标离上下还有三行时开始滚动屏幕
set foldmethod=syntax           "基于缩进或语法进行代码折叠
set foldlevelstart=99           "默认不折叠
set clipboard+=unnamed          " 共享剪贴板 
set magic                       " 搜索支持正则匹配
set hlsearch                    " 高亮显示结果
set incsearch                   " 在输入要搜索的文字时，vim会实时匹配
set showmatch                   " 括号等显示配对
set mouse=a                     " 鼠标点击可以切换窗口
set fdm=indent                  " 按照缩进识别折叠点
"set runtimepath+=~/.vim/syntax " 增加自定义的语法文件目录
"set ignorecase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""vim快捷键设置""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=""
nmap <Leader>p "+p
let mapleader="<C-e>"
nmap <Leader>l :wincmd l<CR> 
nmap <Leader>k :wincmd k<CR> 
nmap <Leader>j :wincmd j<CR> 
nmap <Leader>h :wincmd h<CR> 
let mapleader=""
nmap <C-b> :tabnext<CR>
nmap <C-p> :tabprevious<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""" YCM Setting """"""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}
let g:UltiSnipsUsePythonVersion = 2 
"let g:ycm_server_python_interpreter='/usr/bin/python2'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_semantic_triggers = {'haskell' : ['.']}
nnoremap gl :YcmCompleter GoToDeclaration<CR>
nnoremap gf :YcmCompleter GoToDefinition<CR>
nnoremap gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <c-f> :YcmCompleter FixIt<CR>
highlight Todo ctermfg=red ctermbg=yellow cterm=bold " 错误标志
highlight DebugTag ctermbg=124 ctermfg=white cterm=bold " 用于Debug的代码标签
"highlight YcmErrorLine cterm=standout 错误行
highlight SpellBad ctermfg=red cterm=standout " 错误词
"set g:ycmerrorsign="?"
let g:ycm_server_python_interpreter='/usr/bin/python3'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""" vim-snippets """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""nerdcommenter""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"使用：  
"1、 \cc 注释当前行和选中行  
"2、 \cn 没有发现和\cc有区别  
"3、 \c<空格> 如果被选区域有部分被注释，则对被选区域执行取消注释操作，其它情况执行反转注释操作  
"4、 \cm 对被选区域用一对注释符进行注释，前面的注释对每一行都会添加注释  
"5、 \ci 执行反转注释操作，选中区域注释部分取消注释，非注释部分添加注释  
"6、 \cs 添加性感的注释，代码开头介绍部分通常使用该注释  
"7、 \cy 添加注释，并复制被添加注释的部分  
"8、 \c$ 注释当前光标到改行结尾的内容  
"9、 \cA 跳转到该行结尾添加注释，并进入编辑模式  
"10、\ca 转换注释的方式，比如： /**/和//  
"11、\cl \cb 左对齐和左右对其，左右对其主要针对/**/  
"12、\cu 取消注释  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""" NERDTree """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd VimEnter * NERDTree
map <C-t> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""" indentLine and json """"""""""""""""""""""""""""""""""""""""""""""""""""""""
" indentLine 代码缩进线标志线
let g:indentLine_char = '¦' 
let g:indentLine_color_term = 239 
let g:indentLine_indentLevel=1
"set list lcs=tab:\|\ 
"let g:indentLine_leadingSpaceChar='='
let g:indentLine_setColors = 0
"let g:indentLine_color_term = 239
"let g:indentLine_color_tty_light = 7 "
"let g:indentLine_color_dark = 1 "
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'
"let g:indentLine_char = 'c'
"let g:indentLine_concealcursor = 'inc'
"let g:indentLine_conceallevel = 2
"let g:indentLine_setConceal = 0
"let g:indentLine_enabled = 0

"映射到ctrl+i键 
"map <C-a> :IndentLinesToggle<CR> 
"map <tab> :IndentLinesToggle<CR> 

""""""""""""""""""""""""""""""""""""""""""""""""""""vim-javascipt""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_plugin_flow = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""" 自动补全 """""""""""""""""""""""""""""""""""""""""""""""""""""""
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap {<CR> {<CR>}<ESC>O

:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
":inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""" C, C++ F8调试 """""""""""""""""""""""""""""""""""""""""""""""""""
map <F5> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -g -o %<"
        exec "!gdb ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -g -o %<"
        exec "!gdb ./%<"
    elseif &filetype == 'asm'
        exec "!nasm -f macho64 %"
        exec "!ld -macosx_version_min 10.7.0 -o %< %<.o"
        exec "!gdb %<"
    endif
endfunc

map <F10> :call Compile()<CR>
func! Compile()
    exec "w"
    if &filetype == "c"
        exec "!gcc % -g -o %<"
    endif
endfunc

map <C-F5> :call RunOnly()<CR><CR>
func! RunOnly()
    exec "w"
    echo &filetype
    if index(['c', 'cpp', 'asm'], &filetype) >= 0
        if &filetype == "c"
            exec "!gcc % -g -o %<"
        elseif &filetype == 'cpp'
            exec "!g++ % -g -o %<"   
        elseif &filetype == 'asm'
            exec "!nasm -f macho64 %"
            exec "!ld -macosx_version_min 10.7.0 -o %< %<.o"   
        endif
        exec "!./%<"
    elseif &filetype == 'markdown'
        exec "!chromium %"
    elseif &filetype == 'python'
        exec "!python %"
        exec "!read"
    elseif &filetype == "sh"
        exec "!bash %"
        exec "!read"
    elseif &filetype == "matlab"
        exec "!octave %"
        exec "!read"
    endif
endfunc


"""""""""""""""""""""""""""""""""""""""""""""""" 显示FIXME,TODO 等标签 """"""""""""""""""""""""""""""""""""""""""""""""""
let mapleader='\'
map ts <Plug>TaskList

" This is specifies the position of the window to be opened. By default it will open at on top. 0 = Open on top, 1 = Open on the bottom
let g:tlWindowPosition = 1
" This is the list of tokens to search for default is 'FIXME TODO XXX'. The results are groupped and displayed in the order that they appear.
let g:tlTokenList = ['FIXME', 'TODO', 'XXX','DEBUG']
" If this is set to 1 then the script will try to get back to the position where it last was closed. By default it will find the line closest to the current cursor position.
let g:tlRememberPosition = 0

if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|XXX\|BUG\)')
    autocmd Syntax * call matchadd('DebugTag', '\W\zs\(DEBUG\)')
  endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Powerline 状态栏 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set guifont=Sauce\ Code\ Powerline:h14.5
set laststatus=2
set encoding=utf-8
set t_Co=256
set number
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set background=light

" GitGutter检查频率
set updatetime=100
" 启用:Man命令查看各类man信息
source $VIMRUNTIME/ftplugin/man.vim
" 定义:Man命令查看各类man信息的快捷键
nmap <Leader>man :Man 3 <cword><CR>
map <c-j> :ConqueTermSplit zsh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" vim-multiple-cursors """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_start_key='<C-d>'
let g:multi_cursor_next_key='<C-d>'
"let g:multi_cursor_skip_key='<C-kd>'
"let g:multi_cursor_quit_key='<C-d>'

