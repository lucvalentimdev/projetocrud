unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TF_Menu = class(TForm)
    pn_Top: TPanel;
    pn_Rodape: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Menu: TF_Menu;

implementation

{$R *.dfm}

end.
