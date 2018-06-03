:imap jj <Esc>
map <F4> :q!<CR>
map <F5> :w<CR>
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1 
" показать NERDTree на F3
map <F3> :NERDTreeToggle<CR>


let g:org_plugins = ['ShowHide', '|', 'Navigator', 'EditStructure', 'YourPlugin']
filetype plugin indent on  
execute pathogen#infect()

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" вечнaя отмена изменений
set undofile 
set undodir=~/.vim/undo/

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Перенос длинных строк
set wrap

" Показывать положение курсора всё время.
set ruler

" Показывать незавершённые команды в статусбаре
set showcmd

" Включаем нумерацию строк
set nu
" Фолдинг по отсупам
"set foldmethod=indent

" Поиск по набору текста (очень полезная функция)
set incsearch

" Отключаем подстветку найденных вариантов, и так всё видно.
set nohlsearch

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы подняться в режиме редактирования
set scrolljump=7

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы опуститься в режиме редактирования
set scrolloff=7

" Кодировка текста по умолчанию
set termencoding=utf-8

" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" Сделать строку команд высотой в одну строку
set ch=1

"set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
set langmap=Ж:,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,яz,чx,сc,мv,иb,тn,ьm,ю.

" Скрывать указатель мыши, когда печатаем
"set mousehide

" Включить автоотступы
set autoindent

" Влючить подстветку синтаксиса
syntax on

" allow to use backspace instead of "x"
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Преобразование Таба в пробелы
set expandtab

" Размер табулации по умолчанию
set shiftwidth=4
set softtabstop=4
set tabstop=4
" Формат строки состояния set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
set laststatus=2

" Включаем "умные" отспупы ( например, автоотступ после {)
set smartindent

" Fix <Enter> for comment
set fo+=cr

set swapfile
set dir=~/.vim/swap/
set backup
set backupdir=~/.vim/backup/

" Опции сесссий
set sessionoptions=curdir,buffers,tabpages

set background=dark
colorscheme hybrid

set t_Co=256

let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme) 
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"репозитории на github
Bundle 'tpope/vim-fugitive'
Bundle 'lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree.git'
Bundle 'mattn/emmet-vim'
Bundle 'kien/ctrlp.vim'

"репозитории vim/scripts
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'rails.vim'

"git репозитории (не на github)
Bundle 'git://git.wincent.com/command-t.git'

if iCanHazVundle == 0
    echo "Installing Vundles, please ignore key map error messages"
    echo ""
    :PluginInstall
endif

call vundle#end() 
"must be last
filetype plugin indent on " load filetype plugins/indent settings

