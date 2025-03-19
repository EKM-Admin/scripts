# Usage: dot source this file to use the Get-Emoji function
# after that, you can use the function to get the emojis you want - all you need is the hex code of the emoji - use it together with the Get-Emoji function
# example: $laughingFaceSymbol = Get-Emoji "1F604"
# in addition, you can use the emojis that are already defined in the script

function Get-Emoji {
    param ([string]$hex) # the only parameter the function needs is the hex value of the desired emoji
    [System.Char]::ConvertFromUtf32([System.Convert]::ToInt32($hex, 16))
}

# categories
$packageSymbol = Get-Emoji "1F4E6"
$detectionSymbol = Get-Emoji "1F50D"
$cogWheelSymbol = Get-Emoji "2699"
$remediationScriptSymbol = Get-Emoji "1F6E0"

# statuses
$checkSymbol = Get-Emoji "2705"
$failedSymbol = Get-Emoji "274C"
$warningSymbol = Get-Emoji "26A0"
$stillRunningSymbol = Get-Emoji "1F504"

# use the emojis in a telegram message
# $Message = "Emoji Test. Categories: $packageSymbol $detectionSymbol $cogWheelSymbol $remediationScriptSymbol. Status: $checkSymbol $failedSymbol $warningSymbol $stillRunningSymbol"
# Invoke-WebRequest -Uri "https://api.telegram.org/$env:tlg_bot_id/sendMessage" -Method Post -Body @{chat_id="$env:tlg_chat_id_test"; text=$Message } -UseBasicParsing
