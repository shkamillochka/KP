unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.Buttons, Vcl.MPlayer, Vcl.Menus, shellAPi;

type
  TForm9 = class(TForm)
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
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit2, Unit8, Unit10;

procedure TForm9.FormActivate(Sender: TObject);
begin
if Form9.Visible then
Label3.Caption:='���������� ����������' + #13 +  '����� � ��� �����������';
//Label4.Caption:='���� ������ ������ �� ���������, ��� ����'+ #13 +'�� �������� � 2019. ����� ��� ������ ����'+ #13 +'�������� � �������� � ��������� ������,'+ #13 +'�������� ����� ������. � ����� 2020 ��'+ #13 +'�������� ������� ����� �Black air force�.'+ #13 +'� ����� �������� ������ NO BANG! HOLD ON!'+ #13 +'���������� ��������� ����� ������ 2020'+ #13 +'� ���� ����� 15 ������, �� �������'+ #13 +'�� ������� �������� ����� �����������'+ #13 +'����� vodila, ��������� ������ ����'+ #13 +'� ������� ���� ����������� � ����'+ #13 +'� Aarne � Anikv,����� �������� ���� �����';
label5.Caption:='����� ����������' +#13+ '              ����';
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Mediaplayer1.Stop;
end;

procedure TForm9.N1Click(Sender: TObject);
begin
ShellExecute(0, PChar ('Open'), PChar ('�������.chm'), nil, nil, SW_SHOW);
end;

procedure TForm9.N2Click(Sender: TObject);
begin
close;
end;

procedure TForm9.SpeedButton1Click(Sender: TObject);
begin
Mediaplayer1.Close;
form9.hide;
form8.show;
end;

procedure TForm9.SpeedButton2Click(Sender: TObject);
begin
Mediaplayer1.Close;
form9.hide;
form10.show;
end;

procedure TForm9.SpeedButton3Click(Sender: TObject);
begin
Mediaplayer1.Close;
form9.hide;
form2.showmodal;
end;

procedure TForm9.SpeedButton4Click(Sender: TObject);
begin
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

end.