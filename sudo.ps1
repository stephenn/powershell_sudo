# *********************
#  Sudo for PowerShell
# *********************
#
# Installation
# ============
# 1) From PowerShell, create a $profile if you don't have one::
# 
#     if (!(test-path $profile)) { new-item -path $profile -itemtype file -force }
# 
# 2) Open the profile in notepad::
# 
#     notepad.exe $profile
#     
# 3) Add the following line and save the file::
# 
#    . /path/to/sudo.ps1
# 
# 4) sudo will be available in all new PowerShell windows
#
# Usage
# =====
# sudo application [arguments ...]
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

