#############################################
# Custom Functions
#############################################
#
# https://www.nushell.sh/book/custom_commands.html
# https://www.nushell.sh/book/modules.html
# 
# ---- Example ----
#
# export def foo [] {
#     "foo"
# }
#

def exist [path: string] {
    $path | path exists
}

# Need to add other package manager
def pckg-update [] {
    if exist "/usr/bin/pacman" {
        ^sudo pacman -Syu
    }
}

def pckg-install [pckg: string] {
    if exist "/usr/bin/pacman" {
        ^sudo pacman -S $pckg
    }
}

def pckg-remove [pckg: string] {
    if exist "/usr/bin/pacman" {
        ^sudo pacman -R $pckg
    }
}