CapsLock & WheelUp::SendInput "{Blind}^#{Left}"  ; CapsLock + 滚轮上 -> 上一个桌面
CapsLock & WheelDown::SendInput "{Blind}^#{Right}" ; CapsLock + 滚轮下 -> 下一个桌面
CapsLock & LButton::
{
    Send "^c"  ; 复制
    Sleep 100  ; 等待 100ms，确保剪贴板更新
}

CapsLock & RButton::
{
    Send "^v"  ; 粘贴
}
