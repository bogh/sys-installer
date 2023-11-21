#!/bin/bash

TOML_CONFIG=<<<EOF
# Get editor completions based on the config schema
"$schema" = 'https://starship.rs/config-schema.json'

# Inserts a blank line between shell prompts
# add_newline = true

# Replace the "❯" symbol in the prompt with "➜"
# [character] # The name of the module we are configuring is "character"
# success_symbol = "[➜](bold green)" # The "success_symbol" segment is being set to "➜" with the color "bold green"

# Disable the package module, hiding it from the prompt completely
# [package]
# disabled = true

[aws]
disabled = true

# [time]
# disabled = false
# format = '🕙[\[ $time \]]($style) '
# time_format = '%T'
# utc_time_offset = '-5'
# time_range = '10:00:00-14:00:00'

[status]
style = 'bg:blue'
# symbol = '🔴 '
# success_symbol = '🟢 SUCCESS'
# format = '[\[$symbol$common_meaning$signal_name$maybe_int\]]($style) '
map_symbol = true
disabled = false

[git_status]
conflicted = '🏳'
up_to_date = '✓'
untracked = '🤷'
stashed = '📦'
modified = '📝'
staged = '[++\($count\)](green)'
renamed = '👅'
deleted = '🗑'
ahead = '⇡${count}'
diverged = '😵⇕⇡${ahead_count}⇣${behind_count}'
behind = '😰⇣${count}'

[python]
# Display the version of python from inside a local venv.
#
# Note this will only work when the venv is inside the project and it will only
# work in the directory that contains the venv dir but maybe this is ok?
python_binary = ['./venv/bin/python', 'python', 'python3', 'python2']


[nodejs]
format = '[🤖 $version](bold green) '

EOF

apt-get install -y aptitude
aptitude install fish

curl -sS https://starship.rs/install.sh | sh

mkdir -p $HOME/.config/fish
printf "\n\nstarship init fish | source" >> $HOME/.config/fish/config.fish

echo $TOML_CONFIG > $HOME/.config/startship.toml

# raw github file: https://raw.githubusercontent.com/bogh/sys-installer/fa6e00e5afaa6c72a1c49bde1d766ec1810916db/ubuntu/starship.sh
