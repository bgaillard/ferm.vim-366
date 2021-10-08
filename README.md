# How to reproduce the bug ?

```bash
# Backup your `~/.vimrc` file
cp ~/.vimrc ~/.vimrc.back

# Copy the `~/.vimrc` file from this project to your home
cp .vimrc ~/.vimrc

# Open vim in the current directory
vim .

# Then do the following to reproduce the problem with fern
# 1. Open the 'test1.txt' file
CTRL-W h     # Place the cursor at the top of the drawer
j j l        # Open the 'test1.txt' file

# 2. Delete the 'text2.txt' file
CTRL-W h     # Place the in the drawer
j d          # Delete the 'test2.txt' file

# You should observe that the right side of the screen is closed
```
