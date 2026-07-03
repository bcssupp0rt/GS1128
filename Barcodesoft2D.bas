Attribute VB_Name = "Barcodesoft2D"
Dim cruflBCSObj As Object

Public Function ascii2Char(strInput As String) As String
Dim i As Integer
Dim strTemp As String
Dim nPos As Integer
Dim nValue As Integer

i = 1
nPos = InStr(i, strInput, "&#", vbTextCompare)
While (nPos > 0)
    ascii2Char = ascii2Char + Left(strInput, nPos - 1)
    strInput = Right(strInput, Len(strInput) - nPos + 1)
    i = 3
    strTemp = ""
    While (i <= Len(strInput) And IsNumeric(Mid(strInput, i, 1)) And Len(strTemp) < 3)
        strTemp = strTemp + Mid(strInput, i, 1)
        i = i + 1
    Wend
    nValue = 0
    If (strTemp <> "") Then nValue = Val(strTemp)
    If (nValue >= 0 And nValue < 256) Then
        ascii2Char = ascii2Char + Chr(nValue)
    Else
        ascii2Char = ascii2Char + Left(strInput, i - 1)
    End If
    If (i <= Len(strInput) And Mid(strInput, i, 1) = ";") Then
        i = i + 1
    End If
    strInput = Right(strInput, Len(strInput) - i + 1)
    nPos = InStr(1, strInput, "&#", vbTextCompare)
Wend
If (Len(strInput) > 0) Then
    ascii2Char = ascii2Char + strInput
End If
End Function


Public Function pdf417(strToEncode As String) As String
Dim retval
On Error GoTo clearmem
Set cruflBCSObj = CreateObject("cruflBCS.PDF417.1")
cruflBCSObj.SetCRLF (1)
retval = cruflBCSObj.Encode(strToEncode)
pdf417 = retval
clearmem:
Set cruflBCSObj = Nothing
End Function

Public Function datamatrix(strToEncode As String) As String
Dim retval
On Error GoTo clearmem
Set cruflBCSObj = CreateObject("cruflBCS.DataMatrix.1")
cruflBCSObj.SetCRLF (1)
retval = cruflBCSObj.Encode(strToEncode)
datamatrix = retval
clearmem:
Set cruflBCSObj = Nothing
End Function

Public Function code16k(strToEncode As String) As String
Dim retval
On Error GoTo clearmem
Set cruflBCSObj = CreateObject("cruflBcS.Code16K.1")
retval = cruflBCSObj.Encode(strToEncode)
code16k = retval
clearmem:
Set cruflBCSObj = Nothing
End Function
