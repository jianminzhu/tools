' PPT_to_TXT.vbs
'
' Extracts plain text from a PowerPoint document.  Requires Microsoft PowerPoint.
' Usage:
'  WScript PPT_to_TXT.vbs <input file> <output file>

Option Explicit

' MsoAutomationSecurity
Const msoAutomationSecurityForceDisable = 3
' OpenTextFile iomode
Const ForAppending = 8

Dim App, AutoSec, Doc, FileSys
Set FileSys = CreateObject("Scripting.FileSystemObject")
If FileSys.FileExists(WScript.Arguments(1)) Then
	FileSys.DeleteFile WScript.Arguments(1)
End If
Set App = CreateObject("Powerpoint.Application")

On Error Resume Next

App.DisplayAlerts = False
AutoSec = App.AutomationSecurity
App.AutomationSecurity = msoAutomationSecurityForceDisable
Err.Clear

Dim Cell, Comment, Row, S, Shape, Slide, TgtFile
Set Doc = App.Presentations.Open(WScript.Arguments(0), True, , False)
If Err = 0 Then
	Set TgtFile = FileSys.OpenTextFile(WScript.Arguments(1), ForAppending, True)
	For Each Slide In Doc.Slides
		For Each Shape In Slide.Shapes
			If Shape.HasTable Then
				For Each Row In Shape.Table.Rows
					S = ""
					For Each Cell In Row.Cells
						If Cell.Shape.TextFrame.HasText Then
							S = S & Cell.Shape.TextFrame.TextRange.Text
						End If
						S = S & vbTAB
					Next
					TgtFile.WriteLine S
				Next
			End If
			If Shape.HasTextFrame Then
				If Shape.TextFrame.HasText Then
					TgtFile.WriteLine Shape.TextFrame.TextRange.Text
				End If
			End If
		Next
		For Each Shape In Slide.NotesPage.Shapes
			If Shape.HasTextFrame Then
				If Shape.TextFrame.HasText Then
					TgtFile.WriteLine Shape.TextFrame.TextRange.Text
				End If
			End If
		Next
		For Each Comment In Slide.Comments
			TgtFile.WriteLine Comment.Author & vbTAB & Comment.DateTime & vbTAB & Comment.Text
		Next
	Next
	TgtFile.Close
	Doc.Close
End If

App.AutomationSecurity = AutoSec
App.Quit