unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.Buttons, Vcl.MPlayer, shellAPI, Vcl.Menus;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    MediaPlayer1: TMediaPlayer;
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit2, Unit4, Unit6;



procedure TForm5.FormActivate(Sender: TObject);
begin
if Form5.Visible then
Label2.Caption:='���������� ����������' + #13 +  '����� � ��� �����������';
//Label4.Caption:='����� �������� ���������� Melon Music.' + #13 + '������������� ����� ��� � ������.' + #13 +  '�� �������� MM ����������� � ������� ������.' + #13 + '������� ����������� ������ ������� � 2019' + #13 +  '�������� ��������� �Scum Off the Pot�.' + #13 +  '�������, � 2020 Mayot ��������� �����������' + #13 +  '�������� �GHETTO GARDEN�. ��������� �����' + #13 +  '���� ��������� ������� �������� �' + #13 + '������ � ��� ����������� ������.'+ #13 + '����� �����, ����� �������� ���� �����.' + #13 +  'Mayot ��������� � ������� Thrill Pill �'+ #13 + '����� �� Jabo � LOVV66. ��� �'+ #13 + '�������� �������� ����������� �������'+ #13 + '������������ � ����. ������� ����� 2020, �'+ #13 + '����� �������� �� 2021, ����� MORGENSHTERN'+ #13 + '�������� ���� ��� ������� �'+ #13 + '������������� ��������. ������ ����� �'+ #13 + '��� ���-������ ����� ������ �����.';
label5.Caption:='����� ����������' +#13+ '              ����';
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Mediaplayer1.Stop;
end;

procedure TForm5.N1Click(Sender: TObject);
begin
ShellExecute(0, PChar ('Open'), PChar ('�������.chm'), nil, nil, SW_SHOW);
end;

procedure TForm5.N2Click(Sender: TObject);
begin
close;
end;

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
Mediaplayer1.Close;
form5.hide;
form4.show;
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
begin
Mediaplayer1.Close;
form5.hide;
form6.show;
end;

procedure TForm5.SpeedButton3Click(Sender: TObject);
begin
Mediaplayer1.Close;
form5.hide;
form2.show;
end;

procedure TForm5.SpeedButton4Click(Sender: TObject);
begin
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

end.
