!x::  ; Alt + X
InputBox, searchTerm,,, , 200, 120
if (searchTerm = "")
    return

StringReplace, searchTerm, searchTerm, %A_Space%, +, All
url := "https://duckduckgo.com/?q=\+" . searchTerm
Run, chrome.exe --new-tab %url%
return
