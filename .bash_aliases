
# ls aliases from Ubuntu
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


###
# my own home-built system for Python envs.

alias senv='source .env/bin/activate'
alias svenv='source .venv/bin/activate'


skip_lfs_git() {
	GIT_LFS_SKIP_SMUDGE=1 git "$@"
}
empty_commit() {
	git commit --allow-empty -m "Empty commit"
}
gone_delete() {
	git fetch -p
	git branch -vv | grep ': gone]'|  grep -v "\*" | awk '{ print $1; }' | xargs git branch -d $1
}

