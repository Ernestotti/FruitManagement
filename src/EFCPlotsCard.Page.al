page 70314 EFCPlotsCard
{
  PageType = Card;
  ApplicationArea = All;
  UsageCategory = None;
  SourceTable = EFCPlots;
  Caption = 'EFC Plot Card';
  
  layout
  {
    area(Content)
    {
      group(Plot)
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
      group(GroupName)
      {
        part(Lines; EFCPlotsSubpage)
            {
                SubPageLink = EFCPlantationCode = field(EFCCode);
                ApplicationArea = All;
            }
      }
    }
  }
}