# zsh plugins installed via homebrew and sourced into the current shell session.

# Real-time typeahead options in a dropdown list beneath your current shell entry.
# https://github.com/marlonrichert/zsh-autocomplete
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Suggest complete commands based on your shell history.
# https://github.com/zsh-users/zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax-highlighting for typed commands in your shell.
# https://github.com/zsh-users/zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Finds aliases of your typed commands.
# https://github.com/MichaelAquilina/zsh-you-should-use
source /opt/homebrew/share/zsh-you-should-use/you-should-use.plugin.zsh

# Aliases and helpers, each for specific CLI tools.
for file in /Users/luke/.zsh/*.plugin.zsh; do
  [ -f "$file" ] && source "$file"
done

# Completion data for specific CLI tools.
# https://zsh.sourceforge.io/Doc/Release/Functions.html
fpath=(/Users/luke/.zsh/completions $fpath)

# Custom Aliases
# Provide a more useful directory listing.
alias ll="ls -lGa --color=auto"
# "bundle" is a lot of characters to type out. Make it less verbose.
alias bdl="bundle"
# I use clear sometimes (probably more than I should).
alias cl="clear"

# GPG stuff.
export GPG_TTY=$(tty)

# Include Python in our path for python scripts.
export PATH="/Users/luke/Library/Python/3.9/bin:$PATH"

# Initialize starship prompt. https://starship.rs.
eval "$(starship init zsh)"
# Initialize zoxide as a smarter cd.
eval "$(zoxide init zsh)"
