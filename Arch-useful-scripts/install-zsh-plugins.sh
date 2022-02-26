# for theme
git clone https://github.com/guesswhozzz/guezwhoz-zshell ~/guezwhoz-scheme
ln -s ~/guezwhoz-scheme/guezwhoz.zsh-theme $ZSH/themes/guezwhoz.zsh-theme
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# fzf-tab
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# fzf
git clone https://github.com/Aloxaf/fzf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf

