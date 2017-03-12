<####WEBSTR4
        Russell Webster <russ@rwebster.co.uk> <russell.webster@aviva.com>
        Russell's profile - Personal
#>

# Prompt
function Prompt {
    # Some unicode characters ❤✓☀★☂♞☯☭☢€☎∞❄♫₽ ✔

    if ($?) 
    { 
        $prevExit = "[✔]"
        $prevExitColour = "Green"
    } 
    elseif (!$?) 
    { 
        $prevExit = "[✘]"
        $prevExitColour = "Red"
    }
    else
    {
        $prevExit = "[?]"
        $prevExitColour = "Magenta"
    }


    ### Set window title
    #######################

    #$host.ui.rawui.WindowTitle = "[D:" + $td + "|Q:" + $tqd + "][R:" + $ss + "][PS" + $PSVersionTable.PSVersion + "][" + $env:USERNAME.toupper() + "@" + $env:COMPUTERNAME + "] Powershell"
    #$env:USERNAME + "@" + $env:COMPUTERNAME + ":powershell" + $PSVersionTable.PSVersion



    ### LINE 1
    ######################

    Write-Host $env:USERNAME.ToLower() -NoNewline -ForegroundColor Green
    Write-Host " at " -NoNewline
    Write-Host $env:COMPUTERNAME.ToLower() -NoNewline -ForegroundColor Red
    Write-Host " in " -NoNewline
    Write-Host $pwd -NoNewline -ForegroundColor Cyan
    Write-Host " " -NoNewline
    Write-Host $prevExit -ForegroundColor $prevExitColour -NoNewline

    Write-Host " [" -ForegroundColor Red -NoNewline
    Write-Host (Get-Date).ToShortTimeString() -NoNewline
    Write-Host "]" -ForegroundColor Red -NoNewline

    ### LINE 2
    ######################
    Write-Host "`nPS" -NoNewline
    Write-Host ">" -ForegroundColor Red -NoNewline      

    
    return " ";

}


Set-alias l ls
cd "D:\scripts\powershell"