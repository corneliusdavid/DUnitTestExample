unit uPersonClass;

interface


type
  TPerson = class
  private
    FFirstName: string;
    FBirthDate: TDate;
    FLastName: string;
    FGender: Char;
    FSalary: Integer;
    function GetBirthDate: TDate;
    function GetFirstName: string;
    function GetGender: Char;
    function GetLastName: string;
    function GetSalary: Integer;
    procedure SetBirthDate(const Value: TDate);
    procedure SetFirstName(const Value: string);
    procedure SetGender(const Value: Char);
    procedure SetLastName(const Value: string);
    procedure SetSalary(const Value: Integer);
    function GetFullName: string;
  public
    property FirstName: string read GetFirstName write SetFirstName;
    property LastName: string read GetLastName write SetLastName;
    property FullName: string read GetFullName;
    property BirthDate: TDate read GetBirthDate write SetBirthDate;
    property Gender: Char read GetGender write SetGender;
    property Salary: Integer read GetSalary write SetSalary;
  end;


implementation

uses
  System.SysUtils;

{ TPerson }

function TPerson.GetBirthDate: TDate;
begin
  Result := FBirthDate;
end;

function TPerson.GetFirstName: string;
begin
  Result := FFirstName;
end;

function TPerson.GetFullName: string;
begin
  Result := FLastName + ', ' + FFirstName;
end;

function TPerson.GetGender: Char;
begin
  Result := FGender;
end;

function TPerson.GetLastName: string;
begin
  Result := UpperCase(FLastName);
end;

function TPerson.GetSalary: Integer;
begin
  Result := FSalary;
end;

procedure TPerson.SetBirthDate(const Value: TDate);
begin
  FBirthDate := Value;
end;

procedure TPerson.SetFirstName(const Value: string);
begin
  FFirstName := Value;
end;

procedure TPerson.SetGender(const Value: Char);
begin
  FGender := Value;
end;

procedure TPerson.SetLastName(const Value: string);
begin
  FLastName := Value;
end;

procedure TPerson.SetSalary(const Value: Integer);
begin
  FSalary := Value;
end;

end.
