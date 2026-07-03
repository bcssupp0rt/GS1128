*********************************************************************
*
*  Visual FoxPro Functions for Bar Code Fonts 1.0
*  Copyright, Barcodesoft, Inc. 2009-2010. All rights reserved.
*
*  SET PROCEDURE TO BARCODESOFT.PRG ADDITIVE
*
*  Example (type in command window):
*     SET PROCEDURE TO BARCODESOFT.PRG ADDITIVE
*     ? Code39("123456789")
*
*********************************************************************


procedure Code39
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.Code39(alltrim(DataToEncode))
endproc

procedure Code39Ext
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.Code39Ext(alltrim(DataToEncode))
endproc

procedure Code39Mod43
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.Code39Mod43(alltrim(DataToEncode))
endproc

procedure Code128A
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.Code128A(alltrim(DataToEncode))
endproc

procedure Code128B
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.Code128B(alltrim(DataToEncode))
endproc

procedure Code128C
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.Code128C(alltrim(DataToEncode))
endproc

procedure UPCA
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.UPCA(alltrim(DataToEncode))
endproc

procedure UPCE
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.UPCE(alltrim(DataToEncode))
endproc

procedure EAN13
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.EAN13(alltrim(DataToEncode))
endproc

procedure EAN8
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.EAN8(alltrim(DataToEncode))
endproc

procedure BOOKLAND
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.Bookland(alltrim(DataToEncode))
endproc

procedure RoyalMail
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.RoyalMail(alltrim(DataToEncode))
endproc

procedure POSTNET
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.POSTNET(alltrim(DataToEncode))
endproc

procedure MasterCarton
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.MasterCarton(alltrim(DataToEncode))
endproc

procedure IM
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.IM(alltrim(DataToEncode))
endproc

procedure Code93
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.Code93(alltrim(DataToEncode))
endproc

procedure MSI
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.MSI(alltrim(DataToEncode))
endproc

procedure Code25
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.Code25(alltrim(DataToEncode))
endproc

procedure Code25Check
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.Code25Check(alltrim(DataToEncode))
endproc

procedure I25
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.I25(alltrim(DataToEncode))
endproc

procedure I25Check
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.I25Check(alltrim(DataToEncode))
endproc

procedure Telepen
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.Telepen(alltrim(DataToEncode))
endproc

procedure TelepenNumeric
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.TelepenNumeric(alltrim(DataToEncode))
endproc

procedure Code11
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.Code11(alltrim(DataToEncode))
endproc

procedure Codabar
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.Codabar(alltrim(DataToEncode))
endproc

procedure USSCode39
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.USSCode39(alltrim(DataToEncode))
endproc

procedure USS128
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.USS128(alltrim(DataToEncode))
endproc

procedure UCCEAN128
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Linear")
return x.UCCEAN128(alltrim(DataToEncode))
endproc

procedure PDF417
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.PDF417")
return x.Encode(alltrim(DataToEncode))
endproc

procedure DataMatrix
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.DataMatrix")
return x.Encode(alltrim(DataToEncode))
endproc

procedure DataMatrixOption
lparameters DataToEncode, index, format, encodation, gs1
x = CREATEOBJECT("crUFLBCS.DataMatrix")
return x.EncodeCR(alltrim(DataToEncode),index,format,encodation,gs1)
endproc

procedure QRCode
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.QRCode")
return x.Encode(alltrim(DataToEncode))
endproc

procedure Aztec
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Aztec")
return x.Encode(alltrim(DataToEncode))
endproc

procedure Code16K
lparameters DataToEncode
x = CREATEOBJECT("crUFLBCS.Code16K")
return x.Encode(alltrim(DataToEncode))
endproc
