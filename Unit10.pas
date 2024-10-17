unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.MPlayer, Vcl.Menus, shellAPI;

type
  TForm10 = class(TForm)
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
  Form10: TForm10;

implementation

{$R *.dfm}

uses Unit2, Unit9, Unit11;

procedure TForm10.FormActivate(Sender: TObject);
begin
if Form10.Visible then
Label3.Caption:='���������� ����������' + #13 +  '����� � ��� �����������';
//Label4.Caption:='� 2017-�  �������� ������������ �'+#13+'Magnum Opus, ����� �� ���� �������'+#13+'�������. ������ ������� ����'+#13+'��������  ���������  ����  ����,'+#13+'���� ����� ����� Lil Krystalll,'+#13+'����� ��������������� ���� ���'+#13+'�����������  �������  ����  ��'+#13+'������� �����. ����� ������ ��������'+#13+'��� ������� ���� ����,�������� ����.'+#13+'������  �������  ������  �������'+#13+'������ ������� ����, �������� �'+#13+'�������  �������������  ��������.'+#13+'���� �������� ���������� ������ �'+#13+'����� ������,��������� �����������.';
label5.Caption:='����� ����������' +#13+ '              ����';
end;

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Mediaplayer1.Stop;
end;

procedure TForm10.N1Click(Sender: TObject);
begin
ShellExecute(0, PChar ('Open'), PChar ('�������.chm'), nil, nil, SW_SHOW);
end;

procedure TForm10.N2Click(Sender: TObject);
begin
close;
end;

procedure TForm10.SpeedButton1Click(Sender: TObject);
begin
Mediaplayer1.Close;
form10.hide;
form9.show;
end;

procedure TForm10.SpeedButton2Click(Sender: TObject);
begin
Mediaplayer1.Close;
form10.hide;
form11.show;
end;

procedure TForm10.SpeedButton3Click(Sender: TObject);
begin
Mediaplayer1.Close;
form10.hide;
form2.show;
end;

procedure TForm10.SpeedButton4Click(Sender: TObject);
begin
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

end.
