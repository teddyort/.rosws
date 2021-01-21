# .rosws
A ROS workspace switcher

A simple tool to enable switching easily between ROS workspaces. It allows changing the default environment setup script that will be run in all new terminals by invoking the `set_rosws` command.

# Usage
`set_rosws [workspace_name]` will make the setup script located in the _~/.rosws/workspaces/[workspace_name]_ the new default.

# Tab Completion
Try typing `set_rosws [tab][tab]` to see a list of available workspaces located in _~/.rosws/workspaces/_. Typing `set_rosws ex [tab][tab]` will also tab complete to `set_rosws example`

# Installation
1. Clone to your home directory (Should create the directory _~/.rosws/_
2. In _*~/.bashrc_, remove any custom ROS workspaces you are sourcing, and replace with:
`source ~/.rosws/setup.bash`
3. In _~/.rosws/workspaces/_ add a single file to be sourced for each workspace. The name of the file will be passed as `[workspace_name]` when invoking `set_rosws [workspace_name]` (see _~/.rosws/workspaces/example_ for an example.)
