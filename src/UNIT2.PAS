unit Unit2;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Menus, DBTables, DB, Grids,
  DBGrids, DBCtrls, Mask, TabNotBk, Buttons, DBLookup, Tabs, Pict, printers;
procedure NVopros;
Procedure NZadaniya;
procedure NVariant;
procedure NSpeedButton1Click;
procedure NSpeedButton2Click;
procedure NSpeedButton3Click;
procedure NSpeedButton4Click;
procedure NSpeedButton5Click;
procedure NSpeedButton6Click;
procedure NSpeedButton7Click;
procedure NSpeedButton8Click;
procedure NSpeedButton9Click;
procedure NSpeedButton10Click;
procedure NSpeedButton11Click;
procedure NSpeedButton12Click;
procedure NSpeedButton13Click;
procedure RandMy(var max: integer);
procedure sopostav; { procedure timers; }
procedure DeKodir;
procedure Button16ClickS;
procedure Read_rez;
procedure RadioGroup5Clicks;
procedure Kodir_Et; { Кодирует эталоны ответов по вариантам }
procedure Kodir; { Кодирует значения ответов по конкретному месту по слудующему
  принципу: все 64 значения разбиваются на тетрады, а потом уже тетрады кодируются
  в шестнадцатиричный вид }

var
  Mestas: array [1 .. 16, 1 .. 8] of record nm: string[5];
  { nm - номер кнопки на столе }
  it: integer; { it - номер элемента RadioGroup }
end;
B:
array [1 .. 8] of integer;

implementation

uses unit1;

procedure Read_rez; { Считывание результатов опроса из файла }
  var
    Buf               : array [1 .. 8] of char;
    Buffer_R          : array [1 .. 56] of char;
    SBS, SVS, SLS, SPS: string[2];
    s                 : string;
    sum, x, i, SB, SV, SL, SP, l, n, g, v, Count, j, Code, p: integer;
  Begin
    SB  := 0;
    SV  := 0;
    SL  := 0;
    SP  := 0;
    SBS := '  '; { Количество ответов всего }
    SVS := '  '; { Количество правильных ответов }
    SLS := '  '; { Количество полученных не правильных ответов }
    SPS := '  '; { Количество полученных правильных ответов }
    FileSeek(
        HandleFN,
        0,
        0);
    Count := FileRead(
        HandleFN,
        Buffer_R,
        55);
    Nom_Potok[1] := Buffer_R[19];
    Nom_Potok[2] := Buffer_R[20];
    dates[1]     := Buffer_R[1];
    dates[2]     := Buffer_R[2];
    dates[3]     := Buffer_R[3];
    dates[4]     := Buffer_R[4];
    dates[5]     := Buffer_R[5];
    dates[6]     := Buffer_R[6];
    dates[7]     := Buffer_R[7];
    dates[8]     := Buffer_R[8];
    times[1]     := Buffer_R[10];
    times[2]     := Buffer_R[11];
    times[3]     := Buffer_R[12];
    times[4]     := Buffer_R[13];
    times[5]     := Buffer_R[14];
    times[6]     := Buffer_R[15];
    times[7]     := Buffer_R[16];
    times[8]     := Buffer_R[17];

    Zad_Vsego := 0;
    For i     := 1 to 8 do
      begin
        val(
            Buffer_R[i + 21],
            p,
            Code);
        Mas_Zad[i] := p;
      end;
    i := 1;
    While Mas_Zad[i] <> 0 do
      begin
        Zad_Vsego := Zad_Vsego + 1;
        i         := i + 1;
      end;
    Count := FileRead(
        HandleFN,
        Buffer_R,
        16);
    for i          := 1 to 16 do
      SO_Kod[1, i] := Buffer_R[i];
    Count          := FileRead(
        HandleFN,
        Buffer_R,
        16);
    for i          := 1 to 16 do
      SO_Kod[2, i] := Buffer_R[i];
    Count          := FileRead(
        HandleFN,
        Buffer_R,
        16);
    for i          := 1 to 16 do
      SO_Kod[3, i] := Buffer_R[i];
    Count          := FileRead(
        HandleFN,
        Buffer_R,
        16);
    for i          := 1 to 16 do
      SO_Kod[4, i] := Buffer_R[i];
    { Zad_Vsego:=3; }
    TMainForm.Table6.First;
    if Zad_Vsego <= 3 then
      begin
        val(
            TMainForm.Table6.FieldByName('Otl_I').AsString,
            Otl_I,
            Code);
        val(
            TMainForm.Table6.FieldByName('Xor_I').AsString,
            Xor_I,
            Code);
        val(
            TMainForm.Table6.FieldByName('Ud_I').AsString,
            Ud_I,
            Code);
      end;

    TMainForm.Table6.First;
    if Zad_Vsego = 4 then
      begin
        TMainForm.Table6.Next;
        val(
            TMainForm.Table6.FieldByName('Otl_I').AsString,
            Otl_I,
            Code);
        val(
            TMainForm.Table6.FieldByName('Xor_I').AsString,
            Xor_I,
            Code);
        val(
            TMainForm.Table6.FieldByName('Ud_I').AsString,
            Ud_I,
            Code);
      end;

    TMainForm.Table6.First;
    if Zad_Vsego >= 5 then
      begin
        TMainForm.Table6.Next;
        TMainForm.Table6.Next;
        val(
            TMainForm.Table6.FieldByName('Otl_I').AsString,
            Otl_I,
            Code);
        val(
            TMainForm.Table6.FieldByName('Xor_I').AsString,
            Xor_I,
            Code);
        val(
            TMainForm.Table6.FieldByName('Ud_I').AsString,
            Ud_I,
            Code);
      end;

    val(
        TMainForm.Table8.FieldByName('Sum_3').AsString,
        Sum_3,
        Code);
    val(
        TMainForm.Table8.FieldByName('Sum_4').AsString,
        Sum_4,
        Code);
    val(
        TMainForm.Table8.FieldByName('Sum_5').AsString,
        Sum_5,
        Code);
    val(
        TMainForm.Table8.FieldByName('Sum_45').AsString,
        Sum_45,
        Code);
    val(
        TMainForm.Table8.FieldByName('Sum_55').AsString,
        Sum_55,
        Code);

    FileSeek(
        HandleFN,
        119,
        0);
    for g                  := 1 to 16 do
      for v                := 1 to 8 do
        Mesta[g, v].Ocenka := ' ';
    for g                  := 1 to 16 do
      for v                := 1 to 8 do
        begin
          for j    := 1 to 8 do
            Buf[j] := ' ';
          Count    := FileRead(
              HandleFN,
              Buffer_R,
              56);
          SBS[1] := Buffer_R[2];
          SBS[2] := Buffer_R[3];
          SVS[1] := Buffer_R[4];
          SVS[2] := Buffer_R[5];
          SPS[1] := Buffer_R[6];
          SPS[2] := Buffer_R[7];
          SLS[1] := Buffer_R[8];
          SLS[2] := Buffer_R[9];
          val(
              SBS[1] + SBS[2],
              SB,
              Code);
          val(
              SVS[1] + SVS[2],
              SV,
              Code);
          val(
              SPS[1] + SPS[2],
              SP,
              Code);
          val(
              SLS[1] + SLS[2],
              SL,
              Code);
          { Ball:=(SP/SV)-(SL/(SB-SV));
            если предусмотрено задание из 2 или 3 вариантов и в свободный
            вариант записаны только нули это приводит к тому что происходит
            деление на 0 }

          For i := 1 to 17 do
            begin
              Mesta[g, v].FIO[i] := Buffer_R[i + 16];
            end;
          For i := 1 to 3 do
            begin
              Mesta[g, v].NomG[i] := Buffer_R[i + 10];
            end;
          For i := 1 to 2 do
            begin
              Mesta[g, v].Noms[i] := Buffer_R[i + 14];
            end;
          val(
              Buffer_R[55],
              i,
              Code);
          Mesta[g, v].Variant     := i;
          For i                   := 1 to 16 do
            Mesta[g, v].Otvets[i] := Buffer_R[i + 38];
          TMainForm.RadioGroup1.Items.Strings[Mesta[g, v].it] := Buffer_R[10];
          Mesta[g, v].Reg := Buffer_R[10];
          { if Mesta[g,v].Reg=' ' then begin
            If Ball>=Otl_I Then Mesta[g,v].Ocenka:='5';
            If ((Ball>=Xor_I) and (Ball<Otl_I)) Then Mesta[g,v].Ocenka:='4';
            If ((Ball>=Ud_I) and (Ball<Xor_I)) Then Mesta[g,v].Ocenka:='3';
            If Ball<Ud_I Then Mesta[g,v].Ocenka:='2'; end;
            if ((SP<>0) or (SL<>0)) then
            TMainForm.RadioGroup1.Items.Strings[mesta[g,v].it] := mesta[g,v].Ocenka; }
        end;
    FileClose(HandleFN);
    DeKodir;

    x         := 1;
    for i     := 1 to 8 do
      col[i]  := 0;
    for g     := 1 to 16 do
      for v   := 1 to 8 do
        for i := 1 to 8 do
          begin
            if Mesta[g, v].Reg = ' ' then
              Mesta[g, v].verno[i] := true;
          end;
    for g                 := 1 to 16 do
      for v               := 1 to 8 do
        Mesta[g, v].False := False;

    for i := 1 to Zad_Vsego do
      begin
        for j := 1 to Mas_Zad[i] do
          begin

            for g   := 1 to 16 do
              for v := 1 to 8 do
                begin

                  if Mesta[g, v].Reg = ' ' then
                    begin

                      if Mesta[g, v].Variant = 1 then
                        begin
                          if Mesta[g, v].Otvet[x] <> SO[1, x] then
                            begin
                              Mesta[g, v].False    := true;
                              Mesta[g, v].verno[i] := False;
                            end;
                          { if Mesta[3,7].Otvet[x]<>SO[1,x] then begin Mesta[g,v].False:=False;
                            mesta[3,7].verno[i]:=true;end; }
                        end;
                      if Mesta[g, v].Variant = 2 then
                        begin
                          if Mesta[g, v].Otvet[x] <> SO[2, x] then
                            begin
                              Mesta[g, v].False    := true;
                              Mesta[g, v].verno[i] := False;
                            end;
                          { if Mesta[3,7].Otvet[x]<>SO[2,x] then begin Mesta[g,v].False:=False;
                            mesta[3,7].verno[i]:=true;end; }
                        end;
                      if Mesta[g, v].Variant = 3 then
                        begin
                          if Mesta[g, v].Otvet[x] <> SO[3, x] then
                            begin
                              Mesta[g, v].False    := true;
                              Mesta[g, v].verno[i] := False;
                            end;
                          { if Mesta[3,7].Otvet[x]<>SO[3,x] then begin Mesta[g,v].False:=False;
                            mesta[3,7].verno[i]:=true;end; }
                        end;
                      if Mesta[g, v].Variant = 4 then
                        begin
                          if Mesta[g, v].Otvet[x] <> SO[4, x] then
                            begin
                              Mesta[g, v].False    := true;
                              Mesta[g, v].verno[i] := False;
                            end;
                          { if Mesta[3,7].Otvet[x]<>SO[4,x] then begin Mesta[g,v].False:=False;
                            mesta[3,7].verno[i]:=true;end; }
                        end;
                    end;
                end;
            x := x + 1;
          end;
      end;

    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          sum   := 0;
          for i := 1 to Zad_Vsego do
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[i] = true))
              then
                sum := sum + 1;

              if Mesta[g, v].Reg = ' ' then
                begin
                  Ball := sum / Zad_Vsego;
                  If Ball >= Otl_I Then
                    Mesta[g, v].Ocenka := '5';
                  If ((Ball >= Xor_I) and (Ball < Otl_I)) Then
                    Mesta[g, v].Ocenka := '4';
                  If ((Ball >= Ud_I) and (Ball < Xor_I)) Then
                    Mesta[g, v].Ocenka := '3';
                  If Ball < Ud_I Then
                    Mesta[g, v].Ocenka := '2';
                end;
              if Mesta[g, v].Reg = ' ' then
                TMainForm.RadioGroup1.Items.Strings[Mesta[g, v].it] :=
                    Mesta[g, v].Ocenka;
            end;
        end;
  end;

procedure NSpeedButton1Click;
  var
    g, v: integer;
  begin
    TMainForm.SpeedButton1.Font.Color := ClRed;
    TMainForm.SpeedButton2.Font.Color := ClGreen;
    TMainForm.SpeedButton3.Font.Color := ClGreen;
    TMainForm.SpeedButton4.Font.Color := ClGreen;
    TMainForm.SpeedButton5.Font.Color := ClGreen;
    TMainForm.SpeedButton6.Font.Color := ClGreen;
    TMainForm.SpeedButton7.Font.Color := ClGreen;
    TMainForm.SpeedButton8.Font.Color := ClGreen;
    TMainForm.ComboBox7.clear;
    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          If TMainForm.RadioGroup4.ItemIndex = 0 then
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[1] = true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end
          else
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[1] <> true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end;
        end;
    TMainForm.ComboBox7.Text := TMainForm.ComboBox7.Items[0];
  end;

procedure NSpeedButton2Click;
  var
    g, v: integer;
  begin
    TMainForm.SpeedButton1.Font.Color := ClGreen;
    TMainForm.SpeedButton2.Font.Color := ClRed;
    TMainForm.SpeedButton3.Font.Color := ClGreen;
    TMainForm.SpeedButton4.Font.Color := ClGreen;
    TMainForm.SpeedButton5.Font.Color := ClGreen;
    TMainForm.SpeedButton6.Font.Color := ClGreen;
    TMainForm.SpeedButton7.Font.Color := ClGreen;
    TMainForm.SpeedButton8.Font.Color := ClGreen;
    TMainForm.ComboBox7.clear;
    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          If TMainForm.RadioGroup4.ItemIndex = 0 then
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[2] = true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end
          else
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[2] <> true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end;
        end;
    TMainForm.ComboBox7.Text := TMainForm.ComboBox7.Items[0];
  end;

procedure NSpeedButton3Click;
  var
    g, v: integer;
  begin
    TMainForm.SpeedButton1.Font.Color := ClGreen;
    TMainForm.SpeedButton2.Font.Color := ClGreen;
    TMainForm.SpeedButton3.Font.Color := ClRed;
    TMainForm.SpeedButton4.Font.Color := ClGreen;
    TMainForm.SpeedButton5.Font.Color := ClGreen;
    TMainForm.SpeedButton6.Font.Color := ClGreen;
    TMainForm.SpeedButton7.Font.Color := ClGreen;
    TMainForm.SpeedButton8.Font.Color := ClGreen;
    TMainForm.ComboBox7.clear;
    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          If TMainForm.RadioGroup4.ItemIndex = 0 then
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[3] = true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end
          else
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[3] <> true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end;
        end;
    TMainForm.ComboBox7.Text := TMainForm.ComboBox7.Items[0];
  end;

procedure NSpeedButton4Click;
  var
    g, v: integer;
  begin
    TMainForm.SpeedButton1.Font.Color := ClGreen;
    TMainForm.SpeedButton2.Font.Color := ClGreen;
    TMainForm.SpeedButton3.Font.Color := ClGreen;
    TMainForm.SpeedButton4.Font.Color := ClRed;
    TMainForm.SpeedButton5.Font.Color := ClGreen;
    TMainForm.SpeedButton6.Font.Color := ClGreen;
    TMainForm.SpeedButton7.Font.Color := ClGreen;
    TMainForm.SpeedButton8.Font.Color := ClGreen;
    TMainForm.ComboBox7.clear;
    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          If TMainForm.RadioGroup4.ItemIndex = 0 then
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[4] = true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end
          else
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[4] <> true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end;
        end;
    TMainForm.ComboBox7.Text := TMainForm.ComboBox7.Items[0];
  end;

procedure NSpeedButton5Click;
  var
    g, v: integer;
  begin
    TMainForm.SpeedButton1.Font.Color := ClGreen;
    TMainForm.SpeedButton2.Font.Color := ClGreen;
    TMainForm.SpeedButton3.Font.Color := ClGreen;
    TMainForm.SpeedButton4.Font.Color := ClGreen;
    TMainForm.SpeedButton5.Font.Color := ClRed;
    TMainForm.SpeedButton6.Font.Color := ClGreen;
    TMainForm.SpeedButton7.Font.Color := ClGreen;
    TMainForm.SpeedButton8.Font.Color := ClGreen;
    TMainForm.ComboBox7.clear;
    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          If TMainForm.RadioGroup4.ItemIndex = 0 then
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[5] = true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end
          else
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[5] <> true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end;
        end;
    TMainForm.ComboBox7.Text := TMainForm.ComboBox7.Items[0];
  end;

procedure NSpeedButton6Click;
  var
    g, v: integer;
  begin
    TMainForm.SpeedButton1.Font.Color := ClGreen;
    TMainForm.SpeedButton2.Font.Color := ClGreen;
    TMainForm.SpeedButton3.Font.Color := ClGreen;
    TMainForm.SpeedButton4.Font.Color := ClGreen;
    TMainForm.SpeedButton5.Font.Color := ClGreen;
    TMainForm.SpeedButton6.Font.Color := ClRed;
    TMainForm.SpeedButton7.Font.Color := ClGreen;
    TMainForm.SpeedButton8.Font.Color := ClGreen;
    TMainForm.ComboBox7.clear;
    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          If TMainForm.RadioGroup4.ItemIndex = 0 then
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[6] = true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end
          else
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[6] <> true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end;
        end;
    TMainForm.ComboBox7.Text := TMainForm.ComboBox7.Items[0];
  end;

procedure NSpeedButton7Click;
  var
    g, v: integer;
  begin
    TMainForm.SpeedButton1.Font.Color := ClGreen;
    TMainForm.SpeedButton2.Font.Color := ClGreen;
    TMainForm.SpeedButton3.Font.Color := ClGreen;
    TMainForm.SpeedButton4.Font.Color := ClGreen;
    TMainForm.SpeedButton5.Font.Color := ClGreen;
    TMainForm.SpeedButton6.Font.Color := ClGreen;
    TMainForm.SpeedButton7.Font.Color := ClRed;
    TMainForm.SpeedButton8.Font.Color := ClGreen;
    TMainForm.ComboBox7.clear;
    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          If TMainForm.RadioGroup4.ItemIndex = 0 then
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[7] = true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end
          else
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[7] <> true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end;
        end;
    TMainForm.ComboBox7.Text := TMainForm.ComboBox7.Items[0];
  end;

procedure NSpeedButton8Click;
  var
    g, v: integer;
  begin
    TMainForm.SpeedButton1.Font.Color := ClGreen;
    TMainForm.SpeedButton2.Font.Color := ClGreen;
    TMainForm.SpeedButton3.Font.Color := ClGreen;
    TMainForm.SpeedButton4.Font.Color := ClGreen;
    TMainForm.SpeedButton5.Font.Color := ClGreen;
    TMainForm.SpeedButton6.Font.Color := ClGreen;
    TMainForm.SpeedButton7.Font.Color := ClGreen;
    TMainForm.SpeedButton8.Font.Color := ClRed;
    TMainForm.ComboBox7.clear;
    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          If TMainForm.RadioGroup4.ItemIndex = 0 then
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[8] = true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end
          else
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].verno[8] <> true))
              then
                TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                    v].Noms + ' ' + Mesta[g, v].FIO);
            end;
        end;
    TMainForm.ComboBox7.Text := TMainForm.ComboBox7.Items[0];
  end;

procedure NSpeedButton9Click;
  var
    g, v: integer;
  begin
    TMainForm.SpeedButton9.Font.Color  := ClRed;
    TMainForm.SpeedButton10.Font.Color := ClGreen;
    TMainForm.SpeedButton11.Font.Color := ClGreen;
    TMainForm.SpeedButton12.Font.Color := ClGreen;
    TMainForm.SpeedButton13.Font.Color := ClGreen;
    TMainForm.ComboBox7.clear;
    TMainForm.ComboBox7.Font.Color := clBlack;
    for g                          := 1 to 16 do
      for v                        := 1 to 8 do
        begin
          if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].Ocenka = '2')) then
            begin
              TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                  v].Noms + ' ' + Mesta[g, v].FIO);
            end;
        end;
    TMainForm.ComboBox7.Text := TMainForm.ComboBox7.Items[0];
  end;

procedure NSpeedButton10Click;
  var
    g, v: integer;
  begin
    TMainForm.SpeedButton9.Font.Color  := ClGreen;
    TMainForm.SpeedButton10.Font.Color := ClRed;
    TMainForm.SpeedButton11.Font.Color := ClGreen;
    TMainForm.SpeedButton12.Font.Color := ClGreen;
    TMainForm.SpeedButton13.Font.Color := ClGreen;
    TMainForm.ComboBox7.clear;
    TMainForm.ComboBox7.Font.Color := ClGreen;
    for g                          := 1 to 16 do
      for v                        := 1 to 8 do
        begin
          if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].Ocenka = '3')) then
            begin
              TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                  v].Noms + ' ' + Mesta[g, v].FIO);
            end;
        end;
    TMainForm.ComboBox7.Text := TMainForm.ComboBox7.Items[0];
  end;

procedure NSpeedButton11Click;
  var
    g, v: integer;
  begin
    TMainForm.SpeedButton9.Font.Color  := ClGreen;
    TMainForm.SpeedButton10.Font.Color := ClGreen;
    TMainForm.SpeedButton11.Font.Color := ClRed;
    TMainForm.SpeedButton12.Font.Color := ClGreen;
    TMainForm.SpeedButton13.Font.Color := ClGreen;
    TMainForm.ComboBox7.clear;
    TMainForm.ComboBox7.Font.Color := clBlue;
    for g                          := 1 to 16 do
      for v                        := 1 to 8 do
        begin
          if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].Ocenka = '4')) then
            begin
              TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                  v].Noms + ' ' + Mesta[g, v].FIO);
            end;
        end;
    TMainForm.ComboBox7.Text := TMainForm.ComboBox7.Items[0];
  end;

procedure NSpeedButton12Click;
  var
    g, v: integer;
  begin
    TMainForm.SpeedButton9.Font.Color  := ClGreen;
    TMainForm.SpeedButton10.Font.Color := ClGreen;
    TMainForm.SpeedButton11.Font.Color := ClGreen;
    TMainForm.SpeedButton12.Font.Color := ClRed;
    TMainForm.SpeedButton13.Font.Color := ClGreen;
    TMainForm.ComboBox7.clear;
    TMainForm.ComboBox7.Font.Color := ClRed;
    for g                          := 1 to 16 do
      for v                        := 1 to 8 do
        begin
          if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].Ocenka = '5')) then
            begin
              TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                  v].Noms + ' ' + Mesta[g, v].FIO);
            end;
        end;
    TMainForm.ComboBox7.Text := TMainForm.ComboBox7.Items[0];
  end;

procedure NSpeedButton13Click;
  var
    g, v: integer;
    s   : string;
  begin
    TMainForm.SpeedButton9.Font.Color  := ClGreen;
    TMainForm.SpeedButton10.Font.Color := ClGreen;
    TMainForm.SpeedButton11.Font.Color := ClGreen;
    TMainForm.SpeedButton12.Font.Color := ClGreen;
    TMainForm.SpeedButton13.Font.Color := ClRed;
    TMainForm.ComboBox7.clear;
    if Sred_Oc = 2 then
      TMainForm.ComboBox7.Font.Color := clBlack;
    if Sred_Oc = 3 then
      TMainForm.ComboBox7.Font.Color := ClGreen;
    if Sred_Oc = 4 then
      TMainForm.ComboBox7.Font.Color := clBlue;
    if Sred_Oc = 5 then
      TMainForm.ComboBox7.Font.Color := ClRed;
    for g                            := 1 to 16 do
      for v                          := 1 to 8 do
        begin
          if (Mesta[g, v].Reg = ' ') then
            begin
              str(
                  Mesta[g, v].Variant,
                  s);
              TMainForm.ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g,
                  v].Noms + ' ' + Mesta[g, v].FIO + ' ' + Mesta[g, v].Ocenka);
            end;
        end;
    TMainForm.ComboBox7.Text := TMainForm.ComboBox7.Items[0];
  end;

procedure Kodir;
  { кодирует ответы конкретного места для записи в файл результатов }
  var
    g, v, i, j: integer;
    it        : array [1 .. 4] of char;
  begin
    for g := 1 to 16 do
      begin
        for v := 1 to 8 do
          begin
            for i := 1 to 16 do
              begin
                Mesta[g, v].Otvets[i] := '0';
              end;
          end;
      end;

    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          for i := 1 to 16 do
            begin
              j     := i * 4;
              it[1] := Mesta[g, v].Otvet[j - 3];
              it[2] := Mesta[g, v].Otvet[j - 2];
              it[3] := Mesta[g, v].Otvet[j - 1];
              it[4] := Mesta[g, v].Otvet[j];
              if it = '0000' then
                Mesta[g, v].Otvets[i] := '0';
              if it = '0001' then
                Mesta[g, v].Otvets[i] := '1';
              if it = '0010' then
                Mesta[g, v].Otvets[i] := '2';
              if it = '0011' then
                Mesta[g, v].Otvets[i] := '3';
              if it = '0100' then
                Mesta[g, v].Otvets[i] := '4';
              if it = '0101' then
                Mesta[g, v].Otvets[i] := '5';
              if it = '0110' then
                Mesta[g, v].Otvets[i] := '6';
              if it = '0111' then
                Mesta[g, v].Otvets[i] := '7';
              if it = '1000' then
                Mesta[g, v].Otvets[i] := '8';
              if it = '1001' then
                Mesta[g, v].Otvets[i] := '9';
              if it = '1010' then
                Mesta[g, v].Otvets[i] := 'A';
              if it = '1011' then
                Mesta[g, v].Otvets[i] := 'B';
              if it = '1100' then
                Mesta[g, v].Otvets[i] := 'C';
              if it = '1101' then
                Mesta[g, v].Otvets[i] := 'D';
              if it = '1110' then
                Mesta[g, v].Otvets[i] := 'E';
              if it = '1111' then
                Mesta[g, v].Otvets[i] := 'F';
            end;
        end;
  end;

procedure Kodir_Et;
  var
    g, v, i, j: integer;
    it        : array [1 .. 4] of char;
  begin
    for g := 1 to 4 do
      begin
        for i := 1 to 16 do
          begin
            j     := i * 4;
            it[1] := SO[g, j - 3];
            it[2] := SO[g, j - 2];
            it[3] := SO[g, j - 1];
            it[4] := SO[g, j];
            if it = '0000' then
              SO_Kod[g, i] := '0';
            if it = '0001' then
              SO_Kod[g, i] := '1';
            if it = '0010' then
              SO_Kod[g, i] := '2';
            if it = '0011' then
              SO_Kod[g, i] := '3';
            if it = '0100' then
              SO_Kod[g, i] := '4';
            if it = '0101' then
              SO_Kod[g, i] := '5';
            if it = '0110' then
              SO_Kod[g, i] := '6';
            if it = '0111' then
              SO_Kod[g, i] := '7';
            if it = '1000' then
              SO_Kod[g, i] := '8';
            if it = '1001' then
              SO_Kod[g, i] := '9';
            if it = '1010' then
              SO_Kod[g, i] := 'A';
            if it = '1011' then
              SO_Kod[g, i] := 'B';
            if it = '1100' then
              SO_Kod[g, i] := 'C';
            if it = '1101' then
              SO_Kod[g, i] := 'D';
            if it = '1110' then
              SO_Kod[g, i] := 'E';
            if it = '1111' then
              SO_Kod[g, i] := 'F';
          end;
      end;
  end;

procedure DeKodir;
  var
    g, v, i, j: integer;
    it        : array [1 .. 4] of char;
  begin
    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          for i := 1 to 16 do
            begin
              j := i * 4;
              if Mesta[g, v].Otvets[i] = '0' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '0';
                  Mesta[g, v].Otvet[j - 2] := '0';
                  Mesta[g, v].Otvet[j - 1] := '0';
                  Mesta[g, v].Otvet[j]     := '0';
                end;
              if Mesta[g, v].Otvets[i] = '1' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '0';
                  Mesta[g, v].Otvet[j - 2] := '0';
                  Mesta[g, v].Otvet[j - 1] := '0';
                  Mesta[g, v].Otvet[j]     := '1';
                end;
              if Mesta[g, v].Otvets[i] = '2' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '0';
                  Mesta[g, v].Otvet[j - 2] := '0';
                  Mesta[g, v].Otvet[j - 1] := '1';
                  Mesta[g, v].Otvet[j]     := '0';
                end;
              if Mesta[g, v].Otvets[i] = '3' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '0';
                  Mesta[g, v].Otvet[j - 2] := '0';
                  Mesta[g, v].Otvet[j - 1] := '1';
                  Mesta[g, v].Otvet[j]     := '1';
                end;
              if Mesta[g, v].Otvets[i] = '4' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '0';
                  Mesta[g, v].Otvet[j - 2] := '1';
                  Mesta[g, v].Otvet[j - 1] := '0';
                  Mesta[g, v].Otvet[j]     := '0';
                end;
              if Mesta[g, v].Otvets[i] = '5' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '0';
                  Mesta[g, v].Otvet[j - 2] := '1';
                  Mesta[g, v].Otvet[j - 1] := '0';
                  Mesta[g, v].Otvet[j]     := '1';
                end;
              if Mesta[g, v].Otvets[i] = '6' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '0';
                  Mesta[g, v].Otvet[j - 2] := '1';
                  Mesta[g, v].Otvet[j - 1] := '1';
                  Mesta[g, v].Otvet[j]     := '0';
                end;
              if Mesta[g, v].Otvets[i] = '7' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '0';
                  Mesta[g, v].Otvet[j - 2] := '1';
                  Mesta[g, v].Otvet[j - 1] := '1';
                  Mesta[g, v].Otvet[j]     := '1';
                end;
              if Mesta[g, v].Otvets[i] = '8' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '1';
                  Mesta[g, v].Otvet[j - 2] := '0';
                  Mesta[g, v].Otvet[j - 1] := '0';
                  Mesta[g, v].Otvet[j]     := '0';
                end;
              if Mesta[g, v].Otvets[i] = '9' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '1';
                  Mesta[g, v].Otvet[j - 2] := '0';
                  Mesta[g, v].Otvet[j - 1] := '0';
                  Mesta[g, v].Otvet[j]     := '1';
                end;
              if Mesta[g, v].Otvets[i] = 'A' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '1';
                  Mesta[g, v].Otvet[j - 2] := '0';
                  Mesta[g, v].Otvet[j - 1] := '1';
                  Mesta[g, v].Otvet[j]     := '0';
                end;
              if Mesta[g, v].Otvets[i] = 'B' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '1';
                  Mesta[g, v].Otvet[j - 2] := '0';
                  Mesta[g, v].Otvet[j - 1] := '1';
                  Mesta[g, v].Otvet[j]     := '1';
                end;
              if Mesta[g, v].Otvets[i] = 'C' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '1';
                  Mesta[g, v].Otvet[j - 2] := '1';
                  Mesta[g, v].Otvet[j - 1] := '0';
                  Mesta[g, v].Otvet[j]     := '0';
                end;
              if Mesta[g, v].Otvets[i] = 'D' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '1';
                  Mesta[g, v].Otvet[j - 2] := '1';
                  Mesta[g, v].Otvet[j - 1] := '0';
                  Mesta[g, v].Otvet[j]     := '1';
                end;
              if Mesta[g, v].Otvets[i] = 'E' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '1';
                  Mesta[g, v].Otvet[j - 2] := '1';
                  Mesta[g, v].Otvet[j - 1] := '1';
                  Mesta[g, v].Otvet[j]     := '0';
                end;
              if Mesta[g, v].Otvets[i] = 'F' then
                begin
                  Mesta[g, v].Otvet[j - 3] := '1';
                  Mesta[g, v].Otvet[j - 2] := '1';
                  Mesta[g, v].Otvet[j - 1] := '1';
                  Mesta[g, v].Otvet[j]     := '1';
                end;
            end;
        end;
    for g := 1 to 4 do
      begin
        for i := 1 to 16 do
          begin
            j := i * 4;
            If SO_Kod[g, i] = '0' then
              begin
                SO[g, j - 3] := '0';
                SO[g, j - 2] := '0';
                SO[g, j - 1] := '0';
                SO[g, j]     := '0';
              end;
            If SO_Kod[g, i] = '1' then
              begin
                SO[g, j - 3] := '0';
                SO[g, j - 2] := '0';
                SO[g, j - 1] := '0';
                SO[g, j]     := '1';
              end;
            If SO_Kod[g, i] = '2' then
              begin
                SO[g, j - 3] := '0';
                SO[g, j - 2] := '0';
                SO[g, j - 1] := '1';
                SO[g, j]     := '0';
              end;
            If SO_Kod[g, i] = '3' then
              begin
                SO[g, j - 3] := '0';
                SO[g, j - 2] := '0';
                SO[g, j - 1] := '1';
                SO[g, j]     := '1';
              end;
            If SO_Kod[g, i] = '4' then
              begin
                SO[g, j - 3] := '0';
                SO[g, j - 2] := '1';
                SO[g, j - 1] := '0';
                SO[g, j]     := '0';
              end;
            If SO_Kod[g, i] = '5' then
              begin
                SO[g, j - 3] := '0';
                SO[g, j - 2] := '1';
                SO[g, j - 1] := '0';
                SO[g, j]     := '1';
              end;
            If SO_Kod[g, i] = '6' then
              begin
                SO[g, j - 3] := '0';
                SO[g, j - 2] := '1';
                SO[g, j - 1] := '1';
                SO[g, j]     := '0';
              end;
            If SO_Kod[g, i] = '7' then
              begin
                SO[g, j - 3] := '0';
                SO[g, j - 2] := '1';
                SO[g, j - 1] := '1';
                SO[g, j]     := '1';
              end;
            If SO_Kod[g, i] = '8' then
              begin
                SO[g, j - 3] := '1';
                SO[g, j - 2] := '0';
                SO[g, j - 1] := '0';
                SO[g, j]     := '0';
              end;
            If SO_Kod[g, i] = '9' then
              begin
                SO[g, j - 3] := '1';
                SO[g, j - 2] := '0';
                SO[g, j - 1] := '0';
                SO[g, j]     := '1';
              end;
            If SO_Kod[g, i] = 'A' then
              begin
                SO[g, j - 3] := '1';
                SO[g, j - 2] := '0';
                SO[g, j - 1] := '1';
                SO[g, j]     := '0';
              end;
            If SO_Kod[g, i] = 'B' then
              begin
                SO[g, j - 3] := '1';
                SO[g, j - 2] := '0';
                SO[g, j - 1] := '1';
                SO[g, j]     := '1';
              end;
            If SO_Kod[g, i] = 'C' then
              begin
                SO[g, j - 3] := '1';
                SO[g, j - 2] := '1';
                SO[g, j - 1] := '0';
                SO[g, j]     := '0';
              end;
            If SO_Kod[g, i] = 'D' then
              begin
                SO[g, j - 3] := '1';
                SO[g, j - 2] := '1';
                SO[g, j - 1] := '0';
                SO[g, j]     := '1';
              end;
            If SO_Kod[g, i] = 'E' then
              begin
                SO[g, j - 3] := '1';
                SO[g, j - 2] := '1';
                SO[g, j - 1] := '1';
                SO[g, j]     := '0';
              end;
            If SO_Kod[g, i] = 'F' then
              begin
                SO[g, j - 3] := '1';
                SO[g, j - 2] := '1';
                SO[g, j - 1] := '1';
                SO[g, j]     := '1';
              end;
          end;
      end;
  end;

procedure sopostav;
  begin
    Mestas[1, 1].nm  := '1.1  ';
    Mestas[1, 2].nm  := '1.2  ';
    Mestas[1, 3].nm  := '1.3  ';
    Mestas[1, 1].it  := 117;
    Mestas[1, 2].it  := 104;
    Mestas[1, 3].it  := 91;
    Mestas[1, 4].nm  := '1.4  ';
    Mestas[1, 5].nm  := '1.5  ';
    Mestas[1, 6].nm  := '1.6  ';
    Mestas[1, 4].it  := 78;
    Mestas[1, 5].it  := 65;
    Mestas[1, 6].it  := 52;
    Mestas[1, 7].nm  := '1.7  ';
    Mestas[1, 8].nm  := '1.8  ';
    Mestas[2, 1].nm  := '2.1  ';
    Mestas[1, 7].it  := 39;
    Mestas[1, 8].it  := 26;
    Mestas[2, 1].it  := 118;
    Mestas[2, 2].nm  := '2.2  ';
    Mestas[2, 3].nm  := '2.3  ';
    Mestas[2, 4].nm  := '2.4  ';
    Mestas[2, 2].it  := 105;
    Mestas[2, 3].it  := 92;
    Mestas[2, 4].it  := 79;
    Mestas[2, 5].nm  := '2.5  ';
    Mestas[2, 6].nm  := '2.6  ';
    Mestas[2, 7].nm  := '3.1  ';
    Mestas[2, 5].it  := 66;
    Mestas[2, 6].it  := 53;
    Mestas[2, 7].it  := 119;
    Mestas[2, 8].nm  := '3.2  ';
    Mestas[3, 1].nm  := '3.3  ';
    Mestas[3, 2].nm  := '3.4  ';
    Mestas[2, 8].it  := 106;
    Mestas[3, 1].it  := 93;
    Mestas[3, 2].it  := 80;
    Mestas[3, 3].nm  := '3.5  ';
    Mestas[3, 4].nm  := '3.6  ';
    Mestas[3, 5].nm  := '4.1  ';
    Mestas[3, 3].it  := 67;
    Mestas[3, 4].it  := 54;
    Mestas[3, 5].it  := 120;
    Mestas[3, 6].nm  := '4.2  ';
    Mestas[3, 7].nm  := '4.3  ';
    Mestas[3, 8].nm  := '4.4  ';
    Mestas[3, 6].it  := 107;
    Mestas[3, 7].it  := 94;
    Mestas[3, 8].it  := 81;
    Mestas[4, 1].nm  := '4.5  ';
    Mestas[4, 2].nm  := '4.6  ';
    Mestas[4, 3].nm  := '5.1  ';
    Mestas[4, 1].it  := 68;
    Mestas[4, 2].it  := 55;
    Mestas[4, 3].it  := 121;
    Mestas[4, 4].nm  := '5.2  ';
    Mestas[4, 5].nm  := '5.3  ';
    Mestas[4, 6].nm  := '5.4  ';
    Mestas[4, 4].it  := 108;
    Mestas[4, 5].it  := 95;
    Mestas[4, 6].it  := 82;
    Mestas[4, 7].nm  := '5.5  ';
    Mestas[4, 8].nm  := '5.6  ';
    Mestas[5, 1].nm  := '6.1  ';
    Mestas[4, 7].it  := 69;
    Mestas[4, 8].it  := 56;
    Mestas[5, 1].it  := 122;
    Mestas[5, 2].nm  := '6.2  ';
    Mestas[5, 3].nm  := '6.3  ';
    Mestas[5, 4].nm  := '6.4  ';
    Mestas[5, 2].it  := 109;
    Mestas[5, 3].it  := 96;
    Mestas[5, 4].it  := 83;
    Mestas[5, 5].nm  := '6.5  ';
    Mestas[5, 6].nm  := '6.6  ';
    Mestas[5, 7].nm  := '7.1  ';
    Mestas[5, 5].it  := 70;
    Mestas[5, 6].it  := 57;
    Mestas[5, 7].it  := 123;
    Mestas[5, 8].nm  := '7.2  ';
    Mestas[6, 1].nm  := '7.3  ';
    Mestas[6, 2].nm  := '7.4  ';
    Mestas[5, 8].it  := 110;
    Mestas[6, 1].it  := 97;
    Mestas[6, 2].it  := 84;
    Mestas[6, 3].nm  := '7.5  ';
    Mestas[6, 4].nm  := '7.6  ';
    Mestas[6, 5].nm  := '8.1  ';
    Mestas[6, 3].it  := 71;
    Mestas[6, 4].it  := 58;
    Mestas[6, 5].it  := 124;
    Mestas[6, 6].nm  := '8.2  ';
    Mestas[6, 7].nm  := '8.3  ';
    Mestas[6, 8].nm  := '8.4  ';
    Mestas[6, 6].it  := 111;
    Mestas[6, 7].it  := 98;
    Mestas[6, 8].it  := 85;
    Mestas[7, 1].nm  := '8.5  ';
    Mestas[7, 2].nm  := '8.6  ';
    Mestas[7, 3].nm  := '9.1  ';
    Mestas[7, 1].it  := 72;
    Mestas[7, 2].it  := 59;
    Mestas[7, 3].it  := 125;
    Mestas[7, 4].nm  := '9.2  ';
    Mestas[7, 5].nm  := '9.3  ';
    Mestas[7, 6].nm  := '9.4  ';
    Mestas[7, 4].it  := 112;
    Mestas[7, 5].it  := 99;
    Mestas[7, 6].it  := 86;
    Mestas[7, 7].nm  := '9.5  ';
    Mestas[7, 8].nm  := '9.6  ';
    Mestas[8, 1].nm  := '10.1 ';
    Mestas[7, 7].it  := 73;
    Mestas[7, 8].it  := 60;
    Mestas[8, 1].it  := 126;
    Mestas[8, 2].nm  := '10.2 ';
    Mestas[8, 3].nm  := '10.3 ';
    Mestas[8, 4].nm  := '10.4 ';
    Mestas[8, 2].it  := 113;
    Mestas[8, 3].it  := 100;
    Mestas[8, 4].it  := 87;
    Mestas[8, 5].nm  := '10.5 ';
    Mestas[8, 6].nm  := '10.6 ';
    Mestas[8, 7].nm  := '11.1 ';
    Mestas[8, 5].it  := 74;
    Mestas[8, 6].it  := 61;
    Mestas[8, 7].it  := 127;
    Mestas[8, 8].nm  := '11.2 ';
    Mestas[9, 1].nm  := '11.3 ';
    Mestas[9, 2].nm  := '11.4 ';
    Mestas[8, 8].it  := 114;
    Mestas[9, 1].it  := 101;
    Mestas[9, 2].it  := 88;
    Mestas[9, 3].nm  := '11.5 ';
    Mestas[9, 4].nm  := '11.6 ';
    Mestas[9, 5].nm  := '12.1 ';
    Mestas[9, 3].it  := 75;
    Mestas[9, 4].it  := 62;
    Mestas[9, 5].it  := 128;
    Mestas[9, 6].nm  := '12.2 ';
    Mestas[9, 7].nm  := '12.3 ';
    Mestas[9, 8].nm  := '12.4 ';
    Mestas[9, 6].it  := 115;
    Mestas[9, 7].it  := 102;
    Mestas[9, 8].it  := 89;
    Mestas[10, 1].nm := '12.5 ';
    Mestas[10, 2].nm := '12.6 ';
    Mestas[10, 3].nm := '13.1 ';
    Mestas[10, 1].it := 76;
    Mestas[10, 2].it := 63;
    Mestas[10, 3].it := 129;
    Mestas[10, 4].nm := '13.2 ';
    Mestas[10, 5].nm := '13.3 ';
    Mestas[10, 6].nm := '13.4 ';
    Mestas[10, 4].it := 116;
    Mestas[10, 5].it := 103;
    Mestas[10, 6].it := 90;
    Mestas[10, 7].nm := '13.5 ';
    Mestas[10, 8].nm := '13.6 ';
    Mestas[11, 1].nm := '2.7  ';
    Mestas[10, 7].it := 77;
    Mestas[10, 8].it := 64;
    Mestas[11, 1].it := 40;
    Mestas[11, 2].nm := '2.8  ';
    Mestas[11, 3].nm := '2.9  ';
    Mestas[11, 4].nm := '2.10 ';
    Mestas[11, 2].it := 27;
    Mestas[11, 3].it := 14;
    Mestas[11, 4].it := 1;
    Mestas[11, 5].nm := '3.7  ';
    Mestas[11, 6].nm := '3.8  ';
    Mestas[11, 7].nm := '3.9  ';
    Mestas[11, 5].it := 41;
    Mestas[11, 6].it := 28;
    Mestas[11, 7].it := 15;
    Mestas[11, 8].nm := '3.10 ';
    Mestas[12, 1].nm := '4.7  ';
    Mestas[12, 2].nm := '4.8  ';
    Mestas[11, 8].it := 2;
    Mestas[12, 1].it := 42;
    Mestas[12, 2].it := 29;
    Mestas[12, 3].nm := '4.9  ';
    Mestas[12, 4].nm := '4.10 ';
    Mestas[12, 5].nm := '5.7  ';
    Mestas[12, 3].it := 16;
    Mestas[12, 4].it := 3;
    Mestas[12, 5].it := 43;
    Mestas[12, 6].nm := '5.8  ';
    Mestas[12, 7].nm := '5.9  ';
    Mestas[12, 8].nm := '5.10 ';
    Mestas[12, 6].it := 30;
    Mestas[12, 7].it := 17;
    Mestas[12, 8].it := 4;
    Mestas[13, 1].nm := '6.7  ';
    Mestas[13, 2].nm := '6.8  ';
    Mestas[13, 3].nm := '6.9  ';
    Mestas[13, 1].it := 44;
    Mestas[13, 2].it := 31;
    Mestas[13, 3].it := 18;
    Mestas[13, 4].nm := '6.10 ';
    Mestas[13, 5].nm := '7.7  ';
    Mestas[13, 6].nm := '7.8  ';
    Mestas[13, 4].it := 5;
    Mestas[13, 5].it := 45;
    Mestas[13, 6].it := 32;
    Mestas[13, 7].nm := '7.9  ';
    Mestas[13, 8].nm := '7.10 ';
    Mestas[14, 1].nm := '8.7  ';
    Mestas[13, 7].it := 19;
    Mestas[13, 8].it := 6;
    Mestas[14, 1].it := 46;
    Mestas[14, 2].nm := '8.8  ';
    Mestas[14, 3].nm := '8.9  ';
    Mestas[14, 4].nm := '8.10 ';
    Mestas[14, 2].it := 33;
    Mestas[14, 3].it := 20;
    Mestas[14, 4].it := 7;
    Mestas[14, 5].nm := '9.7  ';
    Mestas[14, 6].nm := '9.8  ';
    Mestas[14, 7].nm := '9.9  ';
    Mestas[14, 5].it := 47;
    Mestas[14, 6].it := 34;
    Mestas[14, 7].it := 21;
    Mestas[14, 8].nm := '9.10 ';
    Mestas[15, 1].nm := '10.7 ';
    Mestas[15, 2].nm := '10.8 ';
    Mestas[14, 8].it := 8;
    Mestas[15, 1].it := 48;
    Mestas[15, 2].it := 35;
    Mestas[15, 3].nm := '10.9 ';
    Mestas[15, 4].nm := '10.10 ';
    Mestas[15, 5].nm := '11.7 ';
    Mestas[15, 3].it := 22;
    Mestas[15, 4].it := 9;
    Mestas[15, 5].it := 49;
    Mestas[15, 6].nm := '11.8 ';
    Mestas[15, 7].nm := '11.9 ';
    Mestas[15, 8].nm := '11.10';
    Mestas[15, 6].it := 36;
    Mestas[15, 7].it := 23;
    Mestas[15, 8].it := 10;
    Mestas[16, 1].nm := '12.7 ';
    Mestas[16, 2].nm := '12.8 ';
    Mestas[16, 3].nm := '12.9 ';
    Mestas[16, 1].it := 50;
    Mestas[16, 2].it := 37;
    Mestas[16, 3].it := 24;
    Mestas[16, 4].nm := '12.10';
    Mestas[16, 5].nm := '13.7 ';
    Mestas[16, 6].nm := '13.8 ';
    Mestas[16, 4].it := 11;
    Mestas[16, 5].it := 51;
    Mestas[16, 6].it := 38;
    Mestas[16, 7].nm := '13.9 ';
    Mestas[16, 8].nm := '13.10';
    Mestas[16, 7].it := 25;
    Mestas[16, 8].it := 12;
  end;

procedure NVopros;
  const
    len = 9;
  var
    s, p               : string;
    n, m               : string[9];
    Code, k, l, i      : integer;
    SearchRec          : TSearchRec;
    File_Vop, File_VopS: array [1 .. 8, 1 .. 9] of char; { }
  begin
    For i               := 1 to 8 Do
      For k             := 1 to 9 do
        File_Vop[i, k]  := ' ';
    For i               := 1 to 8 Do
      For k             := 1 to 9 do
        File_VopS[i, k] := ' ';
    i                   := 1;
    p                   := ExtractFilePath(put);
    FindFirst(
        p + 'w0*.bmp',
        faAnyFile,
        SearchRec);
    n                := SearchRec.Name;
    for k            := 1 to len do
      File_Vop[i, k] := n[k];
    l                := 0;
    While l = 0 do
      begin
        l := FindNext(SearchRec);
        i := i + 1;
        if l = 0 then
          begin
            n                := SearchRec.Name;
            for k            := 1 to len do
              File_Vop[i, k] := n[k];
          end;
      end;
    For i := 1 to 8 do
      Begin
        if File_Vop[i, 3] = '1' Then
          for k             := 1 to len do
            File_VopS[1, k] := File_Vop[i, k];
      end;
    For i := 1 to 8 do
      Begin
        if File_Vop[i, 3] = '2' Then
          for k             := 1 to len do
            File_VopS[2, k] := File_Vop[i, k];
      end;
    For i := 1 to 8 do
      Begin
        if File_Vop[i, 3] = '3' Then
          for k             := 1 to len do
            File_VopS[3, k] := File_Vop[i, k];
      end;
    For i := 1 to 8 do
      Begin
        if File_Vop[i, 3] = '4' Then
          for k             := 1 to len do
            File_VopS[4, k] := File_Vop[i, k];
      end;
    For i := 1 to 8 do
      Begin
        if File_Vop[i, 3] = '5' Then
          for k             := 1 to len do
            File_VopS[5, k] := File_Vop[i, k];
      end;
    For i := 1 to 8 do
      Begin
        if File_Vop[i, 3] = '6' Then
          for k             := 1 to len do
            File_VopS[6, k] := File_Vop[i, k];
      end;
    For i := 1 to 8 do
      Begin
        if File_Vop[i, 3] = '7' Then
          for k             := 1 to len do
            File_VopS[7, k] := File_Vop[i, k];
      end;
    For i := 1 to 8 do
      Begin
        if File_Vop[i, 3] = '8' Then
          for k             := 1 to len do
            File_VopS[8, k] := File_Vop[i, k];
      end;
    For i := 1 to 8 do
      begin
        for k  := 1 to len do
          n[k] := File_VopS[i, k];
        TMainForm.ListBox1.Items.Add(n);
      end;
  end;

Procedure NZadaniya;
  var
    d, summ, i, handle, Count, vsego, Code, Next, curr, j: integer;
    Buf_zad: array [1 .. 8] of integer;
    Nomer_zad     : array [1 .. 64] of integer;
    buffer        : array [0 .. 12] of char;
    ss            : string;
    buffer1       : array [0 .. 5] of char;
    s             : string[6];
    p, m, f       : string;
    v1, v2, v3, v4: boolean;

  begin
    with TMainForm.Table5 do
      begin
        Active       := False;
        DatabaseName := 'Button';
        TableName    := 'Kodir';
        TableType    := ttDefault;
        EmptyTable;
      end;
    TMainForm.Table5.Active := true;
    p                       := TMainForm.DBEdit11.Text;
    m                       := Zadanie;
    p                       := ExtractFilePath(put);
    f                       := p + m + '.doc';
    Count                   := 13;
    handle                  := FileOpen(
        f,
        0);
    If handle < 0 Then
      begin
        MessageDlg(
            'Не найден файл с кодировкой задания.' +
            'Выполните все предварительные действия и попробуйте снова.',
            mtError,
            [mbOk],
            0);
        Error := true;
        exit;
      end;

    repeat
      Count := FileRead(handle, buffer, 13);
      if ((buffer[0] = 'O') and (Count = 13)) then
        begin
          for i        := 0 to 5 do
            buffer1[i] := buffer[i];
          s            := buffer1;
          if buffer[7] = '0' then
            v1 := False
          else
            v1 := true;
          if buffer[8] = '0' then
            v2 := False
          else
            v2 := true;
          if buffer[9] = '0' then
            v3 := False
          else
            v3 := true;
          if buffer[10] = '0' then
            v4 := False
          else
            v4 := true;
          TMainForm.Table5.appendrecord([s, v1, v2, v3, v4, 0]);
        end;
      if ((buffer[0] <> 'O')) then
        FileSeek(
            handle,
            -11,
            1);
    until Count <> 13;

    for i        := 1 to 8 do
      Buf_zad[i] := 0;

    TMainForm.Table5.Last;
    s := TMainForm.DBEdit16.Text;
    val(
        s[4],
        Zad_Vsego,
        Code);
    TMainForm.Table5.First;
    s     := TMainForm.DBEdit16.Text;
    j     := 1;
    for i := 1 to TMainForm.Table5.RecordCount do
      begin
        s := TMainForm.DBEdit16.Text;
        val(
            s[6],
            curr,
            Code);
        Buf_zad[j] := curr;
        TMainForm.Table5.Next;
        s := TMainForm.DBEdit16.Text;
        val(
            s[6],
            Next,
            Code);
        if Next < curr then
          begin
            Buf_zad[j] := curr;
            j          := j + 1;
          end;
      end;

    summ           := 0;
    for i          := 1 to 64 do
      Nomer_zad[i] := 0;
    for i          := 1 to 8 do
      B[i]         := 1;
    TMainForm.Table5.First;
    d := 0;
    randomize;
    for i := 1 to Zad_Vsego do
      begin
        RandMy(Buf_zad[i]);
        d                     := d + 10;
        for j                 := 1 to Buf_zad[i] do
          Nomer_zad[j + summ] := B[j] + d;
        summ                  := summ + Buf_zad[i];
      end;
    TMainForm.Table5.First;
    for i := 1 to TMainForm.Table5.RecordCount do
      begin
        str(
            Nomer_zad[i],
            ss);
        TMainForm.Table5.Edit;
        TMainForm.Table5.SetFields([nil, nil, nil, nil, nil, ss]);
        TMainForm.Table5.Next;
      end;
    for i        := 1 to 8 do
      Mas_Zad[i] := Buf_zad[i];
  end;

procedure NVariant; { считывание информации из файла кодировок задания
    устанавливаются переменные SOP,SO1,SO2,SO3,SO4, а также Mas_Zad }
  var
    j             : integer;
    v1, v2, v3, v4: boolean;
  begin
    TMainForm.Query5.Active := true;
    TMainForm.Query5.First;
    for j := 1 to TMainForm.Query5.RecordCount do
      begin
        TMainForm.Query5.delete;
        TMainForm.Query5.Next;
      end;
    TMainForm.Query5.Close;
    TMainForm.Query5.SQL.clear;
    TMainForm.Query5.SQL.Add('select * from Kodir Order by Nomer asc');
    TMainForm.Query5.Open;
    SOP := 0;
    SO1 := 0;
    SO2 := 0;
    SO3 := 0;
    SO4 := 0;
    TMainForm.Query5.First;
    for j := 1 to TMainForm.Query5.RecordCount do
      begin
        v1 := TMainForm.Query5.FieldByName('V1').AsBoolean;
        if v1 = False then
          begin
            SO[1, j] := '0';
            SO1      := SO1;
          end
        else
          begin
            SO1      := SO1 + 1;
            SO[1, j] := '1';
          end;
        v2 := TMainForm.Query5.FieldByName('V2').AsBoolean;
        if v2 = False then
          begin
            SO[2, j] := '0';
            SO2      := SO2;
          end
        else
          begin
            SO2      := SO2 + 1;
            SO[2, j] := '1';
          end;
        v3 := TMainForm.Query5.FieldByName('V3').AsBoolean;
        if v3 = False then
          begin
            SO[3, j] := '0';
            SO3      := SO3;
          end
        else
          begin
            SO3      := SO3 + 1;
            SO[3, j] := '1';
          end;
        v4 := TMainForm.Query5.FieldByName('V4').AsBoolean;
        if v4 = False then
          begin
            SO[4, j] := '0';
            SO4      := SO4;
          end
        else
          begin
            SO4      := SO4 + 1;
            SO[4, j] := '1';
          end;
        TMainForm.Query5.Next;
      end;
    for j := 1 to 8 do
      SOP := SOP + Mas_Zad[j];
  end;

procedure RandMy(var max: integer);
  var
    C   : array [1 .. 8] of integer;
    k, r: integer;
  begin
    for k  := 1 to 8 do
      C[k] := 0;
    case max of
      8:
        for k := 1 to 8 do
          begin
            repeat
              r := random(9);
            until ((C[1] <> r) and (C[2] <> r) and (C[3] <> r) and (C[4] <> r)
                and (C[5] <> r) and (C[6] <> r) and (C[7] <> r) and (C[8] <> r)
                and (r <> 0));
            C[k] := r;
            B[k] := r;
          end;
      7:
        for k := 1 to 7 do
          begin
            repeat
              r := random(8);
            until ((C[1] <> r) and (C[2] <> r) and (C[3] <> r) and (C[4] <> r)
                and (C[5] <> r) and (C[6] <> r) and (C[7] <> r) and (r <> 0));
            C[k] := r;
            B[k] := r;
          end;
      6:
        for k := 1 to 6 do
          begin
            repeat
              r := random(7);
            until ((C[1] <> r) and (C[2] <> r) and (C[3] <> r) and (C[4] <> r)
                and (C[5] <> r) and (C[6] <> r) and (r <> 0));
            C[k] := r;
            B[k] := r;
          end;
      5:
        for k := 1 to 5 do
          begin
            repeat
              r := random(6);
            until ((C[1] <> r) and (C[2] <> r) and (C[3] <> r) and (C[4] <> r)
                and (C[5] <> r) and (r <> 0));
            C[k] := r;
            B[k] := r;
          end;
      4:
        for k := 1 to 4 do
          begin
            repeat
              r := random(5);
            until ((C[1] <> r) and (C[2] <> r) and (C[3] <> r) and (C[4] <> r)
                and (r <> 0));
            C[k] := r;
            B[k] := r;
          end;
      3:
        for k := 1 to 3 do
          begin
            repeat
              r := random(4);
            until ((C[1] <> r) and (C[2] <> r) and (C[3] <> r) and (r <> 0));
            C[k] := r;
            B[k] := r;
          end;
      2:
        for k := 1 to 2 do
          begin
            repeat
              r := random(3);
            until ((C[1] <> r) and (C[2] <> r) and (r <> 0));
            C[k] := r;
            B[k] := r;
          end;
      1:
        for k := 1 to 1 do
          begin
            repeat
              r := random(2);
            until (r <> 0);
            C[k] := r;
            B[k] := r;
          end;
    end;
  end;

procedure RadioGroup5Clicks;
  var
    g, v, i, j       : integer;
    s                : string;
    w, x1, x2, y1, y2: integer;
  begin
    w  := TMainForm.Width;
    x1 := (w - 520) div 2;
    x2 := w - ((w - 520) div 2);
    y1 := 120;
    y2 := 320;
    if TMainForm.Button12.Caption = 'Вопросы' then
      begin
        If TMainForm.RadioGroup5.ItemIndex = 1 then
          begin
            TMainForm.Canvas.Pen.Width   := 1;
            TMainForm.Canvas.Pen.Color   := clMenu;
            TMainForm.Canvas.Brush.Color := clMenu;
            TMainForm.Canvas.Rectangle(
                60,
                330,
                620,
                360);

            for i := 1 to Zad_Vsego do
              begin
                str(
                    col[i],
                    s);
                TMainForm.Canvas.Font.size := 18;
                if col[i] >= 100 then
                  TMainForm.Canvas.TextOut(
                      trunc(((x2 - x1) / 8)) * i,
                      331,
                      s);
                if col[i] < 10 then
                  TMainForm.Canvas.TextOut(
                      trunc(((x2 - x1) / 8)) * i + 15,
                      331,
                      s);
                if ((col[i] >= 10) and (col[i] < 100)) then
                  TMainForm.Canvas.TextOut(
                      trunc(((x2 - x1) / 8)) * i + 5,
                      331,
                      s);
              end;
            TMainForm.RadioGroup5.ItemIndex := 1;
          end;
        If TMainForm.RadioGroup5.ItemIndex = 0 then
          begin

            for i := 1 to Zad_Vsego do
              begin
                TMainForm.Canvas.Font.Color  := ClGreen;
                TMainForm.Canvas.Font.Name   := 'Times New Roman';
                TMainForm.Canvas.Font.style  := [fsBold];
                TMainForm.Canvas.Brush.Color := clMenu;
                str(
                    round(((col[i] / kol_P) * 100)),
                    s);
                TMainForm.Canvas.Font.size := 18;
                if round(((col[i] / kol_P) * 100)) = 100 then
                  TMainForm.Canvas.TextOut(
                      trunc(((x2 - x1) / 8)) * i,
                      331,
                      s + '%');
                if round(((col[i] / kol_P) * 100)) < 10 then
                  TMainForm.Canvas.TextOut(
                      trunc(((x2 - x1) / 8)) * i + 15,
                      331,
                      s + '%');
                if ((round(((col[i] / kol_P) * 100)) >= 10) and
                    (round(((col[i] / kol_P) * 100)) < 100)) then
                  TMainForm.Canvas.TextOut(
                      trunc(((x2 - x1) / 8)) * i + 5,
                      331,
                      s + '%');
              end;
            TMainForm.RadioGroup5.ItemIndex := 0;
          end;
      end;

    if TMainForm.Button12.Caption = 'Оценки' then
      begin
        If TMainForm.RadioGroup5.ItemIndex = 1 then
          begin
            TMainForm.Canvas.Pen.Width   := 1;
            TMainForm.Canvas.Pen.Color   := clMenu;
            TMainForm.Canvas.Brush.Color := clMenu;
            TMainForm.Canvas.Rectangle(
                60,
                330,
                320,
                360);
            for i := 1 to 4 do
              begin
                j       := 0;
                for g   := 1 to 16 do
                  for v := 1 to 8 do
                    begin
                      str(
                          6 - i,
                          s);
                      if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].Ocenka = s))
                      then
                        begin
                          j := j + 1;
                        end;
                    end;
                TMainForm.Canvas.Font.Color := clBlack;
                str(
                    j,
                    s);
                TMainForm.Canvas.Font.size := 18;
                if j >= 100 then
                  TMainForm.Canvas.TextOut(
                      trunc(((x2 - x1) / 8)) * i,
                      331,
                      s);
                if j < 10 then
                  TMainForm.Canvas.TextOut(
                      trunc(((x2 - x1) / 8)) * i + 15,
                      331,
                      s);
                if ((j >= 10) and (j < 100)) then
                  TMainForm.Canvas.TextOut(
                      trunc(((x2 - x1) / 8)) * i + 5,
                      331,
                      s);
              end;
            TMainForm.RadioGroup5.ItemIndex := 1;
          end;

        If TMainForm.RadioGroup5.ItemIndex = 0 then
          begin
            for i := 1 to 4 do
              begin
                j := 0;
                str(
                    6 - i,
                    s);
                for g   := 1 to 16 do
                  for v := 1 to 8 do
                    begin
                      if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].Ocenka = s))
                      then
                        j := j + 1;
                    end;
                TMainForm.Canvas.Pen.Color   := clMenu;
                TMainForm.Canvas.Brush.Color := clMenu;
                str(
                    round(((j / kol_P) * 100)),
                    s);
                TMainForm.Canvas.Font.size := 18;
                if round(((j / kol_P) * 100)) = 100 then
                  TMainForm.Canvas.TextOut(
                      trunc(((x2 - x1) / 8)) * i,
                      331,
                      s + '%');
                if round(((j / kol_P) * 100)) < 10 then
                  TMainForm.Canvas.TextOut(
                      trunc(((x2 - x1) / 8)) * i + 15,
                      331,
                      s + '%');
                if ((round(((j / kol_P) * 100)) >= 10) and
                    (round(((j / kol_P) * 100)) < 100)) then
                  TMainForm.Canvas.TextOut(
                      trunc(((x2 - x1) / 8)) * i + 5,
                      331,
                      s + '%');
              end;
            TMainForm.RadioGroup5.ItemIndex := 0;
          end;
      end;
  end;

procedure Button16ClickS;
  var
    FIOS, NGS, NSS, NBS, OcS, s, ss: string;
    v, g, i, x, y                  : integer;
  begin
    ss    := ExtractFilePath(TMainForm.OpenDialog1.FileName);
    kol_P := 0;
    Printer.BeginDoc;
    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          if Mesta[g, v].Reg = ' ' then
            kol_P := kol_P + 1;
        end;
    Printer.Canvas.Font.size  := 14;
    Printer.Canvas.Font.Name  := 'Times New Roman';
    Printer.Canvas.Font.style := [fsBold];
    Printer.Canvas.TextOut(
        100,
        25,
        'Дата опроса ' + fn[6] + fn[7] + '.' + fn[9] + fn[10] + '.' + dates[7] +
        dates[8]);
    if fn[4] = '_' then
      Printer.Canvas.TextOut(
          705,
          25,
          'Подразделение ' + fn[2] + fn[3])
    else
      Printer.Canvas.TextOut(
          705,
          25,
          'Подразделение ' + fn[2] + fn[3] + fn[4]);
    str(
        kol_P,
        s);
    Printer.Canvas.TextOut(
        1245,
        25,
        'Число отвечавших ' + s);
    if ss[8] = 'E' then
      Printer.Canvas.TextOut(
          1865,
          25,
          'Предмет ЭТП');
    if ss[8] = 'M' then
      Printer.Canvas.TextOut(
          1865,
          25,
          'Предмет МП');
    if ss[10] = 'S' then
      Printer.Canvas.TextOut(
          1865,
          25,
          'Предмет ТЭС');
    if ss[11] = '1' then
      Printer.Canvas.TextOut(
          1865,
          25,
          'Предмет ТЭЦ1');
    if ss[11] = '3' then
      Printer.Canvas.TextOut(
          1865,
          25,
          'Предмет ТЭЦ3');
    TMainForm.Query4.Active := true;
    TMainForm.Query4.First;
    x                        := 130;
    y                        := 130;
    Printer.Canvas.Font.size := 10;
    for i                    := 1 to TMainForm.Query4.RecordCount do
      begin
        NGS  := TMainForm.Query4.FieldByName('NG').AsString;
        NSS  := TMainForm.Query4.FieldByName('NS').AsString;
        FIOS := TMainForm.Query4.FieldByName('FIO').AsString;
        NBS  := TMainForm.Query4.FieldByName('NB').AsString;
        OcS  := TMainForm.Query4.FieldByName('Oc').AsString;
        if ((i <= 64) and (i <= (TMainForm.Query4.RecordCount div 2) + 1)) then
          begin
            Printer.Canvas.TextOut(
                150,
                x,
                NGS);
            Printer.Canvas.TextOut(
                235,
                x,
                NSS);
            Printer.Canvas.TextOut(
                305,
                x,
                NBS);
            Printer.Canvas.TextOut(
                425,
                x,
                FIOS);
            Printer.Canvas.TextOut(
                850,
                x,
                OcS);
            x := x + 46;
          end;
        if ((i > 64) and (i > (TMainForm.Query4.RecordCount div 2) + 1)) then
          begin
            Printer.Canvas.TextOut(
                1050,
                y,
                NGS);
            Printer.Canvas.TextOut(
                1135,
                y,
                NSS);
            Printer.Canvas.TextOut(
                1205,
                y,
                NBS);
            Printer.Canvas.TextOut(
                1325,
                y,
                FIOS);
            Printer.Canvas.TextOut(
                1750,
                y,
                OcS);
            y := y + 46;
          end;
        TMainForm.Query4.Next;
      end;
    Printer.EndDoc;
  end;

end.
