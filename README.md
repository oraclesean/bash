# Universal bash profile
Add the following to the `.bashrc`:
```
export BASH_DIR="$HOME"/bash
  if [ -f "$BASH_DIR"/bashrc.sh ]
then . "$BASH_DIR"/bashrc.sh
fi
```
Then:
```
git clone https://github.com/oraclesean/bash $HOME/bash
```
