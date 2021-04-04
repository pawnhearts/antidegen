antigen() {
	cmd="$1"
	shift 1
	if [[ "$cmd" -eq "bundle" ]]; then
		PPATH="$ZSH_CUSTOM/plugins/$(basename "$1")"

		[ -d "$PPATH" ] || git clone  "https://github.com/$1" "$PPATH" 

		[ -e "$PPATH/"*.zsh ] && source "$PPATH/"*.zsh

	fi
}

