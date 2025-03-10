#Include GarbageCollector.ahk

; Integrated Development Environment
class IDE {

    static run(){
        Send "{blind!}^{F9}"
    }

    ; 开始调试
    static debug() {
        Send "^+d"
    }

    ; 服务监控
    static service() {
        Send "!8"
    }

    ; 终端
    static terminal() {
        Send "!{F12}"
        GC.ModifyKeyDocker()
    }

; 输入法管家
static esc() {
    ; 如果先返回，图片消失了，就检测不到了，所以最后返回
    Send "{Esc}"
    ; 异步调用，提升速度
    SetTimer () => IME.set("EN"), -200
}

    ; 在哪关联使用
    static usage() {
        Send "{blind}!+{F7}"
        ToolTip "👥"
    }

    ; 它的继承实现类子孙
    static hierarchy() {
        Send "{blind}^h"
        ToolTip "👶"
    }


    ; 打印日志方便调试
    class Log {

        static info()
        {
            if (App.Vscode.isActive()) {
                SendText "console.log()"
            } else if (App.Idea.isActive()) {
                SendText "log.info()"
            }
            Send "{Left}"
        }

        ; 前提：[NORMAL] Ctrl+C / y 拷贝
        static infoPaste()
        {
            Send "{Esc}"
            Sleep 200
            SendText "o"
            Sleep 300
            if (App.Vscode.isActive()) {
                SendText "console.log()"
                Sleep 50
                Send '{Left}"' A_Clipboard '{Right}, ' A_Clipboard '{Right};'
            } else if (App.Idea.isActive()) {
                SendText "log.info()"
                Sleep 50
                Send '{Left}"' A_Clipboard
                SendText ' {}'
                Send '{Right}, ' A_Clipboard '{Right};'
            }
            Send "{Esc}"
        }

    }

}