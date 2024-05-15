page 70307 EFCPlotsList
{
  PageType = List;
  ApplicationArea = All;
  UsageCategory = Lists;
  SourceTable = EFCPlots;
  Caption = 'EFC Plots';
  Editable = true;

  layout
  {
    area(Content)
    {
      repeater(General)
      {
        field(Code; Rec.EFCCode)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Code field.';
        }
        field(Description; Rec.EFCDescription)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Description field.';
        }
        field(VendorCode; Rec.EFCVendorCode)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Vendor Code field.';
        }
        field(VendorName; Rec.EFCVendorName)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Vendor Name field.';
        }
      }
    }
  }
}