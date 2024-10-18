# divefiles

What's a divefile repository? Well—we first need to discuss dotfiles. These are usually a collection of files placed in the user's home directory, the filename prefixed with a dot (hence "dotfile"). Each dotfile usually configures or is the state responsible for a certain program on a user's system. For example, `.zshrc` will configure your zsh terminal, while `.gitconfig` will be used by `git` to customise your preferences for that's program's experience.

These are generally collected by users into git repositories, and it has become popular to share these files to represent your machine's configuration. However, macOS as an operating system has several additional mechanisms for setting system preferences—namely `defaults`—which are programmatically interacted with. macOS also has several limitations which _prevent_ programmatic customisation—installation of App Store apps programmatically is challenging at best.

A divefile repository is operated on by `diveboard-cli`, a macOS customisation script that makes the most of what macOS provides, whilst still alerting you to customisations outside its control.
