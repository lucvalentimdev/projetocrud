program ProjectClientes;

uses
  Vcl.Forms,
  Menu in 'Views\Menu.pas' {F_Menu},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TF_Menu, F_Menu);
  Application.Run;
end.
