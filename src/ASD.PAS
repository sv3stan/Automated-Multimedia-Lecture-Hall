library ASD;
Type    sb=^bb;
        bb=Array[0..31] of Byte;
var segD000:integer;
    b:sb;

procedure Create_Sel;export;
Begin asm mov ax,2; mov bx,$D000; int $31; Mov [SegD000],ax end; End;

procedure Free_Sel;export;
Begin asm mov ax,1; mov bx,[SegD000]; int $31; end;Dispose(b);End;

procedure Read_Sel(Var p:pointer);export; var off : integer;
begin New(b); for off:=0 to 15 do b^[off*2]:=Mem[SegD000:off*2]; p:=b; end;

exports Create_Sel,Free_Sel,Read_Sel; begin end.

