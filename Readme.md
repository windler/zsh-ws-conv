# zsh-ws-conv
This is a `oh-my-zsh` plugin that lets you generate aliases for changing directory to all
cloned projects. Also, you can define a IDE command an launch every cloned project directly
from shell.

## Installation
In order to install you need `oh-my-zsh`. Then you can install the plugin doing the following:


```
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/windler/zsh-ws-conv.git
zsh
```

## Preconditions
After installing the plugin you have to define two variables. This plugin needs to know the root
directory of your projects and the IDE command you are using. The archive this you can add the following
variables to your `~/.zshrc` file.

```
__PROJECTS_BASE_DIR=~/projects
__PROJECTS_IDE=pstorm #Example for phpstorm
```

## Usage
The basic commands are
```
ws
<ide>ws
```

For each project there will be an alias to start your IDE or `cd`. E.g. you got an project called
`my_project` you have the following aliases as well
```
wsmy_project
<ide>my_project # E.g. pstormmy_project
```

Remmeber that `zsh` lets you autocomplete all your aliases. So just type `ws<tab>` to list all
possibilities.
