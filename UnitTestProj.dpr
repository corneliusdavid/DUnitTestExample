program UnitTestProj;

uses
  Vcl.Forms,
  ufrmMain in 'ufrmMain.pas' {Form1},
  uPersonClass in 'uPersonClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
