' DOC_to_TXT.vbs
'
' Extracts plain text from a Word document.  Requires Microsoft Word.
' Usage:
'  WScript DOC_to_TXT.vbs <input file> <output file>
'
' Word wrapping currently wraps at the same position that MS Word would normally
' do.  To change that remove the ' from the start of the doc.PageSetup line and change 'X'.
' The value is in inches, and changing X to 5 results in about 80 characters per line.
' To disable word wrapping, change the value of WordWrap to False.

Option Explicit

' WdLineEndingType
Const wdCRLF = 0
' WdSaveFormat
Const wdFormatUnicodeText = 7 ' Unicode text without formatting
' MsoAutomationSecurity
Const msoAutomationSecurityForceDisable = 3
' MsoEncoding
Const msoEncodingUTF8 = 65001

Dim App, AutoSec, Doc, FileSys
Set FileSys = CreateObject("Scripting.FileSystemObject")
If FileSys.FileExists(WScript.Arguments(1)) Then
	FileSys.DeleteFile WScript.Arguments(1)
End If
Set App = CreateObject("Word.Application")

On Error Resume Next

App.DisplayAlerts = False
AutoSec = App.AutomationSecurity
App.AutomationSecurity = msoAutomationSecurityForceDisable
Err.Clear

Dim Shape, WordWrap
Set Doc = App.Documents.Open(WScript.Arguments(0), False, True)
If Err = 0 Then
	For Each Shape In Doc.Shapes
		Shape.ConvertToFrame
	Next
	WordWrap = True
	'Doc.PageSetup.PageWidth = 72 * X
	Doc.SaveAs WScript.Arguments(1), wdFormatUnicodeText, , , False, , , False, , , , msoEncodingUTF8, WordWrap, False, wdCRLF, False
	Doc.Close False
End If

App.AutomationSecurity = AutoSec
App.Quit