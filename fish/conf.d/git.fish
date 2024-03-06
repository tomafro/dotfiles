dotfiles-link "$DOTFILES_PATH/git/gitconfig" "$HOME/.gitconfig"
dotfiles-link "$DOTFILES_PATH/git/gitignore" "$HOME/.gitignore"

set --export GIT_EDITOR "zed --wait"
set --export GITHUB_TOKEN (github-access-token)

abbr --add s 'git status -sb'
abbr --add d 'git diff --word-diff --color-words'
abbr --add c 'git diff --cached --word-diff --color-words'
abbr --add rb 'git pull --rebase origin (git-main-branch)'
abbr --add recent 'git branch --no-merged (git-main-branch) --sort=-committerdate --format="%(committerdate:relative)%09%(refname:short)"'
abbr --add pr 'gh pr view --web'
