unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ControlList, Vcl.StdCtrls,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.GenData, Vcl.Bind.ControlList,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.ObjectScope, System.Generics.Collections,
  uPersonClass;

type
  TPeople = TList<TPerson>;

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
    procedure PrototypeBindSource1CreateAdapter(Sender: TObject;
      var ABindSourceAdapter: TBindSourceAdapter);
  private
    const
      RAND_NAMES: array[1..52] of string = ('Adam', 'Bob', 'Candi', 'Doug', 'Eugene', 'Fred', 'Gretchen', 'Harry', 'Ingrid', 'Jack', 'Kelli', 'Larry', 'Mary', 'Nancy', 'Olivia', 'Paul', 'Quentin', 'Randy', 'Sally', 'Tom', 'Ursula', 'Vanessa', 'William', 'Xavier', 'Yolanda', 'Zeek',
                                            'Ashley', 'Bill', 'Chester', 'Darcy', 'Evan', 'Finnick', 'Gloria', 'Harold', 'Indigo', 'Jeremiah', 'Keiran', 'Lysander', 'Monty', 'Nanette', 'Odette', 'Pamela', 'Quinlan', 'Raynah', 'Sabrina', 'Tabitha', 'Underwood', 'Val', 'Wagner', 'Xadrian', 'Yanni', 'Zephyr');
    var
      PeopleList: TPeople;

    function NewRandomPerson: TPerson;
    procedure FillRandomPeople(const Amount: Integer);
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

constructor TForm1.Create(AOwner: TComponent);
begin
  FillRandomPeople(100);
  inherited;
end;

procedure TForm1.FillRandomPeople(const Amount: Integer);
begin
  PeopleList := TObjectList<TPerson>.Create;

  for var i := 1 to Amount do
    PeopleList.Add(NewRandomPerson);
end;

function TForm1.NewRandomPerson: TPerson;
begin
  Result := TPerson.Create;
  Result.FirstName := RAND_NAMES[Random(52) + 1] + IntToStr(Random(1000) + 100);
  Result.LastName  := RAND_NAMES[Random(52) + 1] + IntToStr(Random(1000) + 100);
  Result.BirthDate := Date - (Random(50) + 20) * 365;
  if Random(1) = 1 then Result.Gender := 'M' else Result.Gender := 'F';
  Result.Salary    := Random(50000) + 30000;
end;

procedure TForm1.PrototypeBindSource1CreateAdapter(Sender: TObject;
  var ABindSourceAdapter: TBindSourceAdapter);
begin
  ABindSourceAdapter := TListBindSourceAdapter<TPerson>.Create(self, PeopleList);
end;

end.
