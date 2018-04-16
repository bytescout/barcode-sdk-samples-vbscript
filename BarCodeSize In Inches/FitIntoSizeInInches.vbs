'*****************************************************************************************'
'                                                                                         '
' Download offline evaluation version (DLL): https://bytescout.com/download/web-installer '
'                                                                                         '
' Signup Web API free trial: https://secure.bytescout.com/users/sign_up                   '
'                                                                                         '
' Copyright © 2017-2018 ByteScout Inc. All rights reserved.                               '
' http://www.bytescout.com                                                                '
'                                                                                         '
'*****************************************************************************************'


Set bc = CreateObject("Bytescout.BarCode.Barcode")

' Set symbology to PDF417
bc.Symbology = 13 ' 13 = PDF417 barcode type

' Set barcode value to encode
bc.Value = "012345"

' Set barcode size by specifying a square the barcode will be fitted into 5x2 inches square
' Last parameter is the Measure Unit: Inch (2) Specifies the inch as the unit of measure. 
bc.FitInto_3 5, 2, 2

bc.CutUnusedSpace = False ' you can set it to True to cut unused space

bc.SaveImage "result.png"

Set bc = Nothing

' Open the output file in default app
Set shell = CreateObject("WScript.Shell")
shell.Run "result.png", 1, false
Set shell = Nothing
