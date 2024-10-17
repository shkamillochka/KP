unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, shellAPI, Vcl.Menus;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    N2: TMenuItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit11;


procedure TForm2.Label1Click(Sender: TObject);
begin
form3.Show;
form2.Close;
end;

procedure TForm2.Label2Click(Sender: TObject);
begin
form4.Show;
form2.Close;
end;

procedure TForm2.Label3Click(Sender: TObject);
begin
form5.Show;
form2.Close;
end;

procedure TForm2.Label4Click(Sender: TObject);
begin
form6.Show;
form2.Close;
end;

procedure TForm2.Label5Click(Sender: TObject);
begin
form7.Show;
form2.Close;
end;

procedure TForm2.Label6Click(Sender: TObject);
begin
form8.Show;
form2.Close;
end;

procedure TForm2.Label7Click(Sender: TObject);
begin
form9.Show;
form2.Close;
end;

procedure TForm2.Label8Click(Sender: TObject);
begin
form10.Show;
form2.Close;
end;

procedure TForm2.N1Click(Sender: TObject);
begin
ShellExecute(0, PChar ('Open'), PChar ('Справка.chm'), nil, nil, SW_SHOW);
end;

procedure TForm2.N2Click(Sender: TObject);
begin
close;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
form1.show;
form2.hide;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
form11.show;
form2.hide;
end;

end.
