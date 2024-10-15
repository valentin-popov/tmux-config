#!/bin/bash
printf "\033[32mInstalling TPM\033[0m\n.\n"
ls  ~/.tmux/plugins/tpm > /dev/null || git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
printf "\033[32mSetting catppuccin custom config\033[0m\n.\n"
cp catppuccin_mono_tmux.conf ~/.tmux/plugins/tmux/themes/catppuccin_mono_tmux.conf

if [ -s ~/.tmux.conf ]; then
    printf "\033[32mBacking up existing tmux configuration\033[0m\n.\n"
    mv ~/.tmux.conf ~/.tmux.conf.bak
else
    printf "\033[32mNo existing tmux configuration\033[0m\n.\n"
fi

printf "\033[32mSetting tmux configuration\033[0m\n.\n"
cp tmux_config.conf ~/.tmux.conf
cp catppuccin_rounded_minimal.conf ~/tmux_config/catppuccin_rounded_minimal.conf
printf "For the changes to take effect, clear the tmux cache using: tmux kill-server\n"
