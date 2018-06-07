'*******************************************************************************************'
'                                                                                           '
' Download Free Evaluation Version From:     https://bytescout.com/download/web-installer   '
'                                                                                           '
' Also available as Web API! Free Trial Sign Up: https://secure.bytescout.com/users/sign_up '
'                                                                                           '
' Copyright © 2017-2018 ByteScout Inc. All rights reserved.                                 '
' http://www.bytescout.com                                                                  '
'                                                                                           '
'*******************************************************************************************'


Set bc = CreateObject("Bytescout.BarCode.Barcode")

' set symbology to PDF417
bc.Symbology = 13 ' 13 = PDF417 barcode type

' set barcode value to encode
bc.Value = "12345678901234567890abcdefghijk"

bc.SaveImage "result.png"

Set bc = Nothing

' Open the output file in default app
Set shell = CreateObject("WScript.Shell")
shell.Run "result.png", 1, false
Set shell = Nothing
