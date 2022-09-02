for NVIM

# vim-comentary install
```
mkdir -p ~/.config/nvim/pack/tpope/start
cd ~/.config/nvim/pack/tpope/start
git clone https://tpope.io/vim/commentary.git
vim -u NONE -c "helptags commentary/doc" -c q
```

# how to use
gc in visual mode to comment out the selection, and gc in operator pending mode to target a comment.
