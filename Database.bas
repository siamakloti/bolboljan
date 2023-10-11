B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=12.2
@EndOfDesignText@
Sub Class_Globals
	Private sql As SQL
	Private jsParser As JSONParser
'	Private jsGen As JSONGenerator
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize( dbName As String)
	Dim rp As RuntimePermissions
	If sql.IsInitialized = False Then
		sql.Initialize(rp.GetSafeDirDefaultExternal("") , dbName , True)
	End If
	
End Sub

Public Sub Save_Post( data As String) 
	
	jsParser.Initialize(data)
	jsParser.NextObject
	
End Sub