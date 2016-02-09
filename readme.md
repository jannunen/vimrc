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
| Scroll down in inactive window  | ,d        | &gt;C-W&lt;W&gt;C-D&lt;&gt;C-W&lt;W  |
| Scroll up in inactive window    | ,u        | &gt;C-W&lt;W&gt;C-U&lt;&gt;C-W&lt;W  |
| Close open tag                  | &gt;//       | &gt;/&gt;C-X&lt;&gt;C-O&lt;       |
| UltiSnips Expand                | &gt;tab&lt;     |                    |
| YouCompleteMe next suggestion   | &gt;C-n&lt;     |                    |
| YouCompleteMe prev suggestion   | &gt;C-p&lt;     |                    |

