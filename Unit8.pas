unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.MPlayer, Vcl.Menus, shellAPI;

type
  TForm8 = class(TForm)
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
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
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
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit2, Unit7, Unit9;

procedure TForm8.FormActivate(Sender: TObject);
begin
if Form8.Visible then
Label2.Caption:='���������� ����������' + #13 +  '����� � ��� �����������';
//Label4.Caption:='�  2016  ����  Rocket  ��������'+ #13 +'��������  ���� - ������  �mood+-�.'+ #13 +'�� ��� ������ � ����� � ������� ��������'+ #13 +'����������� ������������� �Bound�.'+ #13 +'�����  2017-��  �����������  �������'+ #13 +'Interstellar. ����-�������, ��������� ��'+ #13 +'5-�� ������. �������, ��������� �'+ #13 +'OFFMi ������� ������ ��������2�.'+ #13 +'����������  ����������  �������'+ #13 +'���������  ��  ��  ������������ �'+ #13 +'��������������. 2018  ���  �������'+ #13 +'����������  ��  ������  ��  Rocket.'+ #13 +'�� ���������� 2 ������� INTERGALACTIC'+ #13 +'� SWAG SEASON. �� ���� ��� ��������'+ #13 +'������� ���������� ����� � �������'+ #13 +'Yanix  �  lil krystalll.';
label5.Caption:='����� ����������' +#13+ '              ����';
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Mediaplayer1.Stop;
end;

procedure TForm8.N1Click(Sender: TObject);
begin
ShellExecute(0, PChar ('Open'), PChar ('�������.chm'), nil, nil, SW_SHOW);
end;

procedure TForm8.N2Click(Sender: TObject);
begin
close;
end;

procedure TForm8.SpeedButton1Click(Sender: TObject);
begin
Mediaplayer1.Close;
form8.hide;
form7.show;
end;

procedure TForm8.SpeedButton2Click(Sender: TObject);
begin
Mediaplayer1.Close;
form8.hide;
form9.show;
end;

procedure TForm8.SpeedButton3Click(Sender: TObject);
begin
Mediaplayer1.Close;
form8.hide;
form2.showmodal;
end;

procedure TForm8.SpeedButton4Click(Sender: TObject);
begin
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

end.
