#NoEnv
SetBatchLines, -1
SetTitleMatchMode, 2

; === Settings ===
targetExe := "ahk_exe GeForceNOW.exe"
intervalMs := 170000          ; Interval between actions (milliseconds) approx 3 Minutes
mx := 5
my := 5

; === Get window handle ===
WinGet, hwnd, ID, %targetExe%
if !hwnd {
    MsgBox, 16, Error, GeForce NOW window not found!
    ExitApp
}

; === Main loop ===
Loop
{
    ; Slightly move the mouse in the background (WM_MOUSEMOVE)
    mx++
    if (mx > 20)              ; reset x position after a few cycles
        mx := 5

    ; Send WM_MOUSEMOVE message to the GeForce NOW window
    PostMessage, 0x200, 0, (mx<<16)|my,, ahk_id %hwnd%

    Sleep, %intervalMs%       ; wait before repeating
}
