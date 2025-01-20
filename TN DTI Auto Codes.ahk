
;by tab nation v1.0

;=======================get codes from pastebin=======================
UrlDownloadToFile, https://raw.githubusercontent.com/tabnation/Roblox-DTI-auto-codes/refs/heads/main/codes.txt, codes.txt  ;grab all the codes and temp save it to codes.txt
FileRead, data, downloaded.txt


msgbox, open dti and code menu in roblox before pressing ok  , f1 to close macro
; ========================getmouse pos================================
tooltip, open the code menu and left click in the where you type the code
KeyWait, LButton, D
MouseGetPos , xpos1, ypos1
tooltip, now click the redeem button
sleep 500
KeyWait, LButton, D
MouseGetPos , xpos2, ypos2
tooltip, last click where the close button would apear (towards the bottom of screen under reddem button)
sleep 500
KeyWait, LButton, D
MouseGetPos , xpos3, ypos3
tooltip,

Loop, Read, codes.txt
{
    Click, %xpos1%, %ypos1%   ;double cliks the text box for code
    Sleep, 100
    Click, %xpos1%, %ypos1%
    Sleep, 300
    Send, %A_LoopReadLine%
    Sleep, 500
    Click, %xpos2%, %ypos2%   ;clicks enter button
    Sleep, 1300
    Click, %xpos3%, %ypos3%    ; clicks the close button
    Sleep, 500
}

msgbox, "All done now you can delete the codes.txt file if you want"


f1::exitapp   ;press f1 incase you want to stop the macro early