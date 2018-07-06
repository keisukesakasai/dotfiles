ZPLUG_SUDO_PASSWORD=
ZPLUG_PROTOCOL=ssh

# zplug
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "~/.zsh", from:local, use:"<->_*.zsh"

# theme
zplug 'mafredri/zsh-async'
zplug 'sindresorhus/pure'

# highlight
zplug 'zsh-users/zsh-syntax-highlighting', defer:2

# history
zplug 'zsh-users/zsh-history-substring-search'

# type-completion
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-completions'
zplug 'chrissicool/zsh-256color'
