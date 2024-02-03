"-------------------------------------------------
set nocompatible
"-------------------------------------------------
syntax enable
filetype on
filetype plugin on
filetype indent on
" colorscheme darkblue " slate  peachpuff slate
" colorscheme koehler
colorscheme peachpuff
set t_Co=256
set mouse=a "active la souris dans le terminal
"set number "affiche le numéro de ligne
set nonumber "pas de numéro de ligne au démarrage.
nnoremap ù : set nonumber!<cr>
set ruler " position du curseur toujours visible
"set cursorline " matérialise la position du curseur
set history=2048
" undo. Tip: redo = Ctrl+r
set undofile
set undolevels=2048
set undoreload=2048
set ttyfast
set noerrorbells
set novisualbell
"set norelativenumber
set title
set encoding=utf-8
set showmode "Affiche le nom du mode actif
set showcmd "affiche la commande dans la barre du bas
" set nowrap " Don't wrap lines
"permet de changer de buffer sans avoir à le sauvegarder préalablement
set hidden
"Ignore les réglages de vim inclus dans les fichiers sources
set nomodeline 

""" Espaces, tabulations
"https://github.com/joshfriend/dotvim/blob/master/.vimrc
set autoindent "Active l'indentation automatique
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" set textwidth=80
" 80 char ruler
" set colorcolumn=80
"highlight ColorColumn ctermbg=235 guibg=#2c2d27
"let &colorcolumn=join(range(81,999), ",")
" highlight ColorColumn ctermbg=magenta
" call matchadd('ColorColumn', '\%81v', 100)
" Fixe la hauteur de la barre de commande
set cmdheight=1
""" Déplacement du curseur 
" Avec le mapleader possibilité d'avoir des combinaisons de touches
" supplémentaires
let mapleader = ","
"Sauvegarde en tapant ,w
nmap <leader>w :w!<cr>
"Quitte en tapant ,w
nmap <leader>q :q<cr>
" nnoremap <Ctrl><Space> :w!<cr>
"nnoremap $ <nop> " touche inactivée
"nnoremap ^ <nop> " touche inactivée

" Buffers
set hidden
" é <=> buffer précédant = :bp
" à <=> buffer suivant = :bn
" ç <=> suppression buffer = :bd
nnoremap é :bp<cr>
nnoremap à :bn<cr>
" aller au dernier buffer
nnoremap <tab> :b#<cr>
" fermer le buffer actuel. À confirmer en appuyant ENTRÉE
nnoremap ç :bd

" copy and paste
" http://vim.wikia.com/wiki/Accessing_the_system_clipboard 
set clipboard=unnamedplus

" recursive search et tab-completion
set path+=**
" wildmenu
set wildmenu
" Type de fichiers à ignorer en cas d'autocomplétion
set wildignore=*.jpg,*.png,*.gif,*.pdf

"""Backup et autres.
set backup                        " enable backups
set noswapfile                    " it's 2013, Vim.
set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
" set directory=~/.vim/tmp/swap//   " swap files
set autoread " Recharge automatique le fichier si son contenu a changé
" Commentaires et caractères spéciaux
"highlight Comment term=bold
highlight Comment ctermfg=245 guifg=#8a8a8a
"highlight Comment ctermfg=145 guifg=#585858
" highlight NonText ctermfg=240 guifg=#585858
" highlight SpecialKey ctermfg=240 guifg=#585858
""" Search et autres
set showmatch " hightlight la  [{()}] ouvrante ou fermante 
set incsearch " recherche incrémentale
set hlsearch " highlight la recherche

""" Folding
set foldmethod=indent
set foldenable " active le folding
set foldlevelstart=10 " à 0 tous les folds sont refermés, =10 :valeur médiane
set foldnestmax=10 " 10 nested fold max
"nnoremap <space> za " space open/closes folds

"""Airline  
let g:airline_theme='badwolf'
"let g:airline_theme='dark'
" n'affiche pas le type de format si celui-ci est utf-8
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]' 
let g:airline_powerline_fonts = 1
let g:airline_section_c = '%F' " Chemin complet du fichier en cours d'édition
let g:airline_section_y = 'Buffer %{bufnr("%")}' " numero du buffer visible
" Les buffers s'affichent comme des ongles
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter='unique_tail'

" let g:airline_right_alt_sep = ''
" let g:airline_right_sep = '«'
" let g:airline_left_alt_sep= ''
" let g:airline_left_sep = '»'
let g:airline_left_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airlie_righ_alt_sep = ''

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif





""" Lilypond
set runtimepath+=/usr/share/lilypond/2.18.2/vim/

