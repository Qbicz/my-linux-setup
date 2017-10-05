syntax enable
set hlsearch
set cindent
set cino=:0
set tabstop=4
set shiftwidth=4
set expandtab
set number
set autoread
au CursorHold * checktime

"autocmd FileType c set expandtab
"autocmd FileType h set expandtab
"autocmd FileType cpp set expandtab
"autocmd FileType hpp set expandtab
set smarttab
color slate
"map <C-\> :cs find s <cword><CR>
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype h setlocal expandtab tabstop=4 shiftwidth=4

if has("cscope")
	"set csprg=/usr/bin/cscope
    set cscopetag
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	" else add database pointed to by environment
		elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	set csverb

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
endif
nmap <F2> :Vexplore<CR>
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
"nmap <F2> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd l
nmap <F3> :tabnew<CR>
nmap <F4> :tabp<CR>
nmap <F5> :tabn<CR>

"nmap <F6> :setlocal spell! spelllang=en_us<CR>

nmap <F7> :set tabstop=4 <bar> set shiftwidth=4<CR>
nmap <F8> :set tabstop=8 <bar> set shiftwidth=8<CR>

highlight ColorColumn ctermbg=5*
let &colorcolumn="80,".join(range(120,121),",")
