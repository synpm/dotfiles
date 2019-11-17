readonly DOTFILES=~/dotfiles

for dotfile in ${DOTFILES}/.[^\.]*; do
	[[ ${dotfile} == "${DOTFILES}/.git" ]] && continue

	ln -fsv ${dotfile} ~/$(basename ${dotfile})
done
