program Unko;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {frmUnko};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmUnko, frmUnko);
  Application.Run;
end.
