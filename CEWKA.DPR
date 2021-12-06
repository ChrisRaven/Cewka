program cewka;

uses
  Forms,
  cewki in 'cewki.pas' {Form1},
  about in 'about.pas' {AboutFrm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAboutFrm, AboutFrm);
  Application.Run;
end.
