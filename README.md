# dotfiles

# Installation
1. Install oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
2. Install powerline10k
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
(ignore any setup config afterwards)

3. Initialize dotfiles
```
curl https://raw.githubusercontent.com/yihehe/dotfiles/master/.initdf.zsh | zsh
```

# Cleanup
```
zsh ~/.undf.zsh
```

## Resources
- https://www.atlassian.com/git/tutorials/dotfiles
- https://github.com/ohmyzsh/ohmyzsh
- https://github.com/romkatv/powerlevel10k#oh-my-zsh

