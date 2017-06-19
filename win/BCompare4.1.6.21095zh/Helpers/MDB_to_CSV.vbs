' MDB_to_CSV.vbs
'
' Converts an Access table to a comma-separated text file.  Requires Microsoft Access.
' Usage:
'  WScript MDB_to_CSV.vbs <input file> <output file>

Option Explicit

' AcTextTransferType
Const acExportDelim = 2
' OpenTextFile iomode
Const ForReading = 1
Const ForAppending = 8

Dim App, FileSys
Set FileSys = CreateObject("Scripting.FileSystemObject")
If FileSys.FileExists(WScript.Arguments(1)) Then
	FileSys.DeleteFile WScript.Arguments(1)
End If
Set App = CreateObject("Access.Application")

On Error Resume Next

Dim I, Table, TgtFile, TmpFile, TmpFilenames()
App.OpenCurrentDatabase WScript.Arguments(0)
App.Visible = False
If Err = 0 Then
	I = 0
	For Each Table In App.CurrentData.AllTables
		If Left(Table.Name, 4) <> "MSys" Then
			I = I + 1
		End If
	Next
	ReDim TmpFilenames(I - 1)
	Set TgtFile = FileSys.OpenTextFile(WScript.Arguments(1), ForAppending, True)
	I = 0
	For Each Table In App.CurrentData.AllTables
		If Left(Table.Name, 4) <> "MSys" Then
			TgtFile.WriteLine """TABLE " & Table.Name & """"
			TmpFilenames(I) = FileSys.GetSpecialFolder(2) & "\" & FileSys.GetTempName
			App.DoCmd.TransferText acExportDelim, "", Table.Name, TmpFilenames(I)
			Set TmpFile = FileSys.OpenTextFile(TmpFilenames(I), ForReading)
			TgtFile.Write TmpFile.ReadAll
			TmpFile.Close
			If I <> UBound(TmpFilenames) Then
				TgtFile.WriteLine
			End If
			I = I + 1
		End If
	Next
	TgtFile.Close
	App.CloseCurrentDatabase
End If

App.Quit

For I = 0 To UBound(TmpFilenames)
	If FileSys.FileExists(TmpFilenames(I)) Then
		FileSys.DeleteFile TmpFilenames(I)
	End If
Next