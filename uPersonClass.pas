unit uPersonClass;

interface

uses
  System.Generics.Collections;

type
  TPerson = class
  private
    FFirstName: string;
    FBirthDate: TDate;
    FLastName: string;
    FGender: Char;
    FSalary: Integer;
  public
    property FirstName: string read FFirstName write FFirstName;
    property LastName: string read FLastName write FLastName;
    property BirthDate: TDate read FBirthDate write FBirthDate;
    property Gender: Char read FGender write FGender;
    property Salary: Integer read FSalary write FSalary;
  end;


implementation

end.
