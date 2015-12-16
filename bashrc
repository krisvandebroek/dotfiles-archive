# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra,git-completion,maven-aliases,mvn-completion}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Allow local customizations
[ -r ~/.bashrc_local ] && source ~/.bashrc_local;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;
