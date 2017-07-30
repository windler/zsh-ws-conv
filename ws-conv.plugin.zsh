## AUTHOR: Nico Windler
## 07.2017
## NEEDS:
### __PROJECTS_BASE_DIR: basedir of all projects
### __PROJECTS_IDE: ide command to launch project

alias ws="cd $__PROJECTS_BASE_DIR"
alias ${__PROJECTS_IDE}ws="$__PROJECTS_IDE $__PROJECTS_BASE_DIR"

#generate alias and ide command for each project
for d in "$__PROJECTS_BASE_DIR"/*/;
do
    dir=$(BASENAME $d);
    alias ws$dir="cd $__PROJECTS_BASE_DIR/$dir" && alias $__PROJECTS_IDE$dir="ws$dir && $__PROJECTS_IDE $d";
done
