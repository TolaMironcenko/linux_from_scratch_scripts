#!/bin/bash

pkgname=vim
pkgver=9.1.0660

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h
./configure --prefix=/usr
make $MAKEFLAGS
# chown -R tester .
# su tester -c "TERM=xterm-256color LANG=en_US.UTF-8 make -j1 test" \
#    &> vim-test.log
make install
ln -sv vim /usr/bin/vi
for L in  /usr/share/man/{,*/}man1/vim.1; do
    ln -sv vim.1 $(dirname $L)/vi.1
done
ln -sv ../vim/vim91/doc /usr/share/doc/$pkgname-$pkgver
cat > /etc/vimrc << "EOF"
set number
syntax on
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set foldcolumn=2
set mouse=a
set encoding=utf8
"-------- colorcolumn ------------------
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray
"---------------------------------------

"------------ tabs -----------------------
nnoremap <C-p> :tabprevious<CR>
nnoremap <C-n> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-p> <Esc>:tabprevious<CR>i
inoremap <C-n> <Esc>:tabnext<CR>i
inoremap <C-t> <Esc>:tabnew<CR>
nnoremap <C-d> :tabclose<CR>
inoremap <C-d> <Esc>:tabclose<CR>
"-----------------------------------------
"----------------- term --------
nnoremap <C-x> :term<CR>
inoremap <C-x> <Esc>:term<CR>
"-------------------------------
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>
nnoremap <C-q> :q<CR>
inoremap <C-q> <Esc>:q<CR>
"-------------------------------------
nnoremap <C-u> :so%<CR>
inoremap <C-u> <Esc>:so%<CR>
"--------------------------------------------
EOF
cd ..
rm -rv $pkgname-$pkgver
