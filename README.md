# How to use my configuration files

If you want use all configuration to set-up:
- CoC
- Nvim
- iTerm2
You can just runs on your selected directory:
`git clone https://github.com/dalmasluca/.config.git`
Otherwise you can copy the single file on your directory.

## How to set up only nvim 
If you are only interested to set up NeoVim you can copy my init.vim file and paste on your.
Pay attention: I use [vim-plug](https://github.com/junegunn/vim-plug) as package manager so you have to install it too.
After do that open vim and runs:
`:PlugInstall`
After this operation almost on eis done. Now you hav to set up Coc for you programming legguage. 
example: 
`:CocInstall coc-go`
