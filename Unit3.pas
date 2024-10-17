unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.Buttons, Vcl.MPlayer, shellAPI, Vcl.Menus;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image3: TImage;
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
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2, Unit4, Unit1;



procedure TForm3.FormActivate(Sender: TObject);
begin
if Form3.visible then
label2.Caption:='���������� ����������' + #13 +  '����� � ��� �����������';
//label4.Caption:='�����, ���-����������� � �����������' +#13+ '������, ���� ��������� ������' + #13 + '����������� ����� ������� � ��������' + #13 + '��� ������ "����� ���� ���� ����' + #13 + '��������� �������� � ����������' + #13 + '���-��������� � ������ ��� ������������' + #13 + '���� "�����" � "���� ��� ������"' + #13 + '���������� ����� ������ ����������' + #13 + '� 2021 ���� ����� �������� ����-������' + #13 + '�������. ����� �� ������� ����� �����' + #13 + '���������� � ������� ����� �������.' + #13 + '����� �����������, ��� � ���� ���������' + #13 + '����� ������������� ��������' + #13 + '��� �� �������, ��� �����������' + #13 + '������ ����������� ������ � 2022 ����.';
label5.Caption:='����� ����������' +#13+ '              ����';
end;


procedure TForm3.N1Click(Sender: TObject);
begin
ShellExecute(0, PChar ('Open'), PChar ('�������.chm'), nil, nil, SW_SHOW);
end;

procedure TForm3.N2Click(Sender: TObject);
begin
close;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
  mediaplayer1.AutoOpen:=true;
  MediaPlayer1.Play;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
Mediaplayer1.Close;
form4.show;
form3.hide;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
Mediaplayer1.Close;
form3.hide;
form2.show;
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
Mediaplayer1.Close;
form3.hide;
form2.show;
end;

end.

