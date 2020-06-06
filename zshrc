alias s="source ~/.zshrc"

alias gs="git status"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset     %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gd="git diff"
alias gdh="git diff HEAD^"
alias gri="git rebase -i"

alias latr="ls -latrhF"
# -l      (The lowercase letter ``ell''.)  List in long format.  (See below.)  If the output is to a terminal, a total sum for all the file sizes is output on a line before the long listing.
# -a      Include directory entries whose names begin with a dot (.).
# -t      Sort by time modified (most recently modified first) before sorting the operands by lexicographical order.
# -r      Reverse the order of the sort to get reverse lexicographical order or the oldest entries first (or largest files last, if combined with sort by size
# -h      When used with the -l option, use unit suffixes: Byte, Kilobyte, Megabyte, Gigabyte, Terabyte and Petabyte in order to reduce the number of digits to three or less using base 2 for sizes.
# -F      Display a slash (`/') immediately after each pathname that is a directory, an asterisk (`*') after each that is executable, an at sign (`@') after each symbolic link, an equals sign (`=') after each
#             socket, a percent sign (`%') after each whiteout, and a vertical bar (`|') after each that is a FIFO.

jitouch()
{
  killall Jitouch
  open ~/Library/PreferencePanes/Jitouch.prefPane/Contents/Resources/Jitouch.app
}

