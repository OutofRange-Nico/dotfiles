set -g VIRTUALFISH_VERSION 2.5.4
set -g VIRTUALFISH_PYTHON_EXEC /home/nico/.local/pipx/venvs/virtualfish/bin/python
source /home/nico/.local/pipx/venvs/virtualfish/lib/python3.10/site-packages/virtualfish/virtual.fish
source /home/nico/.local/pipx/venvs/virtualfish/lib/python3.10/site-packages/virtualfish/auto_activation.fish
source /home/nico/.local/pipx/venvs/virtualfish/lib/python3.10/site-packages/virtualfish/projects.fish
source /home/nico/.local/pipx/venvs/virtualfish/lib/python3.10/site-packages/virtualfish/update_python.fish
emit virtualfish_did_setup_plugins