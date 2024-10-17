unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, shellAPI, Vcl.Menus;

type
  TForm1 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit11;

procedure TForm1.N1Click(Sender: TObject);
begin
ShellExecute(0, PChar ('Open'), PChar ('�������.chm'), nil, nil, SW_SHOW);
end;


procedure TForm1.N2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
form1.hide;
form2.show;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
form1.hide;
form11.show;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
close;
end;

end.