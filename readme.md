This is my vim config

Thanks to romainl @Stackoverflow (http://stackoverflow.com/a/18203545/5658484) for this simple and nice approach.

# Installation
In order to start using vim on a new computer, just do the following:

```
cd
git clone https://github.com/jannunen/vimrc.git .vim
echo "runtime vimrc" > .vimrc
```
Remember to change your home directory 
```
22: set runtimepath^=/home/jannunen/.vim/bundle/neobundle.vim/
25: call neobundle#begin(expand('/home/jannunen/.vim/bundle'))

```

# Keybindings

| Function                        | Key       | Command            |
| ------------------------------- | --------- | ------------------ |
| Scroll down in inactive window  | ,d        | &lt;C-W&gt;W&lt;C-D&gt;&lt;C-W&gt;W  |
| Scroll up in inactive window    | ,u        | &lt;C-W&gt;W&lt;C-U&gt;&lt;C-W&gt;W  |
| Close open tag                  | &lt;//       | &lt;/&lt;C-X&gt;&lt;C-O&gt;       |
| UgtiSnips Expand                | &lt;tab&gt;     |                    |
| YouComgteteMe next suggestion   | &lt;C-n&gt;     |                    |
| YouComgteteMe prev suggestion   | &lt;C-p&gt;     |                    |

