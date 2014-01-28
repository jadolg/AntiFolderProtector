unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if DirectoryExists(Edit1.Text+'\Thumbs.dn\com1.{d3e34b21-9d75-101a-8c3d-00aa001a1652}\�� ..\') then begin
    RenameFile(Edit1.Text+'\Thumbs.dn\com1.{d3e34b21-9d75-101a-8c3d-00aa001a1652}\�� ..\LastF',Edit1.Text+'\data\');
    ShowMessage('Hecho!');
  end else if DirectoryExists(Edit1.Text+'\Thumbs.db\sys����\system..\') then begin
    RenameFile(Edit1.Text+'\Thumbs.db\sys����\system..\',Edit1.Text+'\Thumbs.db\sys����\system\');
    RenameFile(Edit1.Text+'\Thumbs.db\sys����\system\Thumbs.db.{d3e34b21-9d75-101a-8c3d-00aa001a1652}\',Edit1.Text+'\data\');
    ShowMessage('Hecho!');
  end else
    ShowMessage('No se ha enkontrado ninguna de las versiones soportadas de FolderProtector');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if (DirectoryExists(Edit1.Text+'\Thumbs.dn\com1.{d3e34b21-9d75-101a-8c3d-00aa001a1652}\') and
      DirectoryExists(Edit1.Text+'\data\')) then begin
        RenameFile(Edit1.Text+'\data\',Edit1.Text+'\Thumbs.dn\com1.{d3e34b21-9d75-101a-8c3d-00aa001a1652}\�� ..\LastF');
        ShowMessage('Hecho!');
  end else if (DirectoryExists(Edit1.Text+'\Thumbs.db\sys����\system\') and
      DirectoryExists(Edit1.Text+'\data\')) then begin
        RenameFile(Edit1.Text+'\data\',Edit1.Text+'\Thumbs.db\sys����\system\Thumbs.db.{d3e34b21-9d75-101a-8c3d-00aa001a1652}\');
        RenameFile(Edit1.Text+'\Thumbs.db\sys����\system\',Edit1.Text+'\Thumbs.db\sys����\system..\');
        ShowMessage('Hecho!');
  end else
    ShowMessage('No se ha enkontrado ninguna de las versiones soportadas de FolderProtector');



end;

end.
