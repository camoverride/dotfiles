# function to get current git branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/✚\1)/'
}

# function to detect whether in home or work github profile
parse_git_username() {
	USER=$(git config --list 2> /dev/null | grep user.name 2> /dev/null | sed -e 's/user.name//' | sed -e 's/=//')
	GIT=$(git rev-parse --is-inside-work-tree 2> /dev/null)
	if [ "$GIT" = true ]; then
		# your home username here
		if [[ "$USER" = *"your-home-username"* ]]; then
			echo " (home"
		# your work username here
		elif [[ "$USER" = *"your-work-username"* ]]; then
			echo " (work"
		else
			echo " (other"
		fi;
	fi;
}

# prompt includes username, current path, and username/branch, with yellow/green color scheme
export PS1="\e[0;33m\]\u\w\[\033[32m\]\$(parse_git_username)\$(parse_git_branch)\[\033[00m\] $ "
