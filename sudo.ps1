# *********************
#  Sudo for PowerShell
# *********************
#
# Installation
# ============
# Copy and paste the function into or add the following line to your $profile:
#
#    . /path/to/sudo.ps1
#
# Usage
# =====
# $ sudo application [arguments]
#
# Contact
# =======
# Stephen Norum
# stephen@mybunnyhug.org
# http://www.mybunnyhug.org/

function sudo()
{
    if ($args.Length -eq 1)
    {
        start-process $args[0] -verb "runAs"
    }
    if ($args.Length -gt 1)
    {
        start-process $args[0] -ArgumentList $args[1..$args.Length] -verb "runAs"
    }
}

