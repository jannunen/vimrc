This is my vim config

Thanks to Stackoverflow (http://stackoverflow.com/questions/18197705/adding-your-vim-vimrc-to-github-aka-dot-files) for this simple and nice approach.

# Installation
In order to start using vim on a new computer, just do the following:

```
cd
git clone https://github.com/jannunen/vimrc.git .vim
echo "runtime vimrc" > .vimrc
```

# Keybindings

| Function                        | Key       | Command            |
| ------------------------------- | --------- | ------------------ |
| Scroll down in inactive window  | ,d        | <C-W>W<C-D><C-W>W  |
| Scroll up in inactive window    | ,u        | <C-W>W<C-U><C-W>W  |
| Close open tag                  | <//       | </<C-X><C-O>       |
| UltiSnips Expand                | <tab>     |                    |
| YouCompleteMe next suggestion   | <C-n>     |                    |
| YouCompleteMe prev suggestion   | <C-p>     |                    |

