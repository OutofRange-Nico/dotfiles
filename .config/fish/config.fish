if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting ""

    alias btrfortune='fortune -a -s | head -n 1 | figlet | lolcat'
    alias fortunecow='fortune -a -s | head -n 1 | cowsay | lolcat'

    alias l='exa -lahF --color=always --icons --sort=size --group-directories-first'
    alias ls='exa -lhF --color=always --icons --sort=size --group-directories-first'
    alias lst='exa -lahFT --color=always --icons --sort=size --group-directories-first'

    alias matrix='unimatrix -f -l ocCgGkS -s 96'
    alias clock='tty-clock -sct -C 4'
    alias pipes='pipes -p 5 -R -t 1 -r 0'
    alias vi="lvim $argv" 
    colorscript -r
end

# Created by `pipx` on 2022-01-05 18:57:01
set PATH $PATH /home/nico/.local/bin
export PATH="$PATH:$HOME/.spicetify"
export PATH="$HOME/.cargo/bin:$PATH"
