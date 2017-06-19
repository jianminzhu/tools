' DOC_to_VBA.vbs
'
' Extracts VBA objects from a Word document.  Requires Microsoft Word.
' Usage:
'  WScript DOC_to_VBA.vbs <input file> <output file>

Option Explicit

' MsoAutomationSecurity
Const msoAutomationSecurityForceDisable = 3
' OpenTextFile iomode
Const ForReading = 1
Const ForAppending = 8

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

Dim Component, I, Names(), Reference, TgtFile, TmpFile, TmpFilenames()
Set Doc = App.Documents.Open(WScript.Arguments(0), False, True)
If Err = 0 Then
	Set TgtFile = FileSys.OpenTextFile(WScript.Arguments(1), ForAppending, True)
	I = Doc.VBProject.VBComponents.Count
	If I > 0 Then
		ReDim Names(I - 1)
		ReDim TmpFilenames(I - 1)
		I = 0
		For Each Component In Doc.VBProject.VBComponents
			Names(I) = Component.Name
			I = I + 1
		Next
		SortNames
		For I = 0 To UBound(Names)
			TgtFile.WriteLine "'********" & Names(I) & "********"
			TmpFilenames(I) = FileSys.GetSpecialFolder(2) & "\" & FileSys.GetTempName
			Doc.VBProject.VBComponents(Names(I)).Export TmpFilenames(I)
			Set TmpFile = FileSys.OpenTextFile(TmpFilenames(I), ForReading)
			TgtFile.Write TmpFile.ReadAll
			TmpFile.Close
		Next
	End If
	I = Doc.VBProject.References.Count
	If I > 0 Then
		TgtFile.WriteLine "'********REFERENCES********"
		ReDim Names(I - 1)
		I = 0
		For Each Reference In Doc.VBProject.References
			Names(I) = Reference.Name & Chr(9) & Reference.Description
			I = I + 1
		Next
		SortNames
		For I = 0 To UBound(Names)
			If Names(I) <> "" Then
				TgtFile.WriteLine "'" & Names(I)
			End If
		Next
	End If
	TgtFile.Close
	Doc.Close False
End If

App.AutomationSecurity = AutoSec
App.Quit

For I = 0 To UBound(TmpFilenames)
	If FileSys.FileExists(TmpFilenames(I)) Then
		FileSys.DeleteFile TmpFilenames(I)
	End If
Next

Sub SortNames
	Dim I, J, T
	For I = UBound(Names) - 1 To 0 Step -1
		For J = 0 To I
			If Names(J) > Names(J + 1) Then
				T = Names(J + 1)
				Names(J + 1) = Names(J)
				Names(J) = T
			End If
		Next
	Next
End Sub
