unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ControlList, Vcl.StdCtrls,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.GenData, Vcl.Bind.ControlList,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.ObjectScope;

type
  TForm1 = class(TForm)
    ctrlstPeople: TControlList;
    lblFullName: TLabel;
    lblDOB: TLabel;
    lblGender: TLabel;
    lblSalary: TLabel;
    BindingsList1: TBindingsList;
    PrototypeBindSource1: TPrototypeBindSource;
    LinkGridToDataSourcePrototypeBindSource1: TLinkGridToDataSource;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    LinkPropertyToFieldCaption2: TLinkPropertyToField;
    LinkPropertyToFieldCaption3: TLinkPropertyToField;
    LinkPropertyToFieldCaption4: TLinkPropertyToField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
