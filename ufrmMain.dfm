object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'People'
  ClientHeight = 530
  ClientWidth = 484
  Color = clBtnFace
  Constraints.MaxWidth = 500
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object ctrlstPeople: TControlList
    Left = 0
    Top = 0
    Width = 484
    Height = 530
    Align = alClient
    ItemCount = 200
    ItemIndex = 0
    ItemMargins.Left = 0
    ItemMargins.Top = 0
    ItemMargins.Right = 0
    ItemMargins.Bottom = 0
    ParentColor = False
    TabOrder = 0
    object lblFullName: TLabel
      Left = 16
      Top = 16
      Width = 112
      Height = 19
      Caption = 'Mark Anderson '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lblDOB: TLabel
      Left = 374
      Top = 16
      Width = 59
      Height = 16
      Alignment = taRightJustify
      Caption = '11/1/2021'
    end
    object lblGender: TLabel
      Left = 16
      Top = 41
      Width = 50
      Height = 16
      Caption = 'Gender: '
    end
    object lblSalary: TLabel
      Left = 396
      Top = 38
      Width = 37
      Height = 19
      Alignment = taRightJustify
      Caption = '$-33'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 196
    Top = 229
    object LinkGridToDataSourcePrototypeBindSource1: TLinkGridToDataSource
      DataSource = PrototypeBindSource1
      GridControl = ctrlstPeople
      Columns = <>
    end
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = PrototypeBindSource1
      FieldName = 'Salary'
      Component = lblSalary
      CustomFormat = #39'$'#39' + %s'
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = PrototypeBindSource1
      FieldName = 'Gender'
      Component = lblGender
      CustomFormat = #39'Gender: '#39' + %s'
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption3: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = PrototypeBindSource1
      FieldName = 'DOB'
      Component = lblDOB
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption4: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = PrototypeBindSource1
      FieldName = 'FullName'
      Component = lblFullName
      CustomFormat = '%s + '#39' '#39
      ComponentProperty = 'Caption'
    end
  end
  object PrototypeBindSource1: TPrototypeBindSource
    AutoActivate = True
    AutoPost = False
    FieldDefs = <
      item
        Name = 'FullName'
        Generator = 'ContactNames'
        ReadOnly = False
      end
      item
        Name = 'DOB'
        FieldType = ftDate
        Generator = 'Date'
        ReadOnly = False
      end
      item
        Name = 'Gender'
        FieldType = ftChar
        ReadOnly = False
      end
      item
        Name = 'Salary'
        FieldType = ftInteger
        Generator = 'Integers'
        ReadOnly = False
      end>
    ScopeMappings = <>
    OnCreateAdapter = PrototypeBindSource1CreateAdapter
    Left = 264
    Top = 272
  end
end
