#############################################
# Environment Variable
#############################################

let-env PATH = ($env.PATH | prepend $"($env.HOME)/bin")
let-env GPG_TTY = (tty)
