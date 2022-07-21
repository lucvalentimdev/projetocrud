unit clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.StdCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormCadClientes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DsClientes: TDataSource;
    Conexao: TFDConnection;
    TbClientes: TFDTable;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Btcadastrar: TButton;
    Btconfirmar: TButton;
    Label8: TLabel;
    BtCancelar: TButton;
    Btexcluir: TButton;
    Btsair: TButton;
    Btlimpar: TButton;
    Bteditar: TButton;
    PanelStatus: TPanel;
    LabelStatus: TLabel;
    DBGrid1: TDBGrid;
    BtConsultar: TButton;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    TbClientesid: TFDAutoIncField;
    TbClientesnome: TStringField;
    TbClientestelefone: TIntegerField;
    TbClientescidade: TStringField;
    TbClientesendereco: TStringField;
    TbClientesuf: TStringField;
    TbClientesobservacoes: TMemoField;
    TbClientesdatacadastro: TDateField;
    TbClientesdatamodificacao: TDateField;
    TbClientesRG: TStringField;
    TbClientesORGEXP: TStringField;
    TbClientesCPF: TStringField;
    procedure BtcadastrarClick(Sender: TObject);
    procedure BtconfirmarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtexcluirClick(Sender: TObject);
    procedure BtsairClick(Sender: TObject);
    procedure BtlimparClick(Sender: TObject);
    procedure BteditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadClientes: TFormCadClientes;

implementation

{$R *.dfm}

procedure TFormCadClientes.BtcadastrarClick(Sender: TObject);
begin
   // Inicia para inserir registro na tabela //

     TbClientes.Insert;

   // Alterar label status //

    LabelStatus.Caption :='Cadastrando!';

    // Hab. o botao confirmar - limpar - excluir e cancelar //

    Btconfirmar.enabled   :=True;
    Btlimpar.enabled      :=True;
    Btexcluir.enabled     :=True;
    Btcancelar.enabled    :=True;

    // Desab. bt cadastrar //
    Btcadastrar.enabled   :=False;

    // Desabilita botao editar //
    Bteditar.enabled :=False;


  // Altera as cor dos campos DbEdit para amarelo //

    DBEdit1.Color  :=clYellow;
    DBEdit2.Color  :=clYellow;
    DBEdit3.Color  :=clYellow;
    DBEdit4.Color  :=clYellow;
    DBEdit5.Color  :=clYellow;
    DBMemo1.Color  :=clYellow;


end;

procedure TFormCadClientes.BtconfirmarClick(Sender: TObject);
begin

      // Insere data na tabela ou insere data modificacao //

      if
       TbClientesdatacadastro.Value <=0 then
       TbClientesdatacadastro.Value := Now ()

      else
       TbClientesdatamodificacao.Value := Now();

     // Insere os dados do formulario no dbo //

      TbClientes.Post;


     // Exibir Mensagem de concluido  //

      ShowMessage ('Cadastro realizado/alterado com sucesso');


    // Limpa os campos apos confirmar cadastro //

     dbedit1.Clear;
     dbedit2.Clear;
     dbedit3.Clear;
     dbedit4.Clear;
     dbedit5.Clear;
     dbmemo1.Clear;

    // Desabilita botoes confirmar-limpar-excluir e cancelar  //

     Btconfirmar.enabled   :=False;
     Btlimpar.enabled      :=False;
     Btexcluir.enabled     :=False;
     Btcancelar.enabled    :=False;

     // Habilita bt cadastrar - editar //

     Btcadastrar.enabled   :=True;
     Bteditar.enabled      :=True;

     // Altera as cor dos campos DbEdit para branco //

    DBEdit1.Color :=clWhite;
    DBEdit2.Color :=clWhite;
    DBEdit3.Color :=clWhite;
    DBEdit4.Color :=clWhite;
    DBEdit5.Color :=clWhite;
    DBMemo1.Color :=clWhite;

    // Alterar label status //

    LabelStatus.Caption :='Concluído';

    // Desabilita a grid//
    DBGrid1.Enabled :=true;

end;


procedure TFormCadClientes.BteditarClick(Sender: TObject);
begin
     //Coloca o formulario em edicao

     TbClientes.Edit;

     //Habilita clique na grid  botao confirmar botao excluir e cancelar

     DbGrid1.ReadOnly     :=True;
     Btconfirmar.Enabled  :=True;
     Btcancelar.Enabled   :=True;
     Btexcluir.Enabled    :=True;


     // Desabilita botao cadastrar

     Btcadastrar.Enabled  :=False;

     // Altera as cor dos campos DbEdit para amarelo //

     DBEdit1.Color  :=clYellow;
     DBEdit2.Color  :=clYellow;
     DBEdit3.Color  :=clYellow;
     DBEdit4.Color  :=clYellow;
     DBEdit5.Color  :=clYellow;
     DBMemo1.Color  :=clYellow;

   // Alterar label status //

     LabelStatus.Caption :='Editando!';

end;

procedure TFormCadClientes.BtexcluirClick(Sender: TObject);
begin

      // Exclui registro tabela //

       TbClientes.Delete;

     // Alterar label status //

     LabelStatus.Caption :='Parado!';


     // Desabilita botao confirmar limpar e exclui // habilita botao cancelar cadastrar //

     Btconfirmar.enabled   :=False;
     Btlimpar.enabled      :=False;
     Btcancelar.enabled    :=True;
     Btcadastrar.enabled   :=True;
     Btexcluir.enabled     :=True;

     // Informa cadastro cancelado com sucesso //

     Showmessage ('Cadastro excluido com sucesso');


end;

procedure TFormCadClientes.BtlimparClick(Sender: TObject);
begin
    // Limpa os campos //
    DbEdit1.Clear;
    dbedit2.Clear;
    dbedit3.Clear;
    dbedit4.Clear;
    dbedit5.Clear;
    dbmemo1.Clear;

    // Mensagem de Limpeza de Campos  //

    ShowMessage ('Campos limpos com sucesso!');


end;

procedure TFormCadClientes.BtsairClick(Sender: TObject);
begin

   //Fecha o formulario //

   Form1.Close;

end;


procedure TFormCadClientes.BtCancelarClick(Sender: TObject);
begin

    // Cancelar Operacao //

    TbClientes.Cancel;

   // Alterar label status //

    LabelStatus.Caption :='Cancelado';

   // Desabilita botao confirmar - limpar - excluir - cancelar //

    Btconfirmar.Enabled   :=False;
    Btlimpar.Enabled      :=False;
    Btexcluir.Enabled     :=False;
    Btcancelar.Enabled    :=False;

    // Habilita novamente botao cadastrar e editar //

    Btcadastrar.Enabled   :=True;
    Bteditar.Enabled      :=True;

   // Altera as cor dos campos DbEdit para branco //

    DBEdit1.Color :=clWhite;
    DBEdit2.Color :=clWhite;
    DBEdit3.Color :=clWhite;
    DBEdit4.Color :=clWhite;
    DBEdit5.Color :=clWhite;
    DBMemo1.Color :=clWhite;

end;

end.
