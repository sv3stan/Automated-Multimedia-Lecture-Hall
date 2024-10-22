program Project1;

uses
  Forms,
  Unit1 in 'src\UNIT1.PAS' {Form1},
  Unit2 in 'src\UNIT2.PAS';

{$R *.RES}

begin
  Application.CreateForm(TForm1, TMainForm);
  Application.Run;
end.
