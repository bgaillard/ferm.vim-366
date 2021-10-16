# How to reproduce the bug ?

1. Checkout this branch `cd /tmp; git clone git@github.com:bgaillard/ferm.vim-366.git; cd ferm.vim-366`
2. Execute `vim -N -u .vimrc .`
3. Hit `<C-w>h`
4. Hit `j` `j` `l`
5. Hit `<C-w>h`
6. Hit `j` `d`

Right side is closed but it should not.
