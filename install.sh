#!/bin/bash
echo "\033[32mInstalling TPM\033[0m\n."
ls  ~/.tmux/plugins/tpm > /dev/null || git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "\033[32mSetting catppuccin custom config\033[0m\n."
cp catppuccin_mono_tmux.conf ~/.tmux/plugins/tmux/themes/catppuccin_mono_tmux.conf


if [ -s ~/.tmux.conf ]; then
    echo "\033[32mBacking up existing tmux configuration\033[0m\n."
    mv ~/.tmux.conf ~/.tmux.conf.bak
else
    echo "\033[32mNo existing tmux configuration\033[0m\n."
fi

echo "\033[32mSetting tmux configuration\033[0m\n."
cp tmux_config.conf ~/.tmux.conf
echo "For the changes to take effect, clear the tmux cache using: tmux kill-server"