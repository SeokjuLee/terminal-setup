Cheat sheet for tmux
--------------------

  For my little brains. <br/> 
  Seokju modified on (17.12.26)

### Out session (@ original shell)

| action | command |
| ------ | ------- |
| create session | `tmux new -s [session-name]` |
| kill session | `tmux kill-session -t [session-name]` |
| attach session | `tmux attach -t [session-name]` |
| rename session | `tmux rename-session -t [old-name] [new-name]` |
| list session | `tmux ls` |

### In session 

| action | command |
| ------ | ------- |
| create window | `^b + c` |
| rename window | `^b + ,` |
| navigate window | `^b + n` <br/> `^b + p` <br/> `^b + l` <br/> `^b + [window-num]`|
| terminate window | `^b + &` <br/> `tmux kill-window -t [window-num]` |
| detach session | `^b + d` |
| help | `^b + ?` |
| apply tmux.conf | `tmux source-file ~/.tmux.conf` |

### In window / pane

| action | command |
| ------ | ------- |
| split pane | `^b + %` <br/> `^b + "` |
| delete pane | `^b + x` <br/> `^d` (no warning) |
| select pane | `^b + arrow_key` |
| resize pane | `^b + <M-arrow_key>` |

Color
-----
### color code 
  * dump color code by [dumpTmuxColor](https://gist.github.com/wecanspeak/7956277)
  ![tmux color code](https://raw.github.com/wecanspeak/cheat-sheet-for-tmux/master/tmux-color-code.png)
  

### fix vim in tmux color problem
  * add `export TERM=xterm-256color` in `~/.bashrc`
  * add `set t_ut=` in `~/.vimrc`
  * add `setw -g xterm-keys on` and  `set -g default-terminal "screen-256color"` in `~/.tmux.conf`


Useful apps
-----------
* mobaxterm: xwindow. SCP is faster than SFTP when synchronizaing files.
* WinSCP
* SublimeText SSH
* SSHFS: Sync a directory with Windows one such as DropBox
* Xfe
* caja (default)


Change SSH port
-----------
* Check current port
```Shell
sudo netstat -anp | grep LISTEN | grep sshd
cat /etc/ssh/sshd_config | egrep ^\#?Port 
```
* Edit config
```Shell
vi /etc/ssh/sshd_config
# Port 22 -> Port 1234
```
* Restart SSH
```Shell
sudo service sshd restart
(or sudo service ssh restart)
```


Setting XServer display
-----------
* Change display offset as '11' in the MobaXTerm X Server setting
```Shell
echo $DISPLAY
export DISPLAY=:11
echo $DISPLAY
```


caja default setting
-----------
```Shell
sudo gsettings set org.mate.caja.preferences default-folder-viewer 'list-view'
```


Reference
---------

* [Fixing Vim's Background Color Erase for 256-color tmux and GNU screen](http://sunaku.github.io/vim-256color-bce.html)
  


