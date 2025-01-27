# Env variables
# system
set -gx COLORTERM truecolor
set -gx EDITOR nvim
set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8
set -gx BROWSER qutebrowser
set -gx TERM tmux-256color
set -gx VULKAN_SDK /home/fox/.vulkan/1.3.296.0/x86_64
set -gx LD_LIBRARY_PATH $VULKAN_SDK/lib
set -gx VK_ICD_FILENAMES /usr/share/vulkan/icd.d/nvidia_icd.json
set -gx VK_LAYER_PATH $VULKAN_SDK/share/vulkan/explicit_layer.d
set -gx VK_ADD_LAYER_PATH $VULKAN_SDK/share/vulkan/explicit_layer.d
set -gx VK_LOADER_LAYERS_ENABLE "*api_dump:*validation"
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx AICHAT_PLATFORM openai
set -gx PYENV_ROOT /home/fox/.pyenv

# fish
set -g fish_key_bindings fish_vi_key_bindings
set -g fish_bind_mode insert

