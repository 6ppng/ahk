mouseDelay = 3
edgeRate = 0.05

!1::
{
    WinGetActiveStats, Title, Width, Height, X, Y
    MouseMove, Round(Width*edgeRate), Round(Height*edgeRate), mouseDelay
}
Exit, 0

!2::
{
    WinGetActiveStats, Title, Width, Height, X, Y
    MouseMove, Width//2, Round(Height*edgeRate), mouseDelay
}
Exit, 0

!3::
{
    WinGetActiveStats, Title, Width, Height, X, Y
    MouseMove, Round(Width*(1-edgeRate)), Round(Height*edgeRate), mouseDelay
}
Exit, 0

!4::
{
    WinGetActiveStats, Title, Width, Height, X, Y
    MouseMove, Round(Width*edgeRate), Height//2, mouseDelay
}
Exit, 0

!5::
{
    WinGetActiveStats, Title, Width, Height, X, Y
    MouseMove, Width//2, Height//2, mouseDelay
}
Exit, 0

!6::
{
    WinGetActiveStats, Title, Width, Height, X, Y
    MouseMove, Round(Width*(1-edgeRate)), Height//2, mouseDelay
}
Exit, 0

!7::
{
    WinGetActiveStats, Title, Width, Height, X, Y
    MouseMove, Round(Width*edgeRate), Round(Height*(1-edgeRate)), mouseDelay
}
Exit, 0

!8::
{
    WinGetActiveStats, Title, Width, Height, X, Y
    MouseMove, Width//2, Round(Height*(1-edgeRate)), mouseDelay
}
Exit, 0

!9::
{
    WinGetActiveStats, Title, Width, Height, X, Y
    MouseMove, Round(Width*(1-edgeRate)), Round(Height*(1-edgeRate)), mouseDelay
}
Exit, 0

#v::
{
    appName = vivaldi.exe
    appPath = C:\Users\r0pp0\AppData\Local\Vivaldi\Application
    runAndAvtivate(appName, appPath)
}
Exit, 0

#e::
{
    appName = TE64.exe
    appPath = C:\Program Files\Tablacus Explorer\te200612
    runAndAvtivate(appName, appPath)
}
Exit, 0

runAndAvtivate(appName, appPath){

    DetectHiddenWindows, on

    Run, %appName%, %appPath%
    activeWindowName = ""
    While (activeWindowName != appName){
        WinActivate, ahk_exe %appName%
        WinGet, activeWindowName, ProcessName, A
    }

    DetectHiddenWindows, off
}