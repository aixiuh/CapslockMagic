;=====================================================================o
;                      Application

; a = appearence | window | shot
;CapsLock & a::
;{
;    ; 魔鬼逻辑：当前{}大括号内，caps+a永远为按下，方法内无法修改此前提
;    ; 跳出问题，大括号之外释放热键
;    if GetKeyState("LAlt", "p") {
;        Window.move()
;    }
;    else if GetKeyState("LWin", "p") {
;        Mouse.move()
;    }
;    else if GetKeyState("LCtrl", "p") {
;        Window.zoom()
;    }
;    else {
;        return
;    }
;    GC.ModifyKey()
;}
;
;
;; d = database | api docs
;CapsLock & d::
;{
;    if GetKeyState("Alt")
;    {
;        App.apifox.run()
;    } else if GetKeyState("Ctrl")
;    {
;        App.redisManager.run()
;    } else
;    {
;        App.navicat.run()
;    }
;}
;
;; f = find | search cabinet
;CapsLock & f::
;{
;    if GetKeyState("Ctrl") {
;        WinOS.Manager.explorer()
;    }
;    else {
;        App.everything()
;    }
;    IME.set("EN")
;}

; g = google
CapsLock & g::
{
    if GetKeyState("Ctrl") or GetKeyState("Alt")
    {
        App.Chrome.searchSelected()
    }
    else
    {
        App.Chrome.run()
    }
}

;; e = editor
;CapsLock & e::
;{
;    if GetKeyState("Alt")
;    {
;        App.drawio()
;    }
;    else {
;        App.notion()
;    }
;}
;
;; r = run | develop | java | back-end
;CapsLock & r::
;{
;    if GetKeyState("Ctrl")
;    {
;        App.Uniapp.activate()
;    }
;    else if GetKeyState("LWin") {
;        App.jmeter()
;    }
;    else if GetKeyState("Alt")
;    {
;        App.todesk.run()
;    } else {
;        App.Idea.activate()
;    }
;}
;
;; t = terminal | develop | front-end
;CapsLock & t::
;{
;    if GetKeyState("Ctrl")
;    {
;        App.WxDevTools.activate()
;    }
;    else if getKeyState("Alt")
;    {
;        App.Tabby.run()
;    }
;    else if getKeyState("LWin")
;    {
;        App.hwMirror()
;    }
;    else
;    {
;        App.Vscode.run()
;    }
;}
;
;

;=====================================================================o
;                    Copy & Paste Enhancement
; c = copy
; 强化复制粘贴，光标只在两处徘徊时
;CapsLock & c::
;{
;    if !GetKeyState("Alt") {
;        Send "^c"
;        ClipWait 4
;    } else {
;        ; 正则去掉换行符号
;        A_Clipboard := ""
;        Send "^c"
;        ClipWait 4
;        A_Clipboard := RegExReplace(A_Clipboard, "`r`n")
;    }
;    Sleep 100
;    Send "!{Tab}"
;    Sleep 200
;    Send "^v"
;}
;
;; v = paste | clipboard
;CapsLock & v::
;{
;    App.ditto()
;}


;=====================================================================o
;                    DevUtil
; !0:: Locator.getMousePosCode()
; 看电视
CapsLock & 8:: Send "{Media_Play_Pause}"