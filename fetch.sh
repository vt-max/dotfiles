BIN=~/.local/bin
mkdir -p "${BIN}"

# fzf-git
curl https://raw.githubusercontent.com/junegunn/fzf-git.sh/refs/heads/main/fzf-git.sh -o "${BIN}/fzf-git.sh"

# git-jump
curl https://raw.githubusercontent.com/git/git/refs/heads/master/contrib/git-jump/git-jump -o "${BIN}/git-jump"
chmod +x "${BIN}/git-jump"
