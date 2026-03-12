if status is-interactive

    # Commands to run in interactive sessions can go here
end

# navigation
alias v='vifm .'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias odoo='/Users/budi/.pyenv/versions/odoo14/bin/python /Users/budi/odoo/odoo-bin --config=/Users/budi/.config/odoorc'
alias odoo16='cd /Users/budi/odoo16/ && source .venv/bin/activate.fish && python odoo-bin -c odoo.conf'
alias odoo16b='cd /Users/budi/odoo16/ && source .venv/bin/activate.fish && python odoo-bin -c odoo.conf -d testMedic -i medical'
alias c='claude'
alias cm='claude-monitor'
alias claude-team='claude "Use team-configurator to set up my AI development team"'
alias cc='CLAUDE_CONFIG_DIR=~/.claude2 claude'

# vim and emacs
alias vim='nvim'

alias o="cd ~/dev_odoo9 && docker-compose up -d && docker exec -it odoo bash"

function __check_nvm --on-variable PWD --description 'Do nvm stuff'
    if test -f .nvmrc
        set node_version (node -v)
        set nvmrc_node_version (nvm list | grep (cat .nvmrc))

        if set -q $nvmrc_node_version
            nvm install
        else if string match -q -- "*$node_version" $nvmrc_node_version
            # already current node version
        else
            nvm use
        end
    end
end

__check_nvm

# pnpm
set -gx PNPM_HOME /Users/budisentosa/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# direnv hook fish | source
direnv hook fish | source
direnv export fish | source

# oh-my-posh init fish | source

oh-my-posh init fish --config ~/Documents/dotfiles3/oh-my-posh/mytheme.omp.json | source

# oh-my-posh init fish --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/jandedobbeleer.omp.json' | source 

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# Added by Windsurf
fish_add_path /Users/budi/.codeium/windsurf/bin

starship init fish | source

if test "$TERM_PROGRAM" = ghostty
    set -x TERM xterm-256color
end

# Added by Antigravity
fish_add_path /Users/budi/.antigravity/antigravity/bin

# OpenClaw Completion
source "/Users/budi/.openclaw/completions/openclaw.fish"
