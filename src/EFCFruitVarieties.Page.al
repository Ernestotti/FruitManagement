page 70306 EFCFruitVarieties
{
  PageType = List;
  ApplicationArea = All;
  UsageCategory = Lists;
  SourceTable = EFCFruitVariety;
  Caption = 'EFC Fruit Varieties';

  
  layout
  {
    area(Content)
    {
      repeater(General)
      {
        Caption = 'Genreral';
        field(EFCCode; Rec.EFCVarietyCode)
        {
          ApplicationArea = All;
          Caption = 'Code';
          ToolTip = 'Specifies the value of the Code field.';
        }
        field(EFCDescription; Rec.EFCVarietyDescription)
        {
          ApplicationArea = All;
          Caption = 'Description';
          ToolTip = 'Specifies the value of the Description field.';
        }
        field(EFCEstate; Rec.EFCEstate)
        {
          ApplicationArea = All;
          Caption = 'State';
          ToolTip = 'Specifies the value of the State field.';
        }
      }
    }
  }
}