unit Unit1;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Menus, DBTables, DB, Grids,
  DBGrids, DBCtrls, Mask, TabNotBk, Buttons, DBLookup, Tabs, unit2, VBXCtrl,
  Pict,
  FileCtrl, printers, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N71: TMenuItem;
    N81: TMenuItem;
    Timer2: TTimer;
    DataSource1: TDataSource;
    Table1: TTable;
    DBEdit1: TDBEdit;
    N16: TMenuItem;
    N14: TMenuItem;
    TabbedNotebook1: TTabbedNotebook;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Table3: TTable;
    DataSource3: TDataSource;
    Table2: TTable;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    RadioGroup2: TRadioGroup;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    ComboBox1: TComboBox;
    DBCheckBox6: TDBCheckBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    DBEdit9: TDBEdit;
    ComboBox4: TComboBox;
    N15: TMenuItem;
    Table4: TTable;
    DataSource4: TDataSource;
    TabbedNotebook2: TTabbedNotebook;
    Label16: TLabel;
    Label17: TLabel;
    RadioGroup3: TRadioGroup;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    Query1: TQuery;
    DataSource5: TDataSource;
    Image1: TImage;
    Label18: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBEdit13: TDBEdit;
    Edit2: TEdit;
    ComboBox5: TComboBox;
    DBEdit14: TDBEdit;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Image2: TImage;
    DBEdit15: TDBEdit;
    Query2: TQuery;
    DataSource6: TDataSource;
    Table5: TTable;
    DataSource7: TDataSource;
    DBGrid3: TDBGrid;
    DBEdit16: TDBEdit;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Timer3: TTimer;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Image3: TImage;
    ListBox1: TListBox;
    Image4: TImage;
    Timer4: TTimer;
    J1: TMenuItem;
    OpenDialog1: TOpenDialog;
    BitBtn11: TBitBtn;
    Button6: TButton;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    N17: TMenuItem;
    N18: TMenuItem;
    DBEdit18: TDBEdit;
    Query3: TQuery;
    DataSource8: TDataSource;
    DBEdit19: TDBEdit;
    ComboBox6: TComboBox;
    Label31: TLabel;
    BitBtn12: TBitBtn;
    Label32: TLabel;
    PopupMenu1: TPopupMenu;
    N19: TMenuItem;
    Timer5: TTimer;
    Button7: TButton;
    BitBtn13: TBitBtn;
    ListBox2: TListBox; { Высвечивает список курсантов }
    BitBtn14: TBitBtn;
    Timer6: TTimer;
    Timer7: TTimer;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Table6: TTable;
    DataSource9: TDataSource;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    BitBtn4: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    Table7: TTable;
    DataSource10: TDataSource;
    DBGrid2: TDBGrid;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Query4: TQuery;
    DataSource11: TDataSource;
    Label7: TLabel;
    Label8: TLabel;
    ListBox3: TListBox;
    N24: TMenuItem;
    Button11: TButton;
    ComboBox7: TComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Button12: TButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    RadioGroup4: TRadioGroup;
    RadioGroup5: TRadioGroup;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label9: TLabel;
    Label37: TLabel;
    DBNavigator2: TDBNavigator;
    Label38: TLabel;
    DBEdit23: TDBEdit;
    Table8: TTable;
    DataSource12: TDataSource;
    ListBox4: TListBox;
    ListBox5: TListBox;
    ListBox6: TListBox;
    Image5: TImage;
    BitBtn5: TBitBtn;
    SpeedButton14: TSpeedButton;
    OpenDialog2: TOpenDialog;
    Label15: TLabel;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Query5: TQuery;
    DBEdit17: TDBEdit;
    DataSource13: TDataSource;
    DBEdit24: TDBEdit;
    Button16: TButton;
    Table9: TTable;
    DataSource14: TDataSource;

    procedure Timer1Timer(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TabbedNotebook1Enter(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure TabbedNotebook1Change(
        Sender         : TObject;
        NewTab         : Integer;
        var AllowChange: Boolean);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Table4AfterInsert(DataSet: TDataset);
    procedure DBEdit10Click(Sender: TObject);
    procedure DBEdit11Click(Sender: TObject);
    procedure RadioGroup3Enter(Sender: TObject);
    procedure DBNavigator1Click(
        Sender: TObject;
        Button: TNavigateBtn);
    procedure N5Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure ComboBox5Enter(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Variant;
    procedure Vopros;
    Procedure Zadaniya;
    procedure FormCreate(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Write_Rez;
    Procedure Konec_Oprosa;
    procedure ComboBox3Change(Sender: TObject);
    procedure J1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);

    procedure ListBox3Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure RadioGroup5Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure DBNavigator2Click(
        Sender: TObject;
        Button: TNavigateBtn);
    procedure N21Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button16Click(Sender: TObject);

    { procedure Timer8Timer(Sender: TObject); }

  public
  private { Private declarations }
  public { Public declarations } end;

type
  Point_Buf_Mem = ^Buf_Mem;
  Buf_Mem       = array [0 .. 31] of byte;

var
  TMainForm : TForm1;
  p         : pointer;
  Mem_Buf   : Point_Buf_Mem; { }
  raz       : Integer;
  sred_oc   : Integer;
  Chislo_Zap: Integer;
  { Определяет количество зарегестрированных заданий. Используется для PopupMenu3 }
  Flag_Reg_Vyp, P_Flag, P2_Flag, Error, Konec, Flag_Din_Akt, Flag_Izm_var,
      F_Insert, F_New: Boolean; { }
  Zero_Cikl          : Boolean;
  { Говорит о том, что процедуре опроса нужно сделать один удлиненный цикл }
  Zero_Cikl_One: Boolean; { Дополнительный флаг }

  Zad, Vop, Zad_Vsego, Cur_Zad, Cur_Vop, Nom_Vop, ItInd, wariant: Integer;
  { Nom_Vop - содержит удивительно точные сведения о номере текущего вопроса }

  SOP, SO1, SO2, SO3, SO4: Integer;
  { SOP - хранит количество вопросов в задании всего
    SOx - хранит количество правильных ответов для конкретного варианта }

  Otl_I, Xor_I, Ud_I: Real;
  { Значения критериев для оценки курсантов индивидуально }
  Sum_3, Sum_4, Sum_5, Sum_45, Sum_55: Integer;
  { Значения критериев для оценки подразделения }
  Ball: Real;                   { вычисленный рейтинг для установки оценки }
  nm  : array [0 .. 4] of char; { }
  SO: array [1 .. 4, 1 .. 64] of char; { Хранит кодировку задания по вариантам }
  SO_Kod: array [1 .. 4, 1 .. 16] of char;
  { Хранит кодировку задания в закодированном виде }
  Mas_Zad      : Array [1 .. 8] of Integer; { }
  Reg_Potok_Nom: Integer; { Номер потока последним прошедшего регистрацию }

  Predmet, Kurs, Group, Tema, Zadanie, Put: string; { }
  Vr, Vr_Oprosa                           : Integer;
  { Определяет уровень сложности опроса по количеству времени на ответ }
  Flag_N24: Boolean; { флаг определяет в первый раз выполняется данная процедура
    или нет: если то False нет, а если True то да }
  Times, Dates: String[8];
  { Переменные хранят дату и время опроса записываемую в файл и
    считываемую из файла }
  fn: String[11];
  { Хранит имя файла с результатами опроса для процедуры подсчета оценок }
  HandleFn : Integer; { Указаетль на файл с результатми опроса }
  Nom_Potok: String[2];
  { Номер потока - записывается из файла с результатами опроса }

  Col: Array [1 .. 8] of Integer;

  kol_p, Kol_Kur, Kol_Kur_P: Integer; { Количество курсантов по списку (Kol_Kur)
    и количество курсантов присутствует (Kol_Kur_P) }
  regim     : Integer;
  Count_Povt: Integer;
  { Задержка перед тем как убрать рисунок с ответом с экрана }
  Regim_Zarisovki: byte;
  { Введено для определения режима зарисовки Image3 и Image4
    если равна 0 то выключется зарисовка и того и другого,
    если равна 1 значит зарисовывается только Image4, если
    равна 2 значит зарисовываются и то и другое }
  I_W_V, I_W_H, I_H_V, I_H_H: Integer; { Координаты для зарисовки Image4 }
  I_W_V_N, I_W_H_N, I_H_V_N, I_H_H_N: Integer;
  { Координаты для зарисовки Image3 }
  Vopros_Otvet: byte;
  { Введено для определения режима показа: 1-вопрос или 2-ответ }
  Mesta: array [1 .. 16, 1 .. 8] of record nm: string[5];
  { nm - номер кнопки на столе }
  It  : Integer; { it - номер элемента RadioGroup }
  FIO : Array [1 .. 17] of char;
  NomG: Array [1 .. 3] of char;
  { номер группы зарегистирированного курсанта для конкретного места }
  NomS: Array [1 .. 2] of char;
  { номер по списку зарегистирированного курсанта для конкретного места }
  Variant: Integer; { variant - номер варианта }
  Verno  : Array [1 .. 8] of Boolean;
  { переменная определяет верно ли ответило место на
    конкретный вопрос задания. если ответы верны то
    устанавливается значение TRUE, если же ответы не верны
    то устанавливается значение FALSE }
  Otvet: Array [1 .. 64] of char; { переменная содержит ответы на все вопросы
    по конкретному месту не в закодированном виде }
  Otvets: Array [1 .. 16] of char; { переменная содержит ответы на все вопросы
    по конкретному месту в закодированном виде }
  Otvet_R: Integer; { Количество полученных верных ответов }
  Otvet_L: Integer; { Количество полученных неверных ответов }
  Flag_R : Boolean; { Флаг о получении верного ответа }
  Flag_L : Boolean; { Флаг о получении неверного ответа }
  Reg    : char;    { Результаты полученные при регистрации }
  False  : Boolean;
  { Флаг того, что ответ данный курсантом не совпадает с эталонным ответом
    используется в режиме комплексного оценивания подразделения по
    каждому конкретному вопросу. если курсант ответил не верно, то
    флаг устанавливается в истину, и наоборот }
  Ocenka: char; { Полученная оценка вычисляется по формуле
    количество полученных правильных ответов делить на истинное
    количество правильных ответов минус количество полученных
    неправильных ответов делить на истинное
    количество неправильных ответов }
end;

implementation

procedure Read_Sel(var p: pointer); far; external 'ASD';
procedure Free_Sel; far; external 'ASD';
procedure Create_Sel; far; external 'ASD';

{$R *.DFM}

procedure sopost;
  var
    i, g: Integer;
  begin
    sopostav;
    for i   := 1 to 16 do
      for g := 1 to 8 do
        begin
          Mesta[i, g].nm := mestas[i, g].nm;
          Mesta[i, g].It := mestas[i, g].It;
        end;
  end;

procedure TForm1.FormCreate(Sender: TObject);
  var
    wndHandle       : THandle;
    wndClass        : array [0 .. 50] of char;
    x, g, n, v, code: Integer;
    s               : string;
  begin
    raz := 1;
    { j1.ShowHint:=true; }

    StrPCopy(
        @wndClass[0],
        'Shell_TrayWnd');
    wndHandle := FindWindow(
        @wndClass[0],
        nil);
    ShowWindow(
        wndHandle,
        SW_HIDE); { // This hides the taskbar }

    P2_Flag          := False;
    Chislo_Zap       := 1;
    regim            := 1;
    BitBtn6.ShowHint := True;
    sopost;
    { OpenDialog1.FileName:='I*.*'; }
    OpenDialog1.FileName := 'd:\zad\etp\zad8\i211_23.121';
    RadioGroup3.ShowHint := True;
    Flag_N24             := False;
    Reg_Potok_Nom        := 0;
    Count_Povt           := 0;
    for g                := 1 to 16 do
      for v              := 1 to 8 do
        begin
          Mesta[g, v].Otvets     := '0000000000000000';
          for x                  := 1 to 64 do
            Mesta[g, v].Otvet[x] := '0';
          ItInd                  := Mesta[g, v].It;
          Table1.SetKey;
          Table1.FieldByName('Ident').AsInteger := ItInd;
          Table1.GotoKey;
          DBEdit1.DataField := 'Nomer1';
          s                 := DBEdit1.text;
          val(
              s,
              n,
              code);
          Mesta[g, v].Variant := n;
        end;

    ListBox3.TopIndex := 5;
    Vr_Oprosa         := 6;

    For v := 1 to 64 do
      begin
        SO[1, v] := '0';
        SO[2, v] := '0';
        SO[3, v] := '0';
        SO[4, v] := '0';
      end;

    Zero_Cikl_One := False;
    Zero_Cikl     := False;
  end;

{ procedure TForm1.AktiwPam; Begin   AktPam(buf1);  buf:=buf1;end; }
{ ------------------------------------------------------------------------------------------- }
procedure TForm1.Timer1Timer(Sender: TObject);
  { Проверка исправности соединений }    { П }
  var
    a, v, g, g_1: byte;
  begin
    if Flag_Din_Akt = False then
      exit;
    Read_Sel(p);
    Mem_Buf := p; { р }
    for g   := 1 to 16 do
      begin
        g_1   := g - 1;
        a     := Mem_Buf^[g_1 * 2];
        for v := 1 to 8 do
          begin { о }
            if (a and 1) <> 0 then
              begin
                ItInd                            := Mesta[g, v].It; { в }
                RadioGroup1.Items.Strings[ItInd] := Mesta[g, v].nm;
              end
            else
              begin { е }
                ItInd                            := Mesta[g, v].It;
                RadioGroup1.Items.Strings[ItInd] := ' ';
              end;
            a := a shr 1; { р }
          end;
      end;
  end; { к }

{ а }
procedure TForm1.N2Click(Sender: TObject);
  begin         { и }
    Create_Sel; { с }
    N1.Visible          := False;
    N3.Visible          := False;
    N14.Visible         := False; { п }
    N15.Visible         := False;
    N16.Visible         := False;
    N17.Visible         := False;
    N20.Visible         := False; { р }
    RadioGroup1.Caption :=
        '                --------  Проверка исправности монтажа  --------                 ';
    BitBtn7.Visible     := True; { AktiwPam; }
    Flag_Din_Akt        := True; { в }
    RadioGroup1.Visible := True;
    Timer1.Enabled      := True;
  end; { н }

{ о }
procedure TForm1.BitBtn7Click(Sender: TObject); { с }
  var
    x: Integer; { Выключение режима проверки исепроавности соединений
      и просмотра номера варианта }               { т }
  begin
    Free_Sel;
    Flag_Din_Akt        := False;
    Timer2.Enabled      := False; { и }
    RadioGroup1.Visible := False;
    BitBtn7.Visible     := False;
    Label32.Visible     := False; { с }
    Timer1.Enabled      := False;
    for x               := 0 to 129 do
      begin { о }
        RadioGroup1.Items.Strings[x] := '     ';
      end; { е }
    N1.Visible  := True;
    N3.Visible  := True;
    N14.Visible := True; { д }
    N15.Visible := True;
    N16.Visible := True;
    N17.Visible := True;
    N20.Visible := True;
  end; { инений }
{ ------------------------------------------------------------------------------------------- }

{ ----------------------------------------------------------------------------------------- }
procedure TForm1.Timer5Timer(Sender: TObject); { Регистрация }
  var
    a, v, g, g_1: byte;
  begin
    if Flag_Din_Akt = False then
      exit;
    Read_Sel(p);
    Mem_Buf := p;
    for g   := 1 to 16 do
      begin
        g_1   := g - 1;
        a     := Mem_Buf^[g_1 * 2];
        for v := 1 to 8 do
          begin
            if (a and 1) <> 0 then
              begin { Р }
                ItInd                            := Mesta[g, v].It;
                RadioGroup1.Items.Strings[ItInd] := Mesta[g, v].nm; { Е }
                If Mesta[g, v].Reg <> '-' then
                  Mesta[g, v].Reg := ' ';
              end
            else
              begin { Ж }
                ItInd                            := Mesta[g, v].It;
                RadioGroup1.Items.Strings[ItInd] := ' ';
              end;
            a := a shr 1;
          end;
      end;
  end; { И }

{ Выключение режима просмотра результатов регистрации }                                { М }
procedure TForm1.BitBtn14Click(Sender: TObject);
  var
    i: Integer;
  begin
    RadioGroup1.Visible            := False;
    BitBtn14.Visible               := False; { Р }
    Label32.Visible                := False;
    For i                          := 1 to 128 do
      RadioGroup1.Items.Strings[i] := ' '; { Е }
    N1.Visible                     := True;
    N3.Visible                     := True;
    N14.Visible                    := True;
    N15.Visible                    := True;
    N16.Visible                    := True;
    N17.Visible                    := True;
    N20.Visible                    := True; { Г }
  end;
{ И }

procedure TForm1.Button7Click(Sender: TObject);
  { Подведение итогов регистрации }       { С }
  var
    i, g, v  : Integer;
    kk, kp, s: string;
  begin
    Flag_Reg_Vyp   := True;
    Flag_Din_Akt   := False;
    Timer5.Enabled := False;
    Free_Sel;
    Button7.Visible     := False; { Т }
    RadioGroup1.Visible := False;
    For g               := 1 to 16 do
      for v             := 1 to 8 do
        begin
          RadioGroup1.Items.Strings[Mesta[g, v].It] := Mesta[g, v].Reg; { Р }
          if Mesta[g, v].Reg = ' ' then
            Kol_Kur_P := Kol_Kur_P + 1;
        end;
    str(
        Kol_Kur,
        kk);
    str(
        Kol_Kur_P,
        kp); { А }
    If Kol_Kur_P = 0 then
      begin
        MessageBeep(0);
        MessageDlg(
            'Ни один курсант не зарегистрировался.' + { Ц }
            ' Нужно провести регистрацию заново.',
            mtError,
            [mbOk],
            0);
        N1.Visible      := True;
        N3.Visible      := True;
        N14.Visible     := True; { И }
        N15.Visible     := True;
        N16.Visible     := True;
        N17.Visible     := True;
        N20.Visible     := True;
        Kol_Kur_P       := 0;
        Flag_Reg_Vyp    := False;
        Label32.Visible := False;
        exit;
      end; { И }
    RadioGroup1.Caption := ' =Подразделение=' + ComboBox6.text +
        '==Всего по списку=' + kk + +'=Присутствует=' + kp + '= '; { }
    RadioGroup1.Visible := True;
    BitBtn14.Visible    := True;
  end;
{ ----------------------------------------------------------------------------------------- }

procedure TForm1.N7Click(Sender: TObject); { Пункт меню "Просмотр вариантов -
    Вариант 1" }
  var
    k, l, n, code: Integer;
    s            : string;
  begin
    sopost;
    N1.Visible  := False;
    N3.Visible  := False;
    N14.Visible := False;
    N20.Visible := False;
    N15.Visible := False;
    N16.Visible := False;
    N17.Visible := False;
    for l       := 1 to 16 do
      begin
        for k := 1 to 8 do
          begin
            ItInd := Mesta[l, k].It;
            Table1.SetKey;
            Table1.FieldByName('Ident').AsInteger := ItInd;
            Table1.GotoKey;
            DBEdit1.DataField := 'Nomer1';
            s                 := DBEdit1.text;
            val(
                s,
                n,
                code);
            Mesta[l, k].Variant              := n;
            RadioGroup1.Items.Strings[ItInd] := Mesta[l, k].nm;
          end;
      end;
    BitBtn7.Visible := True;
    Create_Sel;
    { aktiwpam; } Flag_Din_Akt := True;
    RadioGroup1.Visible        := True;
    RadioGroup1.Caption        :=
        '           --------  Распределение вариантов   --------                       ';
    Timer2.Enabled := True;
  end;

procedure TForm1.Timer2Timer(Sender: TObject);
  { Распределение вариантов по местам }
  var
    a, g, v, g_1: byte;
    s           : string[1];
  begin
    if Flag_Din_Akt = False then
      exit;
    Read_Sel(p);
    Mem_Buf := p;
    for g   := 1 to 16 do
      begin
        g_1   := g - 1;
        a     := Mem_Buf^[g_1 * 2];
        for v := 1 to 8 do
          begin
            if (a and 1) <> 0 then
              begin
                ItInd := Mesta[g, v].It;
                str(
                    Mesta[g, v].Variant,
                    s);
                RadioGroup1.Items.Strings[ItInd] := s;
              end
            else
              begin
                ItInd := Mesta[g, v].It;
                str(
                    Mesta[g, v].Variant,
                    s);
                ItInd                            := Mesta[g, v].It;
                RadioGroup1.Items.Strings[ItInd] := Mesta[g, v].nm;
              end;
            a := a shr 1;
          end;
      end;
  end;

procedure TForm1.BitBtn1Click(Sender: TObject);
  { Кнопка новая запись на TabbedNoteBook1 страница группы по дисциплинам }
  begin
    Table2.appendrecord([0, 0, False, False, False, False, False, False]);
  end;

procedure TForm1.BitBtn2Click(Sender: TObject);
  { Выход из пункта меню "Настройка" }
  begin
    TabbedNotebook1.Enabled := False;
    TabbedNotebook1.Visible := False;
    BitBtn1.Visible         := False;
    N1.Visible              := True;
    N3.Visible              := True;
    N14.Visible             := True;
    N20.Visible             := True;
    N15.Visible             := True;
    N16.Visible             := True;
    N17.Visible             := True;
  end;

procedure TForm1.TabbedNotebook1Enter(Sender: TObject);
  var
    l, k, n, code: Integer;
    s            : string;
  begin
    Table2.last;
    sopost;
    Table1.first;
    for l   := 1 to 16 do
      for k := 1 to 8 do
        begin
          s := DBEdit1.text;
          val(
              s,
              n,
              code);
          Mesta[l, k].Variant := n;
          ItInd               := Mesta[l, k].It;
          str(
              Mesta[l, k].Variant,
              s);
          RadioGroup1.Items.Strings[ItInd] := s;
        end;
  end;

procedure TForm1.BitBtn3Click(Sender: TObject);
  { Кнопка удалить запись на TabbedNoteBook1 страница группы по дисциплинам }
  begin
    Table2.delete;
  end;

procedure TForm1.N14Click(Sender: TObject);
  { Пункт меню "Настройка" }
  begin
    N1.Visible              := False;
    N3.Visible              := False;
    N14.Visible             := False;
    N15.Visible             := False;
    N16.Visible             := False;
    N17.Visible             := False;
    N20.Visible             := False;
    TabbedNotebook1.Enabled := True;
    TabbedNotebook1.Visible := True; { tema:=edit3.text; }
    BitBtn1.Visible         := True;
  end;

procedure TForm1.BitBtn4Click(Sender: TObject);
  { Кнопка "Обновить критерии оценок" }
  begin
    Table6.appendrecord([DBEdit3.text, DBEdit4.text, DBEdit5.text]);
    Table8.appendrecord([DBEdit6.text, DBEdit7.text, DBEdit20.text,
        DBEdit21.text, DBEdit22.text]);

    Table6.delete;
    Table8.delete;
    if DBEdit23.text = '1' then
      Label38.Caption := 'Критерии для задания из 3 вопросов';
    if DBEdit23.text = '3' then
      Label38.Caption := 'Критерии для задания из 5 вопросов';
    if DBEdit23.text = '2' then
      Label38.Caption := 'Критерии для задания из 4 вопросов';

  end;

{ procedure TForm1.BitBtn5Click(Sender: TObject);begin table3.delete; end; }

procedure TForm1.TabbedNotebook1Change(
    Sender         : TObject;
    NewTab         : Integer;
    var AllowChange: Boolean);
  begin
    sopost; { BitBtn1.Visible:=False; }
    RadioGroup2.Visible := True;
    Label10.Visible     := True;
    DBEdit8.Visible     := True;
    Label12.Visible     := True;
    Label11.Visible     := True;

  end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
  var
    g, v: Integer;
    s   : string;
  begin
    if Flag_Izm_var = True then
      begin
        sopost;
        ItInd := RadioGroup2.ItemIndex;
        for g := 1 to 16 do
          begin
            for v := 1 to 8 do
              begin
                if Mesta[g, v].It = ItInd then
                  begin
                    Table1.SetKey;
                    Table1.FieldByName('Ident').AsInteger := ItInd;
                    Table1.GotoKey;
                    if ComboBox1.text = '1' then
                      DBEdit8.DataField := 'Nomer1';
                    if ComboBox1.text = '2' then
                      DBEdit8.DataField := 'Nomer2';
                    if ComboBox1.text = '3' then
                      DBEdit8.DataField := 'Nomer3';
                    if ComboBox1.text = '4' then
                      DBEdit8.DataField := 'Nomer4';
                    if ComboBox1.text = '5' then
                      DBEdit8.DataField := 'Nomer5';
                    if ComboBox1.text = '6' then
                      DBEdit8.DataField := 'Nomer6';
                    if ComboBox1.text = '7' then
                      DBEdit8.DataField := 'Nomer7';
                    if ComboBox1.text = '8' then
                      DBEdit8.DataField := 'Nomer8';
                    Label10.Caption     := Mesta[g, v].nm;
                  end;
              end;
          end;
      end;
  end;

procedure TForm1.ComboBox1Change(Sender: TObject);
  var
    g, v, k, l, m, n, code: Integer;
    ch                    : char;
    s                     : string;
  begin
    sopost;
    Flag_Izm_var := True;
    for g        := 1 to 16 do
      begin
        for v := 1 to 8 do
          begin
            ItInd := Mesta[g, v].It;
            Table1.SetKey;
            Table1.FieldByName('Ident').AsInteger := ItInd;
            Table1.GotoKey;
            if ComboBox1.text = '1' then
              DBEdit8.DataField := 'Nomer1';
            if ComboBox1.text = '2' then
              DBEdit8.DataField := 'Nomer2';
            if ComboBox1.text = '3' then
              DBEdit8.DataField := 'Nomer3';
            if ComboBox1.text = '4' then
              DBEdit8.DataField := 'Nomer4';
            if ComboBox1.text = '5' then
              DBEdit8.DataField := 'Nomer5';
            if ComboBox1.text = '6' then
              DBEdit8.DataField := 'Nomer6';
            if ComboBox1.text = '7' then
              DBEdit8.DataField := 'Nomer7';
            if ComboBox1.text = '8' then
              DBEdit8.DataField              := 'Nomer8';
            s                                := DBEdit8.text;
            RadioGroup2.Items.Strings[ItInd] := s;
          end;
      end;
  end;

procedure TForm1.DBEdit8Exit(Sender: TObject);
  begin
    RadioGroup2.Items.Strings[ItInd] := DBEdit8.text;
  end;

procedure TForm1.N8Click(Sender: TObject);
  var
    k, l, m, n, code: Integer;
    s               : string;
  begin
    sopost;
    N1.Visible  := False;
    N3.Visible  := False;
    N14.Visible := False;
    N20.Visible := False;
    N15.Visible := False;
    N16.Visible := False;
    N17.Visible := False;
    for l       := 1 to 16 do
      begin
        for k := 1 to 8 do
          begin
            ItInd := Mesta[l, k].It;
            Table1.SetKey;
            Table1.FieldByName('Ident').AsInteger := ItInd;
            Table1.GotoKey;
            DBEdit1.DataField := 'Nomer2';
            s                 := DBEdit1.text;
            val(
                s,
                n,
                code);
            Mesta[l, k].Variant              := n;
            RadioGroup1.Items.Strings[ItInd] := Mesta[l, k].nm;
          end;
      end;
    BitBtn7.Visible := True;
    Create_Sel;
    { aktiwpam; } Flag_Din_Akt := True;
    RadioGroup1.Visible        := True;
    RadioGroup1.Caption        :=
        '           --------  Распределение вариантов   --------                       ';
    Timer2.Enabled := True;
  end;

procedure TForm1.N9Click(Sender: TObject);
  var
    k, l, m, n, code: Integer;
    s               : string;
  begin
    sopost;
    N1.Visible  := False;
    N3.Visible  := False;
    N14.Visible := False;
    N20.Visible := False;
    N15.Visible := False;
    N16.Visible := False;
    N17.Visible := False;
    for l       := 1 to 16 do
      begin
        for k := 1 to 8 do
          begin
            ItInd := Mesta[l, k].It;
            Table1.SetKey;
            Table1.FieldByName('Ident').AsInteger := ItInd;
            Table1.GotoKey;
            DBEdit1.DataField := 'Nomer3';
            s                 := DBEdit1.text;
            val(
                s,
                n,
                code);
            Mesta[l, k].Variant              := n;
            RadioGroup1.Items.Strings[ItInd] := Mesta[l, k].nm;
          end;
      end;
    BitBtn7.Visible := True;
    Create_Sel;
    { aktiwpam; } Flag_Din_Akt := True;
    RadioGroup1.Visible        := True;
    RadioGroup1.Caption        :=
        '           --------  Распределение вариантов   --------                       ';
    Timer2.Enabled := True;
  end;

procedure TForm1.N10Click(Sender: TObject);
  var
    k, l, m, n, code: Integer;
    s               : string;
  begin
    sopost;
    N1.Visible  := False;
    N3.Visible  := False;
    N14.Visible := False;
    N20.Visible := False;
    N15.Visible := False;
    N16.Visible := False;
    N17.Visible := False;
    for l       := 1 to 16 do
      begin
        for k := 1 to 8 do
          begin
            ItInd := Mesta[l, k].It;
            Table1.SetKey;
            Table1.FieldByName('Ident').AsInteger := ItInd;
            Table1.GotoKey;
            DBEdit1.DataField := 'Nomer4';
            s                 := DBEdit1.text;
            val(
                s,
                n,
                code);
            Mesta[l, k].Variant              := n;
            RadioGroup1.Items.Strings[ItInd] := Mesta[l, k].nm;
          end;
      end;
    BitBtn7.Visible := True;
    Create_Sel;
    { aktiwpam; } Flag_Din_Akt := True;
    RadioGroup1.Visible        := True;
    RadioGroup1.Caption        :=
        '           --------  Распределение вариантов   --------                       ';
    Timer2.Enabled := True;
  end;

procedure TForm1.N11Click(Sender: TObject);
  var
    k, l, m, n, code: Integer;
    s               : string;
  begin
    sopost;
    N1.Visible  := False;
    N3.Visible  := False;
    N14.Visible := False;
    N20.Visible := False;
    N15.Visible := False;
    N16.Visible := False;
    N17.Visible := False;
    for l       := 1 to 16 do
      begin
        for k := 1 to 8 do
          begin
            ItInd := Mesta[l, k].It;
            Table1.SetKey;
            Table1.FieldByName('Ident').AsInteger := ItInd;
            Table1.GotoKey;
            DBEdit1.DataField := 'Nomer5';
            s                 := DBEdit1.text;
            val(
                s,
                n,
                code);
            Mesta[l, k].Variant              := n;
            RadioGroup1.Items.Strings[ItInd] := Mesta[l, k].nm;
          end;
      end;
    BitBtn7.Visible := True;
    Create_Sel;
    { aktiwpam; } Flag_Din_Akt := True;
    RadioGroup1.Visible        := True;
    RadioGroup1.Caption        :=
        '           --------  Распределение вариантов   --------                       ';
    Timer2.Enabled := True;
  end;

procedure TForm1.N12Click(Sender: TObject);
  var
    k, l, m, n, code: Integer;
    s               : string;
  begin
    sopost;
    N1.Visible  := False;
    N3.Visible  := False;
    N14.Visible := False;
    N20.Visible := False;
    N15.Visible := False;
    N16.Visible := False;
    N17.Visible := False;
    for l       := 1 to 16 do
      begin
        for k := 1 to 8 do
          begin
            ItInd := Mesta[l, k].It;
            Table1.SetKey;
            Table1.FieldByName('Ident').AsInteger := ItInd;
            Table1.GotoKey;
            DBEdit1.DataField := 'Nomer6';
            s                 := DBEdit1.text;
            val(
                s,
                n,
                code);
            Mesta[l, k].Variant              := n;
            RadioGroup1.Items.Strings[ItInd] := Mesta[l, k].nm;
          end;
      end;
    BitBtn7.Visible := True;
    Create_Sel;
    { aktiwpam; } Flag_Din_Akt := True;
    RadioGroup1.Visible        := True;
    RadioGroup1.Caption        :=
        '           --------  Распределение вариантов   --------                       ';
    Timer2.Enabled := True;
  end;

procedure TForm1.N71Click(Sender: TObject);
  var
    k, l, m, n, code: Integer;
    s               : string;
  begin
    sopost;
    N1.Visible  := False;
    N3.Visible  := False;
    N14.Visible := False;
    N20.Visible := False;
    N15.Visible := False;
    N16.Visible := False;
    N17.Visible := False;
    for l       := 1 to 16 do
      begin
        for k := 1 to 8 do
          begin
            ItInd := Mesta[l, k].It;
            Table1.SetKey;
            Table1.FieldByName('Ident').AsInteger := ItInd;
            Table1.GotoKey;
            DBEdit1.DataField := 'Nomer7';
            s                 := DBEdit1.text;
            val(
                s,
                n,
                code);
            Mesta[l, k].Variant              := n;
            RadioGroup1.Items.Strings[ItInd] := Mesta[l, k].nm;
          end;
      end;
    BitBtn7.Visible := True;
    Create_Sel;
    { aktiwpam; } Flag_Din_Akt := True;
    RadioGroup1.Visible        := True;
    RadioGroup1.Caption        :=
        '           --------  Распределение вариантов   --------                       ';
    Timer2.Enabled := True;
  end;

procedure TForm1.N81Click(Sender: TObject);
  var
    k, l, m, n, code: Integer;
    s               : string;
  begin
    sopost;
    N1.Visible  := False;
    N3.Visible  := False;
    N14.Visible := False;
    N20.Visible := False;
    N15.Visible := False;
    N16.Visible := False;
    N17.Visible := False;
    for l       := 1 to 16 do
      begin
        for k := 1 to 8 do
          begin
            ItInd := Mesta[l, k].It;
            Table1.SetKey;
            Table1.FieldByName('Ident').AsInteger := ItInd;
            Table1.GotoKey;
            DBEdit1.DataField := 'Nomer8';
            s                 := DBEdit1.text;
            val(
                s,
                n,
                code);
            Mesta[l, k].Variant              := n;
            RadioGroup1.Items.Strings[ItInd] := Mesta[l, k].nm;
          end;
      end;
    BitBtn7.Visible := True;
    Create_Sel;
    { aktiwpam; } Flag_Din_Akt := True;
    RadioGroup1.Visible        := True;
    RadioGroup1.Caption        :=
        '           --------  Распределение вариантов   --------                       ';
    Timer2.Enabled := True;
  end;

{ ---------Подготовка заданий------------------------------------------------- }     { }
procedure TForm1.N15Click(Sender: TObject); { }
  { пункт меню "Регистрация заданий" }                                                 { }
  var
    s: string;
  begin
    N1.Visible              := False;
    N3.Visible              := False;
    N14.Visible             := False; { }
    N15.Visible             := False;
    N16.Visible             := False;
    N17.Visible             := False;
    N20.Visible             := False; { }
    TabbedNotebook2.Enabled := True;
    TabbedNotebook2.Visible := True; { }
    BitBtn6.Visible         := True;
    DBEdit10.DataSource     := DataSource5; { }
    DBEdit11.DataSource     := DataSource5;
    DBEdit12.DataSource     := DataSource5; { }
    DBNavigator1.DataSource := DataSource5;
    { button1.caption:='Добавление заданий';      { }
    F_Insert                    := False;
    F_New                       := False;
    DBNavigator1.Enabled        := True; { }
    DBNavigator1.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast]; { }
    Label18.Visible             := True;
    Edit1.Visible               := True;
  end; { П }

{ }
procedure TForm1.BitBtn6Click(Sender: TObject); { Р }
  { Кнопка выхода из "Регистрации заданий" }                                           { }
  begin
    if F_Insert = False then
      begin { О }
        TabbedNotebook2.Enabled := False;
        TabbedNotebook2.Visible := False; { }
        BitBtn6.Visible         := False;
        Query1.close;
      end; { Ц }
    N1.Visible  := True;
    N3.Visible  := True;
    N14.Visible := True;
    N20.Visible := True; { }
    N15.Visible := True;
    N16.Visible := True;
    N17.Visible := True;
  end; { Е }

{ }
procedure TForm1.RadioGroup3Click(Sender: TObject); { Д }
  { Radiogroup3 находится на TabbedNoteBook2 пункта меню "Регистрация заданий"        { }
  { и служит для выбора предмета для дальнейшей работы }                                { У }
  var
    s : string;
    It: Integer;
  begin { }
    if F_Insert = False then
      begin
        It := RadioGroup3.ItemIndex; { Р }
        s  := RadioGroup3.Items.Strings[It];
        Query1.close; { }
        Query1.Prepare;
        Query1.Params[0].AsString := s; { Ы }
        Query1.Params[1].AsString := 'z' + Edit1.text + '-' + '%'; { }
        Query1.Open;
        s := DBEdit11.text; { }
        if ((Query1.recordcount <> 0) and (F_Insert = False)) then { Р }
          begin
            Image1.Visible := True;
            Image1.Picture.LoadFromFile(s);
          end { }
        else
          Image1.Visible := False;
      end;
  end; { Е }

{ }
procedure TForm1.Edit1Change(Sender: TObject); { Г }
  { Edit1 находится на TabbedNoteBook2 пункта меню "Регистрация заданий"              { }
  { и служит для выбора номера темы для дальнейшей работы }                             { И }
  var
    s : string;
    It: Integer;
  begin
    if F_Insert = False then
      begin { }
        It := RadioGroup3.ItemIndex;
        s  := RadioGroup3.Items.Strings[It]; { С }
        Query1.close;
        Query1.Prepare;
        Query1.Params[0].AsString := s; { }
        Query1.Params[1].AsString := 'z' + Edit1.text + '-' + '%';
        Query1.Open; { Т }
        s := DBEdit11.text;
        if ((Query1.recordcount <> 0) and (F_Insert = False)) then { }
          begin
            Image1.Visible := True;
            Image1.Picture.LoadFromFile(s);
          end { Р }
        else
          Image1.Visible := False;
      end;
  end; { }

{ А }
procedure TForm1.Button1Click(Sender: TObject); { }
  { Button1 находится на TabbedNoteBook2 пункта меню "Регистрация заданий"            {Ц }
  { "Просмотр заданий" }                                                               { }
  var
    f : Boolean;
    It: Integer;
    s : string;
  begin { И }
    f := False;
    Query1.close; { }
    if ((regim = 1) and (f = False)) then
      begin { И }
        DBEdit12.DataSource     := DataSource4;
        DBNavigator1.DataSource := DataSource4;
        DBEdit11.DataSource     := DataSource4;
        DBEdit10.DataSource     := DataSource4; { З }
        Button1.Caption         := 'Просмотр заданий';
        DBNavigator1.Enabled    := True; { }
        Button13.Visible        := True;
        Button14.Visible        := True;
        Button15.Visible        := True;
        Button13.Enabled        := False;
        SpeedButton14.Visible   := True;
        Label15.Visible         := True;
        BitBtn6.Visible         := False;
        f                       := True;
        Label18.Visible         := False;
        Edit1.Visible           := False;
        Button5.Visible         := True; { }
        F_Insert                := True;
        Image1.Visible          := False;
        regim                   := 2;
      end; { А }
    if ((regim = 2) and (f = False)) then
      begin { }
        DBEdit10.DataSource     := DataSource5;
        DBEdit11.DataSource     := DataSource5; { Д }
        DBEdit12.DataSource     := DataSource5;
        DBNavigator1.DataSource := DataSource5; { }
        SpeedButton14.Visible   := False;
        SpeedButton14.Enabled   := False;
        Label15.Visible         := False;
        BitBtn6.Visible         := True;
        Button13.Visible        := False;
        Button14.Visible        := False;
        Button15.Visible        := False;
        Button1.Caption         := 'Добавление заданий';
        f                       := True; { А }
        DBEdit16.Visible        := False;
        DBCheckBox7.Visible     := False; { }
        DBCheckBox8.Visible     := False;
        DBCheckBox9.Visible     := False; { Н }
        DBCheckBox10.Visible    := False;
        DBGrid3.Visible         := False; { }
        Button2.Visible         := False;
        Button3.Visible         := False; { И }
        Button4.Visible         := False;
        Button5.Visible         := False; { }
        DBNavigator1.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast]; { Й }
        Label18.Visible := True;
        Edit1.Visible   := True; { }
        It              := RadioGroup3.ItemIndex;
        s               := RadioGroup3.Items.Strings[It];
        regim           := 1; { }
        F_Insert        := False;
        if Table4.state = dsInsert then
          Table4.post; { }
        Query1.close;
        Query1.Prepare;
        Query1.Params[0].AsString := s; { }
        Query1.Params[1].AsString := 'z' + Edit1.text + '-' + '%';
        Query1.Open; { }
        if ((Query1.recordcount <> 0) and (F_Insert = False)) then { }
          begin
            s              := DBEdit11.text; { }
            Image1.Visible := True;
            Image1.Picture.LoadFromFile(s);
          end;
      end;
  end; { }

{ }
procedure TForm1.Table4AfterInsert(DataSet: TDataset); { }
  var
    It: Integer;
    s : string;
  begin { }
    if F_Insert = True then
      begin
        It            := RadioGroup3.ItemIndex;         { }
        DBEdit13.text := RadioGroup3.Items.Strings[It]; { }
        s             := RadioGroup3.Items.Strings[It]; { }
        if s = 'МП' then
          s := 'MP';
        if s = 'ЭТП' then
          s := 'ETP'; { }
        if s = 'ТЭЦ1' then
          s := 'TEC1';
        if s = 'ТЭЦ3' then
          s := 'TEC3'; { }
        if s = 'ТЭС' then
          s := 'TES';
        if s = 'Прочее' then
          s           := 'OTHER'; { }
        DBEdit10.text := 'Z1-1-1';
        DBEdit11.text := 'D:\ZAD\' + s + '\ZAD*\********.BMP'; { }
        DBEdit12.text := 'Примечание';
        F_New         := True;
      end;
  end; { }

{ }
{ }
procedure TForm1.DBEdit10Click(Sender: TObject); { }
  begin
    if ((F_New = True) and (F_Insert = True)) then
      begin { }
        DBEdit10.text := 'Z1-1-1';
      end;
  end; { }

{ }
procedure TForm1.DBEdit11Click(Sender: TObject); { }
  var
    It: Integer;
    s : string;
  begin { }
    if ((F_New = True) and (F_Insert = True)) then
      begin { }
        It            := RadioGroup3.ItemIndex;
        DBEdit13.text := RadioGroup3.Items.Strings[It]; { }
        s             := RadioGroup3.Items.Strings[It]; { }
        if s = 'МП' then
          s := 'MP';
        if s = 'ЭТП' then
          s := 'ETP'; { }
        if s = 'ТЭЦ1' then
          s := 'TEC1';
        if s = 'ТЭЦ3' then
          s := 'TEC3'; { }
        if s = 'ТЭС' then
          s := 'TES';
        if s = 'Прочее' then
          s           := 'OTHER'; { }
        DBEdit11.text := concat(
            'D:\ZAD\',
            s,
            '\ZAD*\********.BMP');
      end;
  end; { }

{ }
procedure TForm1.RadioGroup3Enter(Sender: TObject); { }
  begin
    Button13.Enabled     := True;
    DBNavigator1.Enabled := True;
  end; { }

{ }
procedure TForm1.DBNavigator1Click(
    Sender: TObject;
    Button: TNavigateBtn); { }
  begin
    if F_Insert = False then
      begin
        if Query1.recordcount <> 0 then
          begin { }
            Image1.Visible := True;
            Image1.Picture.LoadFromFile(DBEdit11.text);
          end;
      end;
  end; { }

{ }
procedure TForm1.Button2Click(Sender: TObject); { }
  begin
    Table5.appendrecord(['OW01J1', False, False, False, False, 0]);
  end; { }

procedure TForm1.Button3Click(Sender: TObject);
  begin
    Table5.delete;
  end; { }

procedure TForm1.Button4Click(Sender: TObject); { }
  var
    c, n, J, Handle, g, code: Integer;
    s, p                    : String;
    m                       : char;
    Cur, Prev               : String[1]; { }
    Buffer                  : array [1 .. 13] of char;
    Prom                    : array [1 .. 6] of char; { }
    Buf                     : array [1 .. 2] of char;
  begin { }
    Table5.first;
    p := DBEdit11.text;
    p := ChangeFileExt(
        p,
        '.DOC'); { }
    Handle := FileCreate(p);
    Handle := FileOpen(
        p,
        1); { }
    Cur         := '0';
    Prev        := '0';
    for J       := 1 to 6 do
      Prom[J]   := ' '; { }
    s           := DBEdit16.text;
    for J       := 1 to 6 do
      Buffer[J] := s[J]; { }
    for g       := 1 to Table5.recordcount do
      begin
        val(
            Cur,
            c,
            code);
        val(
            Prev,
            n,
            code); { }
        if c = n then
          begin
            s           := DBEdit16.text; { }
            for J       := 1 to 6 do
              Buffer[J] := s[J];
            Buffer[7]   := ' '; { }
            if DBCheckBox7.Checked = True then
              Buffer[8] := '1'
            else
              Buffer[8] := '0'; { }
            if DBCheckBox8.Checked = True then
              Buffer[9] := '1'
            else
              Buffer[9] := '0'; { }
            if DBCheckBox9.Checked = True then
              Buffer[10] := '1'
            else
              Buffer[10] := '0'; { }
            if DBCheckBox10.Checked = True then
              Buffer[11] := '1'
            else
              Buffer[11] := '0'; { }
            m            := chr(13);
            Buffer[12]   := m;
            m            := chr(10);
            Buffer[13]   := m; { }
            for J        := 1 to 13 do
              s[J]       := ' ';
            for J        := 1 to 13 do
              s[J]       := Buffer[J]; { }
            FileWrite(
                Handle,
                Buffer,
                13);
          end; { }
        if c > n then
          begin { }
            m      := chr(13);
            Buf[1] := m;
            m      := chr(10);
            Buf[2] := m;
            FileWrite(
                Handle,
                Buf,
                2); { }
            for J       := 1 to 6 do
              Buffer[J] := s[J];
            Buffer[7]   := ' '; { }
            if DBCheckBox7.Checked = True then
              Buffer[8] := '1'
            else
              Buffer[8] := '0'; { }
            if DBCheckBox8.Checked = True then
              Buffer[9] := '1'
            else
              Buffer[9] := '0'; { }
            if DBCheckBox9.Checked = True then
              Buffer[10] := '1'
            else
              Buffer[10] := '0'; { }
            if DBCheckBox10.Checked = True then
              Buffer[11] := '1'
            else
              Buffer[11] := '0'; { }
            m            := chr(13);
            Buffer[12]   := m;
            m            := chr(10);
            Buffer[13]   := m; { }
            for J        := 1 to 13 do
              s[J]       := ' ';
            for J        := 1 to 13 do
              s[J]       := Buffer[J]; { }
            FileWrite(
                Handle,
                Buffer,
                13);
          end; { }
        for J     := 1 to 6 do
          Prom[J] := Buffer[J];
        Prev      := Prom[4]; { }
        Table5.Next;
        s           := DBEdit16.text;
        for J       := 1 to 6 do
          Buffer[J] := s[J]; { }
        Cur         := Buffer[4];
      end;
    FileClose(Handle);
  end; { }

{ }
procedure TForm1.Button5Click(Sender: TObject); { }
  var
    i, Handle, Count: Integer; { }
    Buffer          : array [0 .. 12] of char;
    buffer1         : array [0 .. 5] of char; { }
    s               : string[6];
    p, m, f         : string;
    v1, v2, v3, v4  : Boolean;
  begin { }
    with Table5 do
      begin { }
        Active       := False;
        DatabaseName := 'Button';
        TableName    := 'Kodir'; { }
        TableType    := ttDefault;
        EmptyTable;
      end;
    Table5.Active        := True; { }
    DBEdit16.Visible     := True;
    DBCheckBox7.Visible  := True; { }
    DBCheckBox8.Visible  := True;
    DBCheckBox9.Visible  := True; { }
    DBCheckBox10.Visible := True;
    DBGrid3.Visible      := True; { }
    Button2.Visible      := True;
    Button3.Visible      := True; { }
    Button4.Visible      := True;
    p                    := DBEdit11.text;
    m                    := DBEdit10.text; { }
    p                    := ExtractFilePath(p);
    f                    := p + m + '.doc'; { }
    Handle               := FileOpen(
        f,
        0);
    Count := 13; { }
    repeat
      Count := FileRead(Handle, Buffer, 13); { }
      if ((Buffer[0] = 'O') and (Count = 13)) then
        begin { }
          for i        := 0 to 5 do
            buffer1[i] := Buffer[i];
          s            := buffer1; { }
          if Buffer[7] = '0' then
            v1 := False
          else
            v1 := True; { }
          if Buffer[8] = '0' then
            v2 := False
          else
            v2 := True; { }
          if Buffer[9] = '0' then
            v3 := False
          else
            v3 := True; { }
          if Buffer[10] = '0' then
            v4 := False
          else
            v4 := True; { }
          Table5.appendrecord([s, v1, v2, v3, v4, 0]);
        end; { }
      if ((Buffer[0] <> 'O')) then
        fileseek(
            Handle,
            -11,
            1);
    until Count <> 13;
  end; { }
{ }
{ }
{ ---------Подготовка заданий------------------------------------------------- }     { }

{ ---------Подготовка опроса-------------------------------------------------- }
procedure TForm1.ComboBox2Change(Sender: TObject); { }
  var
    s, c: string;
    i   : Integer;
    l   : Boolean;
  begin
    ComboBox4.Clear; { }
    ComboBox3.Clear;
    Table2.first;
    for i := 1 to Table2.recordcount do
      begin { }
        s                 := ComboBox2.text;
        DBEdit9.DataField := s;
        s                 := DBEdit9.text; { }
        if s = 'True' then
          begin
            DBEdit9.DataField := 'Курс'; { }
            If DBEdit9.text <> c then
              ComboBox3.Items.Add(DBEdit9.text); { П }
          end;
        c := DBEdit9.text;
        Table2.Next;
      end; { }
    Predmet := ComboBox2.text;
    ComboBox5.Clear; { О }
    Query1.close;
    Query1.Prepare;
    Query1.Params[0].AsString := Predmet; { }
    Query1.Params[1].AsString := 'z' + Tema + '-' + '%';
    Query1.Open; { Д }
    for i := 1 to Query1.recordcount do
      begin
        s              := DBEdit14.text;
        ComboBox5.text := s; { }
        ComboBox5.Items.Add(s);
        Query1.Next;
      end;
    Query2.close;
    Query2.Prepare;                       { Г }
    Query2.Params[0].AsString := Predmet; { }
    Query2.Params[1].AsString := ComboBox5.text;
    Query2.Open; { О }
    Put     := DBEdit15.text;
    Kurs    := ComboBox3.text;
    Zadanie := ComboBox5.text;
  end; { }

procedure TForm1.N5Click(Sender: TObject);
  begin { Т }
    { If Flag_Reg_Vyp=False then begin MessageBeep(10);MessageDlg('Вы забыли провести регистрацию !!!',
      mtError, [mbOk], 0);Kol_Kur_P:=0;Flag_Reg_Vyp:=False; exit; end;                     { }
    N1.Visible        := False;
    N3.Visible        := False;
    N14.Visible       := False;
    N15.Visible       := False; { О }
    N16.Visible       := False;
    BitBtn9.Visible   := True;
    N17.Visible       := False;
    N20.Visible       := False; { }
    Label13.Visible   := True;
    Label19.Visible   := True; { В }
    Label20.Visible   := True;
    Label21.Visible   := True; { }
    Label22.Visible   := True;
    BitBtn10.Visible  := True;
    Label8.Visible    := True; { К }
    ComboBox2.Visible := True;
    ComboBox3.Visible := True;
    Edit2.text        := '%'; { }
    ComboBox4.Visible := True;
    ComboBox5.Visible := True;
    ListBox3.Visible  := True; { А }
    Edit2.Visible     := True;
    BitBtn8.Visible   := True;
    Kurs              := ComboBox3.text; { }
    Tema              := Edit2.text;
    Predmet           := ComboBox2.text;
    Button6.Caption   := 'Прервать опрос';
  end; { }

{ }
procedure TForm1.Edit2Change(Sender: TObject); { К }
  var
    i: Integer;
    s: string;
  begin
    Tema := Edit2.text;
    ComboBox5.Clear; { }
    Query1.close;
    Query1.Prepare;
    Query1.Params[0].AsString := Predmet; { }
    Query1.Params[1].AsString := 'z' + Tema + '-' + '%';
    Query1.Open; { }
    for i := 1 to Query1.recordcount do
      begin { П }
        s              := DBEdit14.text;
        ComboBox5.text := s;
        ComboBox5.Items.Add(s);
        Query1.Next; { }
      end;
    Query2.close;
    Query2.Prepare;
    Query2.Params[0].AsString := Predmet; { Р }
    Query2.Params[1].AsString := ComboBox5.text;
    Query2.Open; { }
    Put     := DBEdit15.text;
    Kurs    := ComboBox3.text;
    Zadanie := ComboBox5.text;
  end; { О }

{ }
procedure TForm1.ComboBox5Change(Sender: TObject); { В }
  begin
    Query2.close;
    Query2.Prepare;
    Query2.Params[0].AsString := Predmet; { }
    Query2.Params[1].AsString := ComboBox5.text;
    Query2.Open; { Е }
    Put     := DBEdit15.text;
    Kurs    := ComboBox3.text;
    Zadanie := ComboBox5.text;
  end; { }

{ Д }
procedure TForm1.ComboBox5Enter(Sender: TObject); { }
  var
    i: Integer;
    s: string;
  begin
    ComboBox5.Clear; { Е }
    Query1.close;
    Query1.Prepare;
    Query1.Params[0].AsString := Predmet; { }
    Query1.Params[1].AsString := 'z' + Tema + '-' + '%';
    Query1.Open; { Н }
    for i := 1 to Query1.recordcount do
      begin { }
        s              := DBEdit14.text;
        ComboBox5.text := s;
        ComboBox5.Items.Add(s);
        Query1.Next;
      end; { И }
    Put  := DBEdit15.text;
    Kurs := ComboBox3.text;
  end; { }

{ Ю }
procedure TForm1.ComboBox3Change(Sender: TObject); { }
  var
    i: Integer;
    s: string;
  begin
    Kurs := ComboBox3.text;
    ComboBox4.Clear; { }
    Query3.close;
    Query3.Prepare;
    Query3.Params[0].AsString := Kurs;
    Query3.Open; { }
    for i := 1 to Query3.recordcount do
      begin
        s := DBEdit19.text; { О }
        ComboBox4.Items.Add(s);
        Query3.Next;
      end;
  end; { }

{ П }
procedure TForm1.ComboBox3Enter(Sender: TObject); { }
  begin
    ComboBox3.text := ComboBox3.Items[0];
  end; { Р }

{ }
{ О }
procedure TForm1.ComboBox4Change(Sender: TObject); { }
  begin
    ComboBox4.text := ComboBox4.Items[0];
  end; { С }

{ }
{ А }
procedure TForm1.BitBtn8Click(Sender: TObject); { }
  begin
    Label23.Visible   := False;
    Label24.Visible   := False;
    Label25.Visible   := False; { }
    Label27.Visible   := False;
    Label28.Visible   := False;
    Label29.Visible   := False; { }
    Label30.Visible   := False; { }
    Label26.Visible   := False;
    ComboBox2.Visible := False;
    ComboBox3.Visible := False; { }
    ComboBox4.Visible := False;
    ComboBox5.Visible := False; { }
    ListBox3.Visible  := False;
    Edit2.Visible     := False;
    BitBtn8.Visible   := False; { }
    N1.Visible        := True;
    N3.Visible        := True;
    N14.Visible       := True;
    N15.Visible       := True; { }
    N16.Visible       := True;
    BitBtn9.Visible   := False;
    N17.Visible       := True;
    N20.Visible       := True; { }
    Label13.Visible   := False;
    Label19.Visible   := False; { }
    Label20.Visible   := False;
    Label21.Visible   := False; { }
    Label8.Visible    := False;
    Label22.Visible   := False;
    BitBtn10.Visible  := False; { }
    Query1.close;
    Query2.close;
    Image2.Visible := False; { }
    Image3.Visible := False;
    ListBox1.Clear;
    Image4.Visible := False; { }
    ComboBox2.text := ' ';
    ComboBox3.text := ' ';
    ComboBox4.text := ' ';
    ComboBox5.text := ' '; { }
    Edit2.text     := '';  { }
    Flag_Din_Akt   := False;
    Timer3.Enabled := False;
    Timer4.Enabled := False;
  end; { }

{ }
procedure TForm1.BitBtn10Click(Sender: TObject); { }
  begin                                          { }
    Image2.Visible := True;
    Try
      Image2.Picture.LoadFromFile(Put); { }
      Image2.Left := (TMainForm.Width - Image2.Width) div 2;
      Image2.Top  := 60; { }
    Except               { }
      On EFOpenError do
        begin
          MessageDlg(
              'Не найден файл с рисунком задания.' + { }
              'Проверьте его наличие в нужном каталоге и попробуйте снова.',
              mtError, { }
              [mbOk],
              0);
          Error          := True;
          Image2.Visible := False;
          exit;
        end;
    end;
  end; { }
{ ---------Подготовка опроса-------------------------------------------------- }       { }

procedure TForm1.Vopros;
  begin
    NVopros;
  end;

Procedure TForm1.Zadaniya;
  begin
    NZadaniya;
  end;

procedure TForm1.BitBtn11Click(Sender: TObject);
  Var
    g, v: Integer;
  begin
    Free_Sel;
    Flag_Din_Akt        := False;
    Timer6.Enabled      := False;
    RadioGroup1.Visible := False;
    BitBtn11.Visible    := False;
    For g               := 1 to 16 do
      for v             := 1 to 8 do
        begin
          RadioGroup1.Items.Strings[Mesta[g, v].It] := ' ';
          Mesta[g, v].Ocenka                        := ' ';
        end;
    Label32.Visible := False;
    N1.Visible      := True;
    N3.Visible      := True;
    N14.Visible     := True;
    N20.Visible     := True;
    N15.Visible     := True;
    N16.Visible     := True;
    N17.Visible     := True;
  end;
{ Выключение режима просмотра оценок на динамической моделе класса }

{ ----------------------------------------------------------------------------- }
procedure TForm1.Button6Click(Sender: TObject);
  { ************************************** }
  begin
    Flag_Din_Akt   := False;
    Timer3.Enabled := False;
    Timer4.Enabled := False;
    MessageDlg(
        'Опрос прерван. Результаты сохранены не были!',
        mtError,
        [mbYes],
        0);
    Konec_Oprosa;
  end;
{ ----------------------------------------------------------------------------- }

Procedure TForm1.Konec_Oprosa;
  var
    g, v: Integer;
  begin
    Button6.Visible   := False;
    Label23.Visible   := False;
    Label24.Visible   := False;
    Label25.Visible   := False;
    Label27.Visible   := False;
    Label28.Visible   := False;
    Label29.Visible   := False;
    Label30.Visible   := False;
    Label26.Visible   := False;
    ComboBox2.Visible := False;
    ComboBox3.Visible := False;
    ComboBox4.Visible := False;
    ComboBox5.Visible := False;
    Edit2.Visible     := False;
    BitBtn8.Visible   := False;
    ListBox3.Visible  := False;
    N1.Visible        := True;
    N3.Visible        := True;
    N14.Visible       := True;
    N15.Visible       := True;
    N20.Visible       := True;
    N16.Visible       := True;
    N17.Visible       := True;
    BitBtn9.Visible   := False;
    Label13.Visible   := False;
    Label19.Visible   := False;
    Label20.Visible   := False;
    Label21.Visible   := False;
    Label8.Visible    := False;
    Label22.Visible   := False;
    BitBtn10.Visible  := False;
    Query1.close;
    Query2.close;
    Image2.Visible := False;
    Image3.Visible := False;
    ListBox1.Clear;
    Image4.Visible := False;
    ComboBox2.text := ' ';
    ComboBox3.text := ' ';
    ComboBox4.text := ' ';
    ComboBox5.text := ' ';
    Edit2.text     := '';
    For g          := 1 to 16 do
      for v        := 1 to 8 do
        begin
          Mesta[g, v].Otvet_R := 0;
          Mesta[g, v].Otvet_L := 0;
          Mesta[g, v].Flag_R  := False;
          Mesta[g, v].Flag_L  := False;
          Mesta[g, v].Ocenka  := ' ';
        end;
    TMainForm.Query5.Active := False;
  end;

procedure TForm1.N17Click(Sender: TObject);
  begin
    If { Выход из программы }
        MessageDlg('Работа программы будет завершена. ' + +'Продолжить?',
        mtWarning, [mbYes, mbNo], 0) = mrYes Then
      Begin
        Halt;
      end
    else
      Begin
        exit;
      end;
  end;

procedure TForm1.N18Click(Sender: TObject); { Проведение регистрации }
  var
    i   : Integer;
    s, c: string;
  begin
    N1.Visible        := False;
    N3.Visible        := False;
    N14.Visible       := False;
    N15.Visible       := False;
    N16.Visible       := False;
    N17.Visible       := False;
    N20.Visible       := False;
    Kol_Kur           := 0;
    Kol_Kur_P         := 0;
    ComboBox6.Visible := True;
    Label31.Visible   := True;
    BitBtn12.Visible  := True;
    ComboBox6.Clear;
    Table2.first;

    for i := 1 to Table2.recordcount do
      begin
        DBEdit9.DataField := 'Курс';
        If DBEdit9.text <> c then
          ComboBox6.Items.Add(DBEdit9.text);
        c := DBEdit9.text;
        Table2.Next;
      end;
    Table2.first;
    for i := 1 to Table2.recordcount do
      begin
        DBEdit9.DataField := 'Группа';
        ComboBox6.Items.Add(DBEdit9.text);
        Table2.Next;
      end;

  end;

procedure TForm1.BitBtn12Click(Sender: TObject); { Проведение регистрации }
  var
    g, v, i, J, Handle, Count, code: Integer;
    kk, kp                         : string;
    s                              : array [1 .. 17] of char;
    Buffer                         : array [0 .. 29] of char;

  begin
    ComboBox6.Visible := False;
    Label31.Visible   := False;
    BitBtn12.Visible  := False;
    J                 := 0;
    for i             := 1 to 32000 do
      begin
        J := J + 1;
        J := J - 1;
        J := J + 1;
        J := J - 1;
        J := J + 1;
      end;
    Handle := FileOpen(
        'D:\zad\' + ComboBox6.text + '.doc',
        0);
    If Handle < 0 Then
      begin
        MessageBeep(0);
        MessageDlg(
            'Файл со списком курсантов данного потока не найден.' +
            ' Проверьте его наличие в нужном каталоге.',
            mtError,
            [mbOk],
            0);
        Error       := True;
        N1.Visible  := True;
        N3.Visible  := True;
        N14.Visible := True;
        N15.Visible := True;
        N16.Visible := True;
        N17.Visible := True;
        N20.Visible := True;
        exit;
      end;
    Count   := 32;
    Kol_Kur := 0;
    val(
        ComboBox6.text,
        Reg_Potok_Nom,
        code);
    s[1]    := 'С';
    s[2]    := 'в';
    s[3]    := 'о';
    s[4]    := 'б';
    s[5]    := 'о';
    s[6]    := 'д';
    s[7]    := 'н';
    s[8]    := 'о';
    For i   := 9 to 17 do
      s[i]  := ' ';
    For g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          Mesta[g, v].Reg       := '-';
          for i                 := 1 to 17 do
            Mesta[g, v].FIO[i]  := ' ';
          for i                 := 1 to 3 do
            Mesta[g, v].NomG[i] := ' ';
          for i                 := 1 to 2 do
            Mesta[g, v].NomS[i] := ' ';
          for i                 := 1 to 17 do
            Mesta[g, v].FIO[i]  := s[i];
        end;

    While Count = 32 do
      begin
        for i   := 0 to 4 do
          nm[i] := ' ';
        Count   := FileRead(
            Handle,
            Buffer,
            32);
        if Buffer[25] = ' ' then
          begin
            nm[0] := Buffer[26];
            nm[1] := Buffer[27];
            if Buffer[28] = ' ' then
              nm[2] := Buffer[29]
            else
              begin
                nm[2] := Buffer[28];
                nm[3] := Buffer[29];
              end;
          end
        else
          begin
            nm[0] := Buffer[25];
            nm[1] := Buffer[26];
            nm[2] := Buffer[27];
            if Buffer[28] = ' ' then
              nm[3] := Buffer[29]
            else
              begin
                nm[3] := Buffer[28];
                nm[4] := Buffer[29];
              end;
          end; { Осуществляется выбор номера места
          из файла со списком курсантов для привязки к конкретному месту в классе }
        For g   := 1 to 16 do
          for v := 1 to 8 do
            begin
              If Count = 32 then
                begin
                  if Mesta[g, v].nm = nm then
                    begin
                      Mesta[g, v].Reg := 'н';
                      Kol_Kur         := Kol_Kur + 1;
                      { for i:=1 to 17 do mesta[g,v].FIO[i]:=' '; }
                      for i                 := 1 to 17 do
                        Mesta[g, v].FIO[i]  := Buffer[i + 7];
                      for i                 := 1 to 3 do
                        Mesta[g, v].NomG[i] := Buffer[i - 1];
                      for i                 := 1 to 2 do
                        Mesta[g, v].NomS[i] := Buffer[i + 3];
                    end;
                end;
            end;
      end;
    FileClose(Handle);
    J     := 0;
    for i := 1 to 32000 do
      begin
        J := J + 1;
        J := J - 1;
        J := J + 1;
        J := J - 1;
        J := J + 1;
      end;
    RadioGroup1.Caption :=
        '==============  Проведение регистрации =============== ';
    RadioGroup1.Visible := True;
    Create_Sel;
    Flag_Din_Akt    := True;
    Timer5.Enabled  := True;
    Button7.Visible := True;
  end;

procedure TForm1.N19Click(Sender: TObject); { Проверка корректности списков }
  var
    i   : Integer;
    s, c: string;
  begin
    N1.Visible        := False;
    N3.Visible        := False;
    N14.Visible       := False;
    N15.Visible       := False;
    N16.Visible       := False;
    N17.Visible       := False;
    N20.Visible       := False;
    ComboBox6.Visible := True;
    Label31.Visible   := True;
    BitBtn13.Visible  := True;
    ComboBox6.Clear;
    Table2.first;
    for i := 1 to Table2.recordcount do
      begin
        DBEdit9.DataField := 'Курс';
        If DBEdit9.text <> c then
          ComboBox6.Items.Add(DBEdit9.text);
        c := DBEdit9.text;
        Table2.Next;
      end;
    Table2.first;
    for i := 1 to Table2.recordcount do
      begin
        DBEdit9.DataField := 'Группа';
        ComboBox6.Items.Add(DBEdit9.text);
        Table2.Next;
      end;
  end;

procedure TForm1.BitBtn13Click(Sender: TObject);
  { Проверка корректности списков }
  type
    N_M = array [1 .. 128] of string[5];
  var
    P_N_M                       : ^N_M;
    F_P_M                       : Boolean;
    P_M                         : array [1 .. 128] of Boolean;
    c, g, v, i, J, Handle, Count: Integer;
    kk, kp, s                   : string;
    F_Find                      : Boolean;
    Buffer                      : array [0 .. 29] of char;
  begin
    ListBox2.Clear;
    ComboBox6.Visible := False;
    Label31.Visible   := False;
    BitBtn13.Visible  := False;
    Handle            := FileOpen(
        'D:\zad\' + ComboBox6.text + '.doc',
        0);
    If Handle < 0 Then
      begin
        MessageDlg(
            'Файл со списком курсантов данного потока не найден.' +
            'Проверьте его наличие в нужном каталоге.',
            mtError,
            [mbOk],
            0);
        Error       := True;
        N1.Visible  := True;
        N3.Visible  := True;
        N14.Visible := True;
        N15.Visible := True;
        N16.Visible := True;
        N17.Visible := True;
        N20.Visible := True;
        exit;
      end;
    New(P_N_M);
    Count            := 32;
    Kol_Kur          := 0;
    ListBox2.Visible := True;
    for i            := 1 to 128 do
      P_M[i]         := False;
    F_P_M            := False;
    While Count = 32 do
      begin
        for i   := 0 to 4 do
          nm[i] := ' ';
        Kol_Kur := Kol_Kur + 1;
        Count   := FileRead(
            Handle,
            Buffer,
            32);
        if Buffer[25] = ' ' then
          begin
            nm[0] := Buffer[26];
            nm[1] := Buffer[27];
            if Buffer[28] = ' ' then
              nm[2] := Buffer[29]
            else
              begin
                nm[2] := Buffer[28];
                nm[3] := Buffer[29];
              end;
          end
        else
          begin
            nm[0] := Buffer[25];
            nm[1] := Buffer[26];
            nm[2] := Buffer[27];
            if Buffer[28] = ' ' then
              nm[3] := Buffer[29]
            else
              begin
                nm[3] := Buffer[28];
                nm[4] := Buffer[29];
              end;
          end;
        P_N_M^[Kol_Kur] := nm;
      end;
    for i   := 1 to Kol_Kur do
      for J := 1 to Kol_Kur do
        begin
          if ((i <> J) and (i <> Kol_Kur) and (J <> Kol_Kur)) then
            if P_N_M^[i] = P_N_M^[J] then
              begin
                P_M[i] := True;
                F_P_M  := True;
              end;
        end;
    if F_P_M = True then
      begin
        fileseek(
            Handle,
            0,
            0);
        Count := 32;
        J     := 1;
        ListBox2.Items.Add('Повторяющиеся места');
        While Count = 32 do
          begin
            Count := FileRead(
                Handle,
                Buffer,
                32);
            If Count = 32 then
              begin
                if P_M[J] = True then
                  ListBox2.Items.Add(Buffer + '  ');
              end;
            J := J + 1;
          end;
      end;
    For g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          F_Find := False;
          For i  := 1 to Kol_Kur do
            begin
              if Mesta[g, v].nm = P_N_M^[i] then
                F_Find := True;
            end;
          if F_Find = False then
            ListBox2.Items.Add('Свободное место  ' + Mesta[g, v].nm);
        end;
    Dispose(P_N_M);
    fileseek(
        Handle,
        0,
        0);
    Count := 32;
    While Count = 32 do
      begin
        for i   := 0 to 4 do
          nm[i] := ' ';
        Count   := FileRead(
            Handle,
            Buffer,
            32);
        If Count = 32 then
          ListBox2.Items.Add(Buffer + '  ');
      end;
  end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
  var
    g, v, i: Integer;
    s      : string;
  begin
    If Flag_Reg_Vyp = True then
      begin
        i       := RadioGroup1.ItemIndex;
        For g   := 1 to 16 do
          for v := 1 to 8 do
            begin
              Label32.Visible := True;
              if Mesta[g, v].It = i then
                begin
                  if Mesta[g, v].Reg = '-' then
                    Label32.Caption := 'Место свободно';
                  if Mesta[g, v].Reg = 'н' then
                    Label32.Caption := 'Курсант отсутсвует';
                  if Mesta[g, v].Reg = ' ' then
                    Label32.Caption := Mesta[g, v].NomG + '.' + Mesta[g, v].NomS
                        + '   ' + Mesta[g, v].FIO + Mesta[g, v].nm;
                end;
            end;
      end;
  end;

procedure TForm1.PopupMenu1Popup(Sender: TObject);
  var
    s      : string;
    i, g, v: Integer;
    NewItem: TMenuItem;
  begin
    if P_Flag = True then
      PopupMenu1.Items.delete(0);
    i       := RadioGroup1.ItemIndex;
    For g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          if Mesta[g, v].It = i then
            begin
              NewItem         := TMenuItem.Create(Self);
              NewItem.Caption := Mesta[g, v].NomG + '.' + Mesta[g, v].NomS +
                  '   ' + Mesta[g, v].FIO + +'  ' + Mesta[g, v].nm;
              PopupMenu1.Items.Add(NewItem);
              P_Flag := True;
            end;
        end;
  end;

procedure TForm1.ListBox2Click(Sender: TObject);
  begin
    ListBox2.Visible := False;
    N1.Visible       := True;
    N3.Visible       := True;
    N14.Visible      := True;
    N15.Visible      := True;
    N16.Visible      := True;
    N17.Visible      := True;
    N20.Visible      := True;
  end;

procedure TForm1.Timer7Timer(Sender: TObject);
  var
    NewRect1, NewRect2, NewRect3, NewRect4    : TRect;
    NewRect11, NewRect21, NewRect31, NewRect41: TRect;
    s                                         : string;
  begin
    Count_Povt := Count_Povt + 1;
    { Str(Vr_Oprosa,s);Label9.Caption:=s; }
    { If Count_Povt>=100 then begin }
    if Vr_Oprosa = 0 then
      Vr := 10;
    if Vr_Oprosa = 1 then
      Vr := 20;
    if Vr_Oprosa = 2 then
      Vr := 30;
    if Vr_Oprosa = 3 then
      Vr := 40;
    if Vr_Oprosa = 4 then
      Vr := 50;
    if Vr_Oprosa = 5 then
      Vr := 75;
    if Vr_Oprosa = 6 then
      Vr := 100;
    if Vr_Oprosa = 7 then
      Vr := 125;
    if Vr_Oprosa = 8 then
      Vr := 150;
    if Vr_Oprosa = 9 then
      Vr := 200;
    If Count_Povt >= Vr then
      begin
        if Regim_Zarisovki = 1 then
          begin
            { If Count_Povt>=(Vr_Oprosa+1)*8 then begin if Regim_Zarisovki=1 then begin }
            I_W_V := I_W_V + 10;
            I_H_V := I_H_V + 5;
            I_H_H := I_H_H - 5;
            I_W_H := I_W_H - 10;
            { NewRect1 := Rect(0, 0, I_W_V,I_H_V);
              NewRect2 := Rect(Image3.Width, 0, I_W_H,I_H_V);
              NewRect3 := Rect(0, Image3.Height, I_W_V,I_H_H);
              NewRect4 := Rect(Image3.Width, Image3.Height, I_W_H,I_H_H); }{ Работает не до конца }
            NewRect1 := Rect(
                0,
                0,
                Image4.Width,
                I_H_V); { Сверху }
            NewRect2 := Rect(
                0,
                Image4.Height,
                Image4.Width,
                I_H_H); { Снизу }
            NewRect3 := Rect(
                0,
                0,
                I_W_V,
                Image4.Height); { Слева }
            NewRect4 := Rect(
                Image3.Width,
                Image4.Height,
                I_W_H,
                0); { Справа }
            Image4.Canvas.Brush.Color := clMenu;
            Image4.Canvas.FillRect(NewRect1);
            Image4.Canvas.FillRect(NewRect2);
            Image4.Canvas.FillRect(NewRect3);
            Image4.Canvas.FillRect(NewRect4);
            If (I_W_V > (Image4.Width div 2)) or (I_H_V > (Image4.Height div 2))
            then
              begin
                Timer7.Enabled := False;
                Timer3.Enabled := True;
              end;
          end;

        if Regim_Zarisovki = 2 then
          begin
            I_W_V    := I_W_V + 10;
            I_H_V    := I_H_V + 5;
            I_H_H    := I_H_H - 5;
            I_W_H    := I_W_H - 10;
            I_W_V_N  := I_W_V_N + 10;
            I_H_V_N  := I_H_V_N + 5;
            I_H_H_N  := I_H_H_N - 5;
            I_W_H_N  := I_W_H_N - 10;
            NewRect1 := Rect(
                0,
                0,
                Image4.Width,
                I_H_V); { Сверху }
            NewRect2 := Rect(
                0,
                Image4.Height,
                Image4.Width,
                I_H_H); { Снизу }
            NewRect3 := Rect(
                0,
                0,
                I_W_V,
                Image4.Height); { Слева }
            NewRect4 := Rect(
                Image4.Width,
                Image4.Height,
                I_W_H,
                0); { Справа }
            NewRect11 := Rect(
                0,
                0,
                Image3.Width,
                I_H_V_N); { Сверху }
            NewRect21 := Rect(
                0,
                Image3.Height,
                Image3.Width,
                I_H_H_N); { Снизу }
            NewRect31 := Rect(
                0,
                0,
                I_W_V_N,
                Image3.Height); { Слева }
            NewRect41 := Rect(
                Image3.Width,
                Image3.Height,
                I_W_H_N,
                0); { Справа }
            Image4.Canvas.Brush.Color := clMenu;
            Image4.Canvas.FillRect(NewRect1);
            Image4.Canvas.FillRect(NewRect2);
            Image4.Canvas.FillRect(NewRect3);
            Image4.Canvas.FillRect(NewRect4);
            Image3.Canvas.Brush.Color := clMenu;
            Image3.Canvas.FillRect(NewRect11);
            Image3.Canvas.FillRect(NewRect21);
            Image3.Canvas.FillRect(NewRect31);
            Image3.Canvas.FillRect(NewRect41);
            If ((I_W_V > (Image4.Width div 2)) or (I_H_V > (Image4.Height div 2)
                )) and ((I_W_V > (Image3.Width div 2)) or
                (I_H_V > (Image3.Height div 2))) then
              begin
                Label30.Visible := False;
                Label25.Visible := False;
                Label28.Visible := False;
                Label26.Visible := False;
                Timer7.Enabled  := False;
                Timer3.Enabled  := True;
                { image3.visible:=false;image4.visible:=false; }
              end;
          end;

        if Regim_Zarisovki = 0 then
          begin
            Timer7.Enabled := False;
            Timer3.Enabled := True;
          end;

      end;
  end;

procedure TForm1.Timer3Timer(Sender: TObject);
  { Смена и показ заданий проводимого опроса }
  var
    a, v, v_1      : byte;
    g, g_1         : byte;
    p, s           : string;
    Handle, k, l, J: Integer;
    Flag_Change_Zad: Boolean; { определяет нужно ли сменить рисунок вопроса }
    Flag           : Boolean; { Вспомогательный для Vopros_Otvet }

  begin
    If Flag_Din_Akt = False Then
      exit;

    If Konec = True then
      begin
        Button6.Visible := False; { Если конец опроса }
        Label29.Visible := False;
        Label24.Visible := False;
        Label27.Visible := False;
        Label23.Visible := False;
        Label30.Visible := False;
        Label25.Visible := False;
        Label28.Visible := False;
        Label26.Visible := False;
        Flag_Din_Akt    := False;
        Konec           := False;
        Timer3.Enabled  := False;
        Timer4.Enabled  := False;
        Free_Sel;
        Write_Rez;
        Konec_Oprosa;
        exit;
      end;

    Flag_Change_Zad := False;
    Label29.Visible := True;
    Label24.Visible := True;
    Label27.Visible := True;
    Label23.Visible := True;

    for g   := 1 to 16 do
      For v := 1 To 8 Do
        begin
          Mesta[g, v].Flag_R := False;
          Mesta[g, v].Flag_L := False;
        end;

    Timer4.Enabled := False;

    If Zero_Cikl = True then
      begin
        Timer3.interval := (Vr_Oprosa + 1) * 1000;
        Zero_Cikl       := False;
      end
    else
      begin
        if Vr_Oprosa = 0 then
          Timer3.interval := 10 * 4;
        if Vr_Oprosa = 1 then
          Timer3.interval := 20 * 4;
        if Vr_Oprosa = 2 then
          Timer3.interval := 30 * 4;
        if Vr_Oprosa = 3 then
          Timer3.interval := 40 * 4;
        if Vr_Oprosa = 4 then
          Timer3.interval := 50 * 4;
        if Vr_Oprosa = 5 then
          Timer3.interval := 75 * 4;
        if Vr_Oprosa = 6 then
          Timer3.interval := 100 * 4;
        if Vr_Oprosa = 7 then
          Timer3.interval := 125 * 4;
        if Vr_Oprosa = 8 then
          Timer3.interval := 150 * 4;
        if Vr_Oprosa = 9 then
          Timer3.interval := 200 * 4;
      end;

    str(
        Zad_Vsego,
        s);
    Label23.Caption := s;
    str(
        Zad,
        s);
    Label24.Caption := s;
    str(
        Cur_Vop,
        s);
    Label25.Caption := s;
    str(
        Mas_Zad[Zad],
        s);
    Label26.Caption := s;

    If Vopros_Otvet = 2 then
      begin
        Try { Загружается файд с одним из вариантов ответа на конкретный вопрос задания }
          Image4.Picture.LoadFromFile(ExtractFilePath(Put) + DBEdit17.text
              + '.BMP');
          Image4.Left    := (TMainForm.Width - Image4.Width) div 2;
          Image4.Top     := Image2.Height + Image3.Height + 30;
          Image4.Visible := True;
        Except
          On EFOpenError do
            begin
              Timer3.Enabled := False;
              MessageDlg(
                  'Не найден файл с ответом на вопрос задания.' +
                  ' Проверьте его наличие в нужном каталоге и попробуйте снова.',
                  mtError,
                  [mbOk],
                  0);
              Image2.Visible  := False;
              Image3.Visible  := False;
              Label23.Visible := False;
              Image4.Visible  := False;
              Label24.Visible := False;
              Label25.Visible := False;
              Label26.Visible := False;
              Label27.Visible := False;
              Label28.Visible := False;
              Label29.Visible := False;
              Label30.Visible := False;
              Flag_Din_Akt    := False;
              Error           := True;
              exit;
            end;
          On EInvalidGraphic do
            begin
              Timer3.Enabled := False;
              MessageDlg(
                  'Не найден файл с ответом на вопрос задания.' +
                  ' Проверьте его наличие в нужном каталоге и попробуйте снова.',
                  mtError,
                  [mbOk],
                  0);
              Image2.Visible  := False;
              Image3.Visible  := False;
              Label23.Visible := False;
              Label27.Visible := False;
              Label28.Visible := False;
              Label29.Visible := False;
              Label30.Visible := False;
              Label24.Visible := False;
              Label25.Visible := False;
              Label26.Visible := False;
              Image4.Visible  := False;
              Flag_Din_Akt    := False;
              Error           := True;
              exit;
            end;
        end;

        Label30.Visible := True;
        Label25.Visible := True;
        Label28.Visible := True;
        Label26.Visible := True;

        if Zad = Zad_Vsego then
          Begin { Если вопрос последний }
            if Cur_Vop = Mas_Zad[Zad] then
              Begin { Если ответ последний }
                Konec := True;
              end
            else
              Begin { Если ответ не последний }
                Cur_Vop := Cur_Vop + 1;
              end;
          end;

        if Zad <> Zad_Vsego then
          begin { Если вопрос не последний }
            if Cur_Vop = Mas_Zad[Zad] then
              Begin { Если ответ последний }
                Cur_Vop         := 1;
                Zad             := Zad + 1;
                Flag_Change_Zad := True;
                Flag            := True;
                Zero_Cikl_One   := True;
              end
            else
              Begin { Если ответ не последний }
                Cur_Vop := Cur_Vop + 1;
              end;
          end;

        Query5.Next;
        Nom_Vop := Nom_Vop + 1;
        I_W_V   := 0;
        I_H_V   := 0;
        I_H_H   := Image4.Height;
        I_W_H   := Image4.Width;
        I_W_V_N := 0;
        I_H_V_N := 0;
        I_H_H_N := Image3.Height;
        I_W_H_N := Image3.Width;

        Timer3.Enabled := False;

        if Flag_Change_Zad = True then
          Regim_Zarisovki := 2
        else
          Regim_Zarisovki := 1;
        If Konec = True then
          Regim_Zarisovki := 0;

        Timer7.Enabled := True;
        Count_Povt     := 0;
        Timer4.Enabled := True;
      end;

    If Vopros_Otvet = 1 then
      begin
        Try { Загружается файл с одним из вопросов данного задания }
          Image4.Visible := False;
          Image3.Picture.LoadFromFile(ExtractFilePath(Put) +
              ListBox1.Items.Strings[Zad - 1]);
          if Image3.Width > 450 then
            Image3.Left := ((TMainForm.Width - Image3.Width) div 2) + 25;
          if Image3.Width <= 450 then
            Image3.Left  := ((TMainForm.Width - Image3.Width) div 2);
          Image3.Top     := Image2.Height + 20;
          Image3.Visible := True;

        Except
          On EFOpenError do
            begin
              Timer3.Enabled := False;
              MessageDlg(
                  'Не найден файл с одним из вопросов задания.' +
                  ' Проверьте его наличие в нужном каталоге и попробуйте снова.',
                  mtError,
                  [mbOk],
                  0);
              Image2.Visible  := False;
              Image3.Visible  := False;
              Label23.Visible := False;
              Label24.Visible := False;
              Label25.Visible := False;
              Label26.Visible := False;
              Label27.Visible := False;
              Label28.Visible := False;
              Label29.Visible := False;
              Label30.Visible := False;
              Image4.Visible  := False;
              Flag_Din_Akt    := False;
              Error           := True;
              exit;
            end;
          On EInvalidGraphic do
            begin
              Timer3.Enabled := False;
              MessageDlg(
                  'Не найден файл с одним из вопросов задания.' +
                  ' Проверьте его наличие в нужном каталоге и попробуйте снова.',
                  mtError,
                  [mbOk],
                  0);
              Image2.Visible  := False;
              Image3.Visible  := False;
              Label23.Visible := False;
              Label24.Visible := False;
              Label25.Visible := False;
              Label26.Visible := False;
              Label27.Visible := False;
              Label28.Visible := False;
              Label29.Visible := False;
              Label30.Visible := False;
              Image4.Visible  := False;
              Flag_Din_Akt    := False;
              Error           := True;
              exit;
            end;
        end;

        Vopros_Otvet := 2;
      end;

    if Flag = True then
      begin
        Vopros_Otvet := 1;
        Flag         := False;
      end;
    if Zero_Cikl_One = True then
      begin
        Zero_Cikl     := True;
        Zero_Cikl_One := False;
      end;

    Label29.Top := Image2.Height + 10 + ((Image3.Height div 2) - 12);
    Label24.Top := Image2.Height + 10 + ((Image3.Height div 2) - 15);
    Label27.Top := Image2.Height + 10 + ((Image3.Height div 2) + 13);
    Label23.Top := Image2.Height + 10 + ((Image3.Height div 2) + 13);

    Label30.Top := Image2.Height + Image3.Height + 20 +
        ((Image4.Height div 2) - 12);
    Label25.Top := Image2.Height + Image3.Height + 20 +
        ((Image4.Height div 2) - 15);
    Label28.Top := Image2.Height + Image3.Height + 20 +
        ((Image4.Height div 2) + 13);
    Label26.Top := Image2.Height + Image3.Height + 20 +
        ((Image4.Height div 2) + 13);

  end;

procedure TForm1.BitBtn9Click(Sender: TObject);
  { Кнопка ПУСК на экране начало опроса }
  var
    a               : byte;
    code, g, v, h, J: Integer;
    ss, p           : string;
  begin
    if Reg_Potok_Nom = 0 Then
      Begin
        MessageDlg(
            'Перед началом опроса нужно провести ' + +'регистрацию.',
            mtError,
            [mbOk],
            0);
        exit;
      End;
    val(
        ComboBox3.text,
        h,
        code);
    val(
        ComboBox4.text,
        J,
        code);
    if (Reg_Potok_Nom <> h) and (Reg_Potok_Nom <> J) Then
      Begin
        MessageDlg(
            'Нету данных о регистрации потока с ' +
            +'которым проводится опрос.',
            mtError,
            [mbOk],
            0);
        exit;
      End;

    For g        := 1 to 4 do
      For v      := 1 to 64 do
        SO[g, v] := '0';
    for g        := 1 to 16 do
      begin
        for v := 1 to 8 do
          begin
            Mesta[g, v].Otvet_R := 0;
            Mesta[g, v].Otvet_L := 0;
            For code            := 1 to 64 do
              begin
                Mesta[g, v].Otvet[code] := '0';
              end;
          end;
      end;

    ListBox1.Clear;
    Error := False;
    Vopros;
    If Error = True then
      exit;
    Zadaniya;
    if Error = True then
      exit;
    Variant;
    If Error = True then
      exit;

    Label13.Visible   := False;
    Label19.Visible   := False;
    Label20.Visible   := False;
    Label21.Visible   := False;
    Label22.Visible   := False;
    Label8.Visible    := False;
    ComboBox2.Visible := False;
    ComboBox3.Visible := False;
    ListBox3.Visible  := False;
    ComboBox4.Visible := False;
    ComboBox5.Visible := False;
    Edit2.Visible     := False;
    BitBtn8.Visible   := False;
    BitBtn9.Visible   := False;
    BitBtn10.Visible  := False;
    Button6.Visible   := True;
    Try
      Image2.Picture.LoadFromFile(Put);
      Image2.Left    := (TMainForm.Width - Image2.Width) div 2;
      Image2.Top     := 10;
      Image2.Visible := True;
    Except
      On EFOpenError do
        begin
          MessageDlg(
              'Не найден файл с рисунком задания.' +
              'Проверьте его наличие в нужном каталоге и попробуйте снова.',
              mtError,
              [mbOk],
              0);
          Error := True;
          exit;
        end;
    end;
    Query5.first;

    p                      := ExtractFilePath(Put);
    OpenDialog1.InitialDir := p;
    Image3.Visible         := True;
    Image4.Visible         := True;
    Timer3.interval        := 100;
    Image3.Visible         := False;
    Image4.Visible         := False;
    Flag_Din_Akt           := True;
    Zad                    := 1;
    Cur_Vop                := 1;
    Nom_Vop                := 0;
    Vopros_Otvet           := 1;
    Zero_Cikl              := True;
    Timer3.Enabled         := True; { AktiwPam; }
    Create_Sel;
  end;

procedure TForm1.N23Click(Sender: TObject);
  var
    i, SB, SV, SL, SP, Handle, l, n, g, v, Count, J, code: Integer;
  begin
    if OpenDialog1.Execute then
      begin
        HandleFn := FileOpen(
            OpenDialog1.FileName,
            0);
      end
    else
      exit;
    fn          := ExtractFileName(OpenDialog1.FileName);
    N1.Visible  := False;
    N3.Visible  := False;
    N14.Visible := False;
    N15.Visible := False;
    N16.Visible := False;
    N17.Visible := False;
    N20.Visible := False;
    with Table7 do
      begin
        Active       := False;
        DatabaseName := 'Button';
        TableName    := 'Ocenka';
        TableType    := ttDefault;
        EmptyTable;
      end;
    Table7.Active := True;
    Read_Rez;
    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          if Mesta[g, v].Reg <> '-' then
            Table7.appendrecord([Mesta[g, v].NomG, Mesta[g, v].NomS,
                Mesta[g, v].FIO, Mesta[g, v].nm, Mesta[g, v].Ocenka]);
        end;
    Table7.first;
    DBGrid2.Visible  := True;
    Button8.Visible  := True;
    Button9.Visible  := True;
    Button10.Visible := True;
    Button16.Visible := True;
    Query4.close;
    Query4.SQL.Clear;
    Query4.SQL.Add('select * from Ocenka Order by NG asc');
    Query4.Open;
    DBGrid2.DataSource := DataSource11;
  end;

procedure TForm1.Button16Click(Sender: TObject);
  begin
    Button16ClickS;
  end;

procedure TForm1.Button10Click(Sender: TObject);
  begin
    DBGrid2.Visible    := False;
    Button8.Visible    := False;
    Button9.Visible    := False;
    Button16.Visible   := False;
    Button10.Visible   := False;
    N1.Visible         := True;
    N3.Visible         := True;
    N14.Visible        := True;
    N15.Visible        := True;
    N16.Visible        := True;
    N17.Visible        := True;
    N20.Visible        := True;
    DBGrid2.DataSource := DataSource10;
    Query4.close;
  end;

procedure TForm1.Button9Click(Sender: TObject); { Сортировка по результатам }
  begin
    Query4.close;
    Query4.SQL.Clear;
    Query4.SQL.Add('select * from Ocenka Order by Oc desc');
    Query4.Open;
    DBGrid2.DataSource := DataSource11;
  end;

procedure TForm1.Button8Click(Sender: TObject); { Сортировка по списку }
  begin
    Query4.close;
    Query4.SQL.Clear;
    Query4.SQL.Add('select * from Ocenka Order by NG asc');
    Query4.Open;
    DBGrid2.DataSource := DataSource11;
  end;

procedure TForm1.ListBox3Click(Sender: TObject);
  Var
    a: Integer;
    s: string;
  begin
    Vr_Oprosa := ListBox3.ItemIndex;
  end;

procedure TForm1.J1Click(Sender: TObject); { Запуск режима просмотра оценок на
    динамической моделе }
  var
    i, J, code: Integer;
  begin
    sopost;
    J     := 0;
    for i := 1 to 32000 do
      begin
        J := J + 1;
        J := J - 1;
        J := J + 1;
        J := J - 1;
        J := J + 1;
      end;
    J     := 0;
    for i := 1 to 32000 do
      begin
        J := J + 1;
        J := J - 1;
        J := J + 1;
        J := J - 1;
        J := J + 1;
      end;
    if OpenDialog1.Execute then
      begin
        { Caption := OpenDialog1.FileName; }
        HandleFn := FileOpen(
            OpenDialog1.FileName,
            0);
      end
    else
      exit;
    fn    := ExtractFileName(OpenDialog1.FileName);
    Dates := DateToStr(Date);
    if ((fn[10] <> Dates[5]) or (fn[9] <> Dates[4])) then
      begin
        if MessageDlg('Дата проведения опроса : ' + fn[6] + fn[7] + '.' + fn[9]
            + fn[10] + +'. Cегодня уже ' + Dates[1] + Dates[2] + '.' + Dates[4]
            + Dates[5] + '!' + +' Возможно иное закрепление мест. Продолжить ?',
            mtWarning, [mbYes, mbNo], 0) = mrNo then
          begin
            FileClose(HandleFn);
            exit;
          end;
      end;

    Read_Rez;

    FileClose(HandleFn);
    J     := 0;
    for i := 1 to 32000 do
      begin
        J := J + 1;
        J := J - 1;
        J := J + 1;
        J := J - 1;
        J := J + 1;
      end;
    N1.Visible  := False;
    N3.Visible  := False;
    N14.Visible := False;
    N15.Visible := False;
    N16.Visible := False;
    N17.Visible := False;
    N20.Visible := False;

    { RadioGroup1.Caption:='------ '+Times+' --------  Итоги опроса  -------- '+Dates+' --------'; }
    if fn[4] <> '_' then
      RadioGroup1.Caption := '           Время ' + Times[1] + Times[2] +
          Times[3] + Times[4] + Times[5] + +Times[6] + Times[7] + Times[8] +
          '    Дата ' + Dates + '     Подразделение   ' + fn[2] + fn[3] + fn[4]
          + '        '
    else
      RadioGroup1.Caption := '            Время ' + Times[1] + Times[2] +
          Times[3] + Times[4] + Times[5] + +Times[6] + Times[7] + Times[8] +
          '    Дата ' + Dates + '     Подразделение   ' + fn[2] + fn[3] +
          '         ';
    RadioGroup1.Visible := True;
    BitBtn11.Visible    := True;
    Flag_Reg_Vyp        := True;
    Create_Sel;
    Flag_Din_Akt   := True;
    Timer6.Enabled := True;
  end;

procedure TForm1.Timer6Timer(Sender: TObject);
  { Просмотр оценок на динамической моделе класса }
  var
    a, v, g, g_1: byte;
  begin
    if Flag_Din_Akt = False then
      exit;
    Read_Sel(p);
    Mem_Buf := p;
    for g   := 1 to 16 do
      begin
        g_1   := g - 1;
        a     := Mem_Buf^[g_1 * 2];
        for v := 1 to 8 do
          begin
            if (a and 1) <> 0 then
              begin
                ItInd := Mesta[g, v].It;
                If Mesta[g, v].Reg = ' ' then
                  RadioGroup1.Items.Strings[ItInd] := Mesta[g, v].Ocenka;
              end
            else If Mesta[g, v].Reg = ' ' then
              begin
                ItInd                            := Mesta[g, v].It;
                RadioGroup1.Items.Strings[ItInd] := Mesta[g, v].nm;
              end;
            a := a shr 1;
          end;
      end;
  end;

procedure TForm1.Timer4Timer(Sender: TObject); { Проведение опроса }
  var
    a, v, g, g_1: byte;
    s           : string;
  begin
    if Flag_Din_Akt = False then
      exit;
    Read_Sel(p);
    Mem_Buf := p;
    for g   := 1 to 16 do
      begin
        g_1   := g - 1;
        a     := Mem_Buf^[g_1 * 2];
        for v := 1 to 8 do
          begin
            if (a and 1) <> 0 then
              begin
                if Mesta[g, v].Reg = ' ' then
                  begin
                    Mesta[g, v].Otvet[Nom_Vop] := '1';
                    If SO[Mesta[g, v].Variant, Nom_Vop] = '1' then
                      begin
                        if Mesta[g, v].Flag_R = False then
                          begin
                            Mesta[g, v].Otvet_R := Mesta[g, v].Otvet_R + 1;
                            Mesta[g, v].Flag_R  := True;
                          end;
                      end;
                    If SO[Mesta[g, v].Variant, Nom_Vop] = '0' then
                      begin
                        if Mesta[g, v].Flag_L = False then
                          begin
                            Mesta[g, v].Otvet_L := Mesta[g, v].Otvet_L + 1;
                            Mesta[g, v].Flag_L  := True;
                          end;
                      end;
                  end;
              end;
            a := a shr 1;
          end;
      end;
  end;

procedure TForm1.Write_Rez; { Запись результатов опроса }
  var
    n, p, s, d, ss                    : string;
    sops, so1s, so2s, so3s, so4s, a, z: string[2];
    m                                 : string[8];
    sd, ds                            : string[3];
    { переменная введена для возможности преобразования значения
      Reg_Potok_Nom в строковый вид. Первоначально в переменную заносятся ____ }
    nmf                                   : string[56];
    code, i, no, l, g, v, Count, Handle, x: Integer;
    NOVar                                 : string[1];
    SearchRec                             : TSearchRec;
    Buffer                                : array [1 .. 56] of char;
  begin
    Dates := DateToStr(Date);
    no    := 0;
    p     := ExtractFilePath(Put);
    str(
        Reg_Potok_Nom,
        sd);
    ds[1] := '_';
    ds[2] := '_';
    ds[3] := '_';
    if Reg_Potok_Nom < 100 then
      begin
        ds[1] := sd[1];
        ds[2] := sd[2];
      end;
    if Reg_Potok_Nom >= 100 then
      begin
        ds[1] := sd[1];
        ds[2] := sd[2];
        ds[3] := sd[3];
      end;
    l := FindFirst(
        p + 'I' + ds[1] + ds[2] + ds[3] + '_' + Dates[1] + Dates[2] + '.' +
        Dates[4] + Dates[5] + '*',
        faAnyFile,
        SearchRec);
    if l = 0 then
      begin
        n := SearchRec.Name;
        While l = 0 do
          begin
            l  := FindNext(SearchRec);
            no := no + 1;
            if l = 0 then
              begin
                n := SearchRec.Name;
              end;
          end;
      end;
    str(
        no,
        s);
    sopost;
    s := ExtractFilePath(Put) + 'I' + ds[1] + ds[2] + ds[3] + '_' + Dates[1] +
        Dates[2] + '.' + Dates[4] + Dates[5] + s;
    Handle := FileCreate(s);
    Handle := FileOpen(
        s,
        1);
    { Dates:=FormatDateTime(hh:nn:ss); }
    Times := TimeToStr(Time);
    Dates := DateToStr(Date);

    For x := 1 to 8 do
      begin
        str(
            Mas_Zad[x],
            ss);
        m[x] := ss[1];
      end;
    nmf := '00000000000000000000000000000000000000000000000000000000';
    fileseek(
        Handle,
        0,
        0);
    Times := TimeToStr(Time);
    Dates := DateToStr(Date);
    nmf := Dates + '_' + Times + '_' + Kurs + '_' + m[1] + m[2] + m[3] + m[4] +
        m[5] + m[6] + m[7] + m[8] + '_' + Group;
    for x       := 1 to 56 do
      Buffer[x] := nmf[x];
    Count       := FileWrite(
        Handle,
        Buffer,
        55);
    Kodir_et;

    for x       := 1 to 16 do
      Buffer[x] := SO_Kod[1, x];
    Count       := FileWrite(
        Handle,
        Buffer,
        16);
    for x       := 1 to 16 do
      Buffer[x] := SO_Kod[2, x];
    Count       := FileWrite(
        Handle,
        Buffer,
        16);
    for x       := 1 to 16 do
      Buffer[x] := SO_Kod[3, x];
    Count       := FileWrite(
        Handle,
        Buffer,
        16);
    for x       := 1 to 16 do
      Buffer[x] := SO_Kod[4, x];
    Count       := FileWrite(
        Handle,
        Buffer,
        16);

    kodir;
    for g := 1 to 16 do
      begin
        for v := 1 to 8 do
          begin
            sops[1] := '0';
            sops[2] := '0';
            so3s[1] := '0';
            so3s[2] := '0';
            so1s[1] := '0';
            so1s[2] := '0';
            so2s[1] := '0';
            so2s[2] := '0';
            so4s[1] := '0';
            so4s[2] := '0';
            z[1]    := '0';
            z[2]    := '0';
            a[1]    := '0';
            a[2]    := '0';
            str(
                SOP,
                sops);
            If SOP < 10 then
              begin
                sops[2] := sops[1];
                sops[1] := '0';
              end;
            str(
                SO1,
                so1s);
            If SO1 < 10 then
              begin
                so1s[2] := so1s[1];
                so1s[1] := '0';
              end;
            str(
                Mesta[g, v].Otvet_R,
                a);
            If Mesta[g, v].Otvet_R < 10 then
              begin
                a[2] := a[1];
                a[1] := '0';
              end;
            str(
                Mesta[g, v].Otvet_L,
                z);
            If Mesta[g, v].Otvet_L < 10 then
              begin
                z[2] := z[1];
                z[1] := '0';
              end;

            str(
                SO2,
                so2s);
            If SO2 < 10 then
              begin
                so2s[2] := so2s[1];
                so2s[1] := '0';
              end;
            str(
                SO3,
                so3s);
            If SO3 < 10 then
              begin
                so3s[2] := so3s[1];
                so3s[1] := '0';
              end;
            str(
                SO4,
                so4s);
            If SO4 < 10 then
              begin
                so4s[2] := so4s[1];
                so4s[1] := '0';
              end;
            for i    := 1 to 56 do
              nmf[i] := '*';
            str(
                Mesta[g, v].Variant,
                NOVar);
            If Mesta[g, v].Variant = 1 then
              nmf := 'N' + sops[1] + sops[2] + so1s[1] + so1s[2] + a[1] + a[2] +
                  z[1] + z[2] + Mesta[g, v].Reg + +Mesta[g, v].NomG + '.' +
                  Mesta[g, v].NomS + Mesta[g, v].FIO + Mesta[g, v].nm +
                  Mesta[g, v].Otvets + NOVar + 'k';

            If Mesta[g, v].Variant = 2 then
              nmf := 'N' + sops[1] + sops[2] + so2s[1] + so2s[2] + a[1] + a[2] +
                  z[1] + z[2] + Mesta[g, v].Reg + +Mesta[g, v].NomG + '.' +
                  Mesta[g, v].NomS + Mesta[g, v].FIO + Mesta[g, v].nm +
                  Mesta[g, v].Otvets + NOVar + 'k';

            If Mesta[g, v].Variant = 3 then
              nmf := 'N' + sops[1] + sops[2] + so3s[1] + so3s[2] + a[1] + a[2] +
                  z[1] + z[2] + Mesta[g, v].Reg + +Mesta[g, v].NomG + '.' +
                  Mesta[g, v].NomS + Mesta[g, v].FIO + Mesta[g, v].nm +
                  Mesta[g, v].Otvets + NOVar + 'k';

            If Mesta[g, v].Variant = 4 then
              nmf := 'N' + sops[1] + sops[2] + so4s[1] + so4s[2] + a[1] + a[2] +
                  z[1] + z[2] + Mesta[g, v].Reg + +Mesta[g, v].NomG + '.' +
                  Mesta[g, v].NomS + Mesta[g, v].FIO + Mesta[g, v].nm +
                  Mesta[g, v].Otvets + NOVar + 'k';

            for i       := 1 to 56 do
              Buffer[i] := nmf[i];
            Count       := FileWrite(
                Handle,
                Buffer,
                56);
          end;
      end;
    FileClose(Handle);
    OpenDialog1.FileName := s;
    MessageDlg(
        'Опрос закончен. Результаты сохранены в файле с именем ' + s,
        mtInformation,
        [mbYes],
        0);
  end;

procedure TForm1.Variant;
  begin
    NVariant;
  end;

procedure TForm1.Button11Click(Sender: TObject);
  var
    s   : string;
    code: Integer;
  begin { Str(kol_P,s); }
    Flag_N24                       := False;
    Button12.Caption               := 'Вопросы';
    SpeedButton1.Visible           := False;
    SpeedButton2.Visible           := False;
    SpeedButton3.Visible           := False;
    SpeedButton4.Visible           := False;
    SpeedButton5.Visible           := False;
    SpeedButton6.Visible           := False;
    SpeedButton7.Visible           := False;
    SpeedButton8.Visible           := False;
    SpeedButton9.Visible           := False;
    SpeedButton10.Visible          := False;
    SpeedButton11.Visible          := False;
    SpeedButton12.Visible          := False;
    SpeedButton13.Visible          := False;
    RadioGroup5.Visible            := False;
    Button11.Visible               := False;
    RadioGroup4.Visible            := False;
    ComboBox7.Visible              := False;
    Button12.Visible               := False;
    TMainForm.ComboBox7.Font.Color := clRed;
    N1.Visible                     := True;
    N3.Visible                     := True;
    N14.Visible                    := True;
    N15.Visible                    := True;
    N16.Visible                    := True;
    N17.Visible                    := True;
    N20.Visible                    := True;
    refresh;
  end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
  begin
    NSpeedButton1Click;
  end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
  begin
    NSpeedButton2Click;
  end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
  begin
    NSpeedButton3Click;
  end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
  begin
    NSpeedButton4Click;
  end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
  begin
    NSpeedButton5Click;
  end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
  begin
    NSpeedButton6Click;
  end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
  begin
    NSpeedButton7Click;
  end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
  begin
    NSpeedButton8Click;
  end;

procedure TForm1.N24Click(Sender: TObject);
  var
    code, w, i, J, x, y, z, g, v: Integer;
    x1, x2, y1, y2              : Integer;
    Cols                        : Array [1 .. 8] of string;
    s, ss                       : string;
  begin
    if Flag_N24 = False then
      begin
        if OpenDialog1.Execute then
          begin
            HandleFn := FileOpen(
                OpenDialog1.FileName,
                0);
          end
        else
          exit;
        fn    := ExtractFileName(OpenDialog1.FileName);
        Dates := DateToStr(Date);
        if ((fn[10] <> Dates[5]) or (fn[9] <> Dates[4])) then
          begin
            if MessageDlg('Дата проведения опроса : ' + fn[6] + fn[7] + '.' +
                fn[9] + fn[10] + +'. Cегодня уже ' + Dates[1] + Dates[2] + '.' +
                Dates[4] + Dates[5] + '!' +
                +' Возможно иное закрепление мест. Продолжить ?', mtWarning,
                [mbYes, mbNo], 0) = mrNo then
              begin
                FileClose(HandleFn);
                exit;
              end;
          end;
        Read_Rez;
        Flag_N24 := True;
      end;
    ss := ExtractFilePath(OpenDialog1.FileName);
    ListBox4.Clear;
    ListBox5.Clear;
    ListBox6.Clear;
    ComboBox7.Clear;
    N1.Visible            := False;
    N3.Visible            := False;
    N14.Visible           := False;
    N15.Visible           := False;
    N16.Visible           := False;
    N17.Visible           := False;
    N20.Visible           := False;
    RadioGroup4.Visible   := True;
    ComboBox7.Visible     := True;
    RadioGroup5.Visible   := True;
    Button12.Visible      := True;
    Button11.Visible      := True;
    i                     := 1;
    RadioGroup5.ItemIndex := 0;
    Zad_Vsego             := 0;
    While Mas_Zad[i] <> 0 do
      begin
        Zad_Vsego := Zad_Vsego + 1;
        i         := i + 1;
      end;

    kol_p := 0;
    w     := TMainForm.Width;

    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          for i := 1 to 8 do
            begin
              { if mesta[g,v].reg=' ' then mesta[g,v].verno[i]:=true; } end;
          if Mesta[g, v].Reg = ' ' then
            begin
              kol_p := kol_p + 1;
              str(
                  Mesta[g, v].Variant,
                  s);
              ListBox5.Items.Add(s + ' ' + Mesta[g, v].nm + Mesta[g, v].FIO +
                  Mesta[g, v].Otvet);
            end;
        end;

    { str(x,s); ListBox6.Items.Add(s); }
    { kol_P:=130; }
    x        := 1;
    for i    := 1 to 8 do
      Col[i] := 0;
    for i    := 1 to Zad_Vsego do
      begin
        for g                 := 1 to 16 do
          for v               := 1 to 8 do
            Mesta[g, v].False := False;
        for J                 := 1 to Mas_Zad[i] do
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
                              Mesta[g, v].False    := True;
                              Mesta[g, v].Verno[i] := False;
                            end;
                        end;
                      { if Mesta[3,7].variant=1 then begin
                        if Mesta[3,7].Otvet[x]<>SO[1,x] then begin Mesta[3,7].False:=False;
                        mesta[3,7].verno[i]:=true;end;end; }

                      if Mesta[g, v].Variant = 2 then
                        begin
                          if Mesta[g, v].Otvet[x] <> SO[2, x] then
                            begin
                              Mesta[g, v].False    := True;
                              Mesta[g, v].Verno[i] := False;
                            end;
                        end;
                      { if Mesta[3,7].variant=2 then begin
                        if Mesta[3,7].Otvet[x]<>SO[2,x] then begin Mesta[3,7].False:=False;
                        mesta[3,7].verno[i]:=true;end;end; }

                      if Mesta[g, v].Variant = 3 then
                        begin
                          if Mesta[g, v].Otvet[x] <> SO[3, x] then
                            begin
                              Mesta[g, v].False    := True;
                              Mesta[g, v].Verno[i] := False;
                            end;
                        end;
                      { if Mesta[3,7].variant=3 then begin
                        if Mesta[3,7].Otvet[x]<>SO[3,x] then begin Mesta[3,7].False:=False;
                        mesta[3,7].verno[i]:=true;end;end; }

                      if Mesta[g, v].Variant = 4 then
                        begin
                          if Mesta[g, v].Otvet[x] <> SO[4, x] then
                            begin
                              Mesta[g, v].False    := True;
                              Mesta[g, v].Verno[i] := False;
                            end;
                        end;
                      { if Mesta[3,7].variant=4 then begin
                        if Mesta[3,7].Otvet[x]<>SO[4,x] then begin Mesta[3,7].False:=False;
                        mesta[3,7].verno[i]:=true;end;end; }

                    end;
                end;

            ListBox6.Items.Add(Mesta[1, 1].Otvet[x] + ' ' + SO[1, x]);
            x := x + 1;
          end;

        for g   := 1 to 16 do
          for v := 1 to 8 do
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].False = False)) then
                begin
                  Col[i] := Col[i] + 1;
                end;
            end;
      end;

    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          If RadioGroup4.ItemIndex = 0 then
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].Verno[1] = True))
              then
                ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g, v].NomS +
                    ' ' + Mesta[g, v].FIO);
            end;
          If RadioGroup4.ItemIndex = 1 then
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].Verno[1] <> True))
              then
                ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g, v].NomS +
                    ' ' + Mesta[g, v].FIO);
            end;
        end;
    ComboBox7.text     := ComboBox7.Items[0];
    Canvas.Font.Color  := clBlue;
    Canvas.Font.size   := 20;
    Canvas.Font.Name   := 'Times New Roman';
    Canvas.Font.style  := [fsBold];
    Canvas.Brush.Color := clMenu;
    Canvas.TextOut(
        196,
        5,
        'ИТОГИ ОПРОСА');
    str(
        kol_p,
        s);
    Canvas.Font.size  := 13;
    Canvas.Font.Color := clBlack;
    Canvas.TextOut(
        3,
        40,
        'Дата опроса ' + fn[6] + fn[7] + '.' + fn[9] + fn[10] + '.' + Dates[7] +
        Dates[8]);
    if fn[4] = '_' then
      Canvas.TextOut(
          173,
          40,
          'Подразделение ' + fn[2] + fn[3])
    else
      Canvas.TextOut(
          173,
          40,
          'Подразделение ' + fn[2] + fn[3] + fn[4]);

    Canvas.TextOut(
        332,
        40,
        'Число отвечавших ' + s);

    if ss[8] = 'E' then
      Canvas.TextOut(
          514,
          40,
          'Предмет ЭТП');
    if ss[8] = 'M' then
      Canvas.TextOut(
          514,
          40,
          'Предмет МП');
    if ss[10] = 'S' then
      Canvas.TextOut(
          514,
          40,
          'Предмет ТЭС');
    if ss[11] = '1' then
      Canvas.TextOut(
          514,
          40,
          'Предмет ТЭЦ1');
    if ss[11] = '3' then
      Canvas.TextOut(
          514,
          40,
          'Предмет ТЭЦ3');

    for i := 1 to 8 do
      begin
        str(
            Col[i],
            Cols[i]);
        ListBox4.Items.Add(Cols[i]);
      end;
    x1               := (w - 520) div 2;
    x2               := w - ((w - 520) div 2);
    y1               := 120;
    y2               := 320;
    Canvas.Pen.Width := 1;
    Canvas.Pen.Color := clBlue;
    Canvas.Rectangle(
        x1 + 5,
        y1,
        x2,
        y1 - 2);
    Canvas.Rectangle(
        x1 + 5,
        y2,
        x2,
        y2 + 2);

    for i := 1 to Zad_Vsego do
      begin

        if round(((Col[i] / kol_p) * 100)) > 50 then
          Canvas.Brush.Color := clLime
        else
          Canvas.Brush.Color := clRed;

        Canvas.Rectangle(
            trunc(((x2 - x1) / 8)) * i,
            y2,
            trunc(((x2 - x1) / 8)) * i + 58,
            y2 - round(((Col[i] / kol_p) * 200)));

        Canvas.Font.Color := clGreen;
        Canvas.Font.size  := 20;
        Canvas.Font.Name  := 'Times New Roman';
        Canvas.Font.style := [fsBold];
        str(
            i,
            s);
        SpeedButton1.Top  := 84;
        SpeedButton2.Top  := 84;
        SpeedButton3.Top  := 84;
        SpeedButton4.Top  := 84;
        SpeedButton5.Top  := 84;
        SpeedButton6.Top  := 84;
        SpeedButton7.Top  := 84;
        SpeedButton8.Top  := 84;
        SpeedButton1.Left := trunc(((x2 - x1) / 8)) * 1 + 12;
        SpeedButton2.Left := trunc(((x2 - x1) / 8)) * 2 + 12;
        SpeedButton3.Left := trunc(((x2 - x1) / 8)) * 3 + 12;
        SpeedButton4.Left := trunc(((x2 - x1) / 8)) * 4 + 12;
        SpeedButton5.Left := trunc(((x2 - x1) / 8)) * 5 + 12;
        SpeedButton6.Left := trunc(((x2 - x1) / 8)) * 6 + 12;
        SpeedButton7.Left := trunc(((x2 - x1) / 8)) * 7 + 12;
        SpeedButton8.Left := trunc(((x2 - x1) / 8)) * 8 + 12;
        If Zad_Vsego >= 1 then
          SpeedButton1.Visible := True;
        If Zad_Vsego >= 2 then
          SpeedButton2.Visible := True;
        If Zad_Vsego >= 3 then
          SpeedButton3.Visible := True;
        If Zad_Vsego >= 4 then
          SpeedButton4.Visible := True;
        If Zad_Vsego >= 5 then
          SpeedButton5.Visible := True;
        If Zad_Vsego >= 6 then
          SpeedButton6.Visible := True;
        If Zad_Vsego >= 7 then
          SpeedButton7.Visible := True;
        If Zad_Vsego >= 8 then
          SpeedButton8.Visible := True;
        Canvas.Brush.Color     := clMenu;

        str(
            round(((Col[i] / kol_p) * 100)),
            s);
        Canvas.Font.size := 18;
        if round(((Col[i] / kol_p) * 100)) >= 100 then
          Canvas.TextOut(
              trunc(((x2 - x1) / 8)) * i,
              331,
              s + '%');
        if round(((Col[i] / kol_p) * 100)) < 10 then
          Canvas.TextOut(
              trunc(((x2 - x1) / 8)) * i + 15,
              331,
              s + '%');
        if ((round(((Col[i] / kol_p) * 100)) > 10) and
            (round(((Col[i] / kol_p) * 100)) < 100)) then
          Canvas.TextOut(
              trunc(((x2 - x1) / 8)) * i + 5,
              331,
              s + '%');
      end;
  end;

procedure TForm1.Button12Click(Sender: TObject);
  var
    f_c                                      : Boolean;
    s, ss                                    : string;
    i, g, v, J                               : Integer;
    ch_2, ch_3, ch_4, ch_5, w, x1, x2, y1, y2: Integer;
  begin
    w       := TMainForm.Width;
    x1      := (w - 520) div 2;
    x2      := w - ((w - 520) div 2);
    y1      := 120;
    y2      := 320;
    ss      := ExtractFilePath(OpenDialog1.FileName);
    ch_2    := 0;
    ch_3    := 0;
    ch_4    := 0;
    ch_5    := 0;
    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin
          if Mesta[g, v].Ocenka = '2' then
            ch_2 := ch_2 + 1;
          if Mesta[g, v].Ocenka = '3' then
            ch_3 := ch_3 + 1;
          if Mesta[g, v].Ocenka = '4' then
            ch_4 := ch_4 + 1;
          if Mesta[g, v].Ocenka = '5' then
            ch_5 := ch_5 + 1;
        end;
    f_c := False;
    if ((Button12.Caption = 'Вопросы') and (f_c = False)) then
      begin
        SpeedButton1.Visible     := False;
        SpeedButton2.Visible     := False;
        SpeedButton3.Visible     := False;
        SpeedButton4.Visible     := False;
        SpeedButton5.Visible     := False;
        SpeedButton6.Visible     := False;
        SpeedButton7.Visible     := False;
        SpeedButton8.Visible     := False;
        RadioGroup4.Visible      := False;
        SpeedButton12.Font.Color := clRed;
        SpeedButton10.Font.Color := clGreen;
        SpeedButton11.Font.Color := clGreen;
        SpeedButton9.Font.Color  := clGreen;
        SpeedButton13.Font.Color := clGreen;
        RadioGroup5.ItemIndex    := 0;
        Button12.Caption         := 'Оценки';
        f_c                      := True;
        refresh;
        ComboBox7.text                 := ComboBox7.Items[0];
        TMainForm.ComboBox7.Font.Color := clRed;
        Canvas.Font.Color              := clBlue;
        Canvas.Font.size               := 20;
        Canvas.Font.Name               := 'Times New Roman';
        Canvas.Font.style              := [fsBold];
        Canvas.Brush.Color             := clMenu;
        Canvas.TextOut(
            196,
            5,
            'ИТОГИ ОПРОСА');
        str(
            kol_p,
            s);
        Canvas.Font.size  := 13;
        Canvas.Font.Color := clBlack;
        Canvas.TextOut(
            3,
            40,
            'Дата опроса ' + fn[6] + fn[7] + '.' + fn[9] + fn[10] + '.' +
            Dates[7] + Dates[8]);
        if fn[4] = '_' then
          Canvas.TextOut(
              173,
              40,
              'Подразделение ' + fn[2] + fn[3])
        else
          Canvas.TextOut(
              173,
              40,
              'Подразделение ' + fn[2] + fn[3] + fn[4]);
        Canvas.TextOut(
            332,
            40,
            'Число отвечавших ' + s);
        if ss[8] = 'E' then
          Canvas.TextOut(
              514,
              40,
              'Предмет ЭТП');
        if ss[8] = 'M' then
          Canvas.TextOut(
              514,
              40,
              'Предмет МП');
        if ss[10] = 'S' then
          Canvas.TextOut(
              514,
              40,
              'Предмет ТЭС');
        if ss[11] = '1' then
          Canvas.TextOut(
              514,
              40,
              'Предмет ТЭЦ1');
        if ss[11] = '3' then
          Canvas.TextOut(
              514,
              40,
              'Предмет ТЭЦ3');
        ComboBox7.Clear;
        for g   := 1 to 16 do
          for v := 1 to 8 do
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].Ocenka = '5')) then
                begin
                  ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g, v].NomS
                      + ' ' + Mesta[g, v].FIO);
                end;
            end;

        ComboBox7.text   := ComboBox7.Items[0];
        x1               := (w - 520) div 2;
        x2               := w - ((w - 520) div 2);
        y1               := 120;
        y2               := 320;
        Canvas.Pen.Width := 1;
        Canvas.Pen.Color := clBlue;
        Canvas.Rectangle(
            x1 + 5,
            y1,
            x2,
            y1 - 2);
        Canvas.Rectangle(
            x1 + 5,
            y2,
            x2,
            y2 + 2);

        for i := 1 to 4 do
          begin
            J                  := 0;
            Canvas.Brush.Color := clLime;
            for g              := 1 to 16 do
              for v            := 1 to 8 do
                begin
                  str(
                      6 - i,
                      s);
                  if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].Ocenka = s)) then
                    begin
                      J := J + 1;
                    end;
                end;
            if i = 4 then
              begin
                Canvas.Brush.Color := clBlack;
                Canvas.Rectangle(
                    trunc(((x2 - x1) / 8)) * i,
                    y2,
                    trunc(((x2 - x1) / 8)) * i + 58,
                    y2 - round(((J / kol_p) * 200)));
              end;
            if i = 3 then
              begin
                Canvas.Brush.Color := clGreen;
                Canvas.Rectangle(
                    trunc(((x2 - x1) / 8)) * i,
                    y2,
                    trunc(((x2 - x1) / 8)) * i + 58,
                    y2 - round(((J / kol_p) * 200)));
              end;
            if i = 2 then
              begin
                Canvas.Brush.Color := clBlue;
                Canvas.Rectangle(
                    trunc(((x2 - x1) / 8)) * i,
                    y2,
                    trunc(((x2 - x1) / 8)) * i + 58,
                    y2 - round(((J / kol_p) * 200)));
              end;
            if i = 1 then
              begin
                Canvas.Brush.Color := clRed;
                Canvas.Rectangle(
                    trunc(((x2 - x1) / 8)) * i,
                    y2,
                    trunc(((x2 - x1) / 8)) * i + 58,
                    y2 - round(((J / kol_p) * 200)));
              end;

            Canvas.Brush.Color := clMenu;
            str(
                round(((J / kol_p) * 100)),
                s);
            Canvas.Font.size := 18;
            if round(((J / kol_p) * 100)) = 100 then
              Canvas.TextOut(
                  trunc(((x2 - x1) / 8)) * i,
                  331,
                  s + '%');
            if round(((J / kol_p) * 100)) < 10 then
              Canvas.TextOut(
                  trunc(((x2 - x1) / 8)) * i + 15,
                  331,
                  s + '%');
            if ((round(((J / kol_p) * 100)) >= 10) and
                (round(((J / kol_p) * 100)) < 100)) then
              Canvas.TextOut(
                  trunc(((x2 - x1) / 8)) * i + 5,
                  331,
                  s + '%');
          end;

        if (ch_2 / kol_p) * 100 > 100 - Sum_3 then
          begin
            sred_oc            := 2;
            Canvas.Brush.Color := clBlack;
            Canvas.Rectangle(
                420,
                y2,
                500,
                y2 - 50);
            Canvas.Font.Color  := clBlack;
            Canvas.Font.size   := 26;
            Canvas.Font.Name   := 'Times New Roman';
            Canvas.Font.style  := [fsBold];
            Canvas.Brush.Color := clMenu;
            Canvas.TextOut(
                456,
                327,
                '2');
          end;

        if ((((ch_3 / kol_p) * 100) + ((ch_4 / kol_p) * 100) +
            ((ch_5 / kol_p) * 100) >= Sum_3) and
            (((ch_4 / kol_p) * 100) + ((ch_5 / kol_p) * 100) <= Sum_4)) then
          begin
            sred_oc            := 3;
            Canvas.Brush.Color := clGreen;
            Canvas.Rectangle(
                420,
                y2,
                500,
                y2 - 100);
            Canvas.Font.Color  := clBlack;
            Canvas.Font.size   := 26;
            Canvas.Font.Name   := 'Times New Roman';
            Canvas.Font.style  := [fsBold];
            Canvas.Brush.Color := clMenu;
            Canvas.TextOut(
                456,
                327,
                '3');
          end;

        if (((((ch_3 / kol_p) * 100) + ((ch_4 / kol_p) * 100) + ((ch_5 / kol_p)
            * 100) >= Sum_4) and (((ch_4 / kol_p) * 100) + ((ch_5 / kol_p) *
            100) >= Sum_45))) then
          begin
            Canvas.Brush.Color := clBlue;
            sred_oc            := 4;
            Canvas.Rectangle(
                420,
                y2,
                500,
                y2 - 150);
            Canvas.Font.Color  := clBlack;
            Canvas.Font.size   := 26;
            Canvas.Font.Name   := 'Times New Roman';
            Canvas.Font.style  := [fsBold];
            Canvas.Brush.Color := clMenu;
            Canvas.TextOut(
                456,
                327,
                '4');
          end;

        if ((((ch_3 / kol_p) * 100) + ((ch_4 / kol_p) * 100) +
            ((ch_5 / kol_p) * 100) >= Sum_5) and
            (((ch_5 / kol_p) * 100) >= Sum_55)) then
          begin
            Canvas.Brush.Color := clRed;
            sred_oc            := 5;
            Canvas.Rectangle(
                420,
                y2,
                500,
                y2 - 200);
            Canvas.Font.Color  := clBlack;
            Canvas.Font.size   := 26;
            Canvas.Font.Name   := 'Times New Roman';
            Canvas.Font.style  := [fsBold];
            Canvas.Brush.Color := clMenu;
            Canvas.TextOut(
                456,
                327,
                '5');
          end;

        SpeedButton9.Visible  := True;
        SpeedButton10.Visible := True;
        SpeedButton11.Visible := True;
        SpeedButton12.Visible := True;
        SpeedButton13.Visible := True;
        SpeedButton9.Top      := 74;
        SpeedButton10.Top     := 74;
        SpeedButton11.Top     := 74;
        SpeedButton12.Top     := 74;
        SpeedButton13.Top     := 74;

        SpeedButton12.Left := trunc(((x2 - x1) / 8)) * 1 + 12;
        SpeedButton11.Left := trunc(((x2 - x1) / 8)) * 2 + 12;
        SpeedButton10.Left := trunc(((x2 - x1) / 8)) * 3 + 12;
        SpeedButton9.Left  := trunc(((x2 - x1) / 8)) * 4 + 12;
        SpeedButton13.Left := 340;
      end;

    if ((Button12.Caption = 'Оценки') and (f_c = False)) then
      begin
        Button12.Caption := 'Вопросы';
        f_c              := True;
        refresh;
        TMainForm.ComboBox7.Font.Color := clRed;
        SpeedButton9.Visible           := False;
        SpeedButton10.Visible          := False;
        SpeedButton11.Visible          := False;
        SpeedButton12.Visible          := False;
        SpeedButton13.Visible          := False;
        N24Click(Sender);
      end;
  end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
  begin
    NSpeedButton9Click;
  end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
  begin
    NSpeedButton10Click;
  end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
  begin
    NSpeedButton11Click;
  end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
  begin
    NSpeedButton12Click;
  end;

procedure TForm1.RadioGroup4Click(Sender: TObject);
  var
    code, g, v, k: Integer;
  begin
    k := 1;
    if SpeedButton1.Font.Color = clRed then
      k := 1;
    if SpeedButton2.Font.Color = clRed then
      k := 2;
    if SpeedButton3.Font.Color = clRed then
      k := 3;
    if SpeedButton4.Font.Color = clRed then
      k := 4;
    if SpeedButton5.Font.Color = clRed then
      k := 5;
    if SpeedButton6.Font.Color = clRed then
      k := 6;
    if SpeedButton7.Font.Color = clRed then
      k := 7;
    if SpeedButton8.Font.Color = clRed then
      k := 8;
    ComboBox7.Clear;
    for g   := 1 to 16 do
      for v := 1 to 8 do
        begin

          If RadioGroup4.ItemIndex = 0 then
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].Verno[k] = True))
              then
                ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g, v].NomS +
                    ' ' + Mesta[g, v].FIO);
            end;

          If RadioGroup4.ItemIndex = 1 then
            begin
              if ((Mesta[g, v].Reg = ' ') and (Mesta[g, v].Verno[k] <> True))
              then
                ComboBox7.Items.Add(Mesta[g, v].NomG + ' ' + Mesta[g, v].NomS +
                    ' ' + Mesta[g, v].FIO);
            end;
        end;
    ComboBox7.text := ComboBox7.Items[0];
  end;

procedure TForm1.RadioGroup5Click(Sender: TObject);
  begin
    RadioGroup5Clicks;
  end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
  begin
    NSpeedButton13Click;
  end;

procedure TForm1.DBNavigator2Click(
    Sender: TObject;
    Button: TNavigateBtn);
  begin
    if DBEdit23.text = '1' then
      Label38.Caption := 'Критерии для задания из 3 и менее вопросов';
    if DBEdit23.text = '3' then
      Label38.Caption := 'Критерии для задания из 5 и более вопросов';
    if DBEdit23.text = '2' then
      Label38.Caption := 'Критерии для задания из 4 вопросов';
  end;

procedure TForm1.N21Click(Sender: TObject);
  var
    w, h: Integer;
  begin
    w               := ((TMainForm.Width - Image5.Width) div 2);
    h               := ((TMainForm.Height - Image5.Height) div 2);
    Image5.Top      := h;
    Image5.Left     := w;
    Image5.Visible  := True;
    BitBtn5.Top     := h + 179;
    BitBtn5.Left    := w + 120;
    BitBtn5.Visible := True;
  end;

procedure TForm1.BitBtn5Click(Sender: TObject);
  begin
    Image5.Visible  := False;
    BitBtn5.Visible := False;
  end;

procedure TForm1.N22Click(Sender: TObject);
  begin
    Application.HelpFile := 'MYHELP.HLP';
    Application.HelpCommand(
        HELP_CONTENTS,
        0);
  end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
  var
    i    : Integer;
    s, ss: string[8];
  begin
    if OpenDialog2.Execute then
      begin
        DBEdit11.text := OpenDialog2.FileName;
      end
    else
      exit;
    s  := ExtractFileName(DBEdit11.text);
    ss := '        ';
    i  := 0;
    while s[i] <> '.' do
      begin
        ss[i] := s[i];
        i     := i + 1;
      end;
    DBEdit10.text         := ss;
    SpeedButton14.Enabled := False;
  end;

procedure TForm1.Button13Click(Sender: TObject);
  begin
    Table4.Insert;
    SpeedButton14.Enabled := True;
    Button13.Enabled      := False;
  end;

procedure TForm1.Button15Click(Sender: TObject);
  begin
    Table4.first;
  end;

procedure TForm1.Button14Click(Sender: TObject);
  begin
    Table4.delete;
  end;

procedure TForm1.FormDestroy(Sender: TObject);
  var
    wndHandle: THandle;
    wndClass : array [0 .. 50] of char;
  begin
    StrPCopy(
        @wndClass[0],
        'Shell_TrayWnd');
    wndHandle := FindWindow(
        @wndClass[0],
        nil);
    ShowWindow(
        wndHandle,
        SW_RESTORE);
    Application.HelpCommand(
        HELP_QUIT,
        0);
  end;

end.

{ Table1.Var - DataSource1 - Постоянная таблица. Содержит разбивку мест по вариантам.
  Table2.GroupRed - DataSource2 - Постоянная таблица. Содержит распределение групп и
  потоков по предметам.
  Table3.Reg - DataSource3 -
  Table4.Zadanie - DataSource4 - Постоянная таблица. Содержит список всех зарегистрированных
  заданий.
  Table5.Kodir - DataSource7 - Временная таблица. Создается для записи кодировки задания
  в соответсвующий файл кодировок.
  Table6.Kriterii - DataSource9 - Постоянная таблица. Содержит критерии для выставления
  оценок. Индивидуально.
  Table7.Ocenka - DataSource10 - Временная таблица. Создается для просмотра оценок
  по списку на основании файла содержащего результаты опроса.
  Table8.Krit_Gr - DataSource12 - Постоянная таблица. Соде
  Table9.FieldByName('Задание').AsSrting:=DBcomboBox1.Text;ржит критерии для выставления
  групповой оценки.

  DataSource1 - Table1
  DataSource2 - Table2
  DataSource3 - Table3
  DataSource4 - Table4
  DataSource5 -  Query1
  DataSource6 -  Query2
  DataSource7 - Table5
  DataSource8 -  Query3
  DataSource9 - Table6
  DataSource10 - Table7
  DataSource11 -  Query4
  DataSource12 -  Table8

  Query1 - DataSource5 запрос на DataSource4 - выбираются все задания на определенную тему
  Query2 - DataSource6 запрос на DataSource4
  Query3 - DataSource8 запрос на DataSource2 - выбираются номера потоков для проведения опроса
  Query4 - DataSource11 запрос на DataSource10 - относится к пункту просмотр оценок по списку
  выстроить по результатам или по списку

  Timer1 - Проверка исправности соединений
  Timer2 - Просмотр распределения вариантов
  Timer3 - Смена и показ заданий проводимого опроса
  Timer4 - Проведение опроса
  Timer5 - Проведение регистрации
  Timer6 - Просмотр оценок на динамической моделе класса
  Timer7 - Зарисовка вопросов и ответов
}
