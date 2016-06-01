:imap jj <Esc>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1 
" показать NERDTree на F3
map <F3> :NERDTreeToggle<CR>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" вечнaя отмена изменений
set undofile 
set undodir=~/.vim/undo/

set runtimepath^=~/.vim/bundle/ctrlp.vim

"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '◀'
"let g:airline_fugitive_prefix = '⎇ '
"let g:airline_paste_symbol = 'ρ'

"let g:airline_enable_fugitive=1
"let g:airline_enable_syntastic=1
"let g:airline_enable_bufferline=1

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

" Выключаем надоедливый "звонок"
set novisualbell
set t_vb=

" Поддержка мыши
set mouse=a
set mousemodel=popup

" Кодировка текста по умолчанию
set termencoding=utf-8

" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden
" Скрыть панель в gui версии ибо она не нужна
set guioptions-=T

" Сделать строку команд высотой в одну строку
set ch=1

"set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
set langmap=Ж:,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,яz,чx,сc,мv,иb,тn,ьm,ю.

" Скрывать указатель мыши, когда печатаем
set mousehide

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

" Отключаем создание swap файлов
set noswapfile
" Все swap файлы будут помещаться в заданную директорию (туда скидываются открытые буферы)
set dir=~/.vim/swap/
" Отключаем создание бекапов (резервные копии файлов с окончанием «~» создаваться не будут)
set backup
" Если установлено set backup, то помещаются в этот каталог
set backupdir=~/.vim/backup/

" Опции сесссий
set sessionoptions=curdir,buffers,tabpages

colo desert

set t_Co=256

set nocompatible
filetype off 

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

filetype plugin indent on

"репозитории на github
Bundle 'tpope/vim-fugitive'
Bundle 'lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree.git'

"репозитории vim/scripts
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'rails.vim'

"git репозитории (не на github)
Bundle 'git://git.wincent.com/command-t.git'
