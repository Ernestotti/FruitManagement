page 70311 EFCEntryCard
{
  PageType = Card;
  ApplicationArea = All;
  UsageCategory = None;
  SourceTable = EFCEntrys;
  Caption = 'EFC Entry Card';

  
  layout
  {
    area(Content)
    {
      group(Entry)
      {
        field(EntryCode;Rec.EFCEntryCode)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Entry Code field.';
        }
        field(EntryDate;Rec.EFCEntryDate)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Entry Date field.';
        }
        field(EntryTime;Rec.EFCEntryTime)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Entry Time field.';
        }
        field(PlantationCode;Rec.EFCPlantationCode)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Plantation Code field.';
        }
        field(VarietyCode;Rec.EFCVarietyCode)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Variety Code field.';
        }
        field(VarietyDescription;Rec.EFCVarietyDescription)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Variety Description field.';
        }
        field(VendorCode;Rec.EFCVendorCode)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Vendor Code field.';
        }
        field(VendorName;Rec.EFCVendorName)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Vendor Name field.';
        }
        field(WarehouseCode;Rec.EFCWarehouseCode)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Warehouse Code field.';
        }
        field(CarrierCode;Rec.EFCCarrierCode)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Carrier Code field.';
        }
        field(CarrierDescription;Rec.EFCCarrierDescription)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Carrier Description field.';
        }
        field(WeightUnitCode;Rec.EFCWeightUnitCode)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Weight Unit Code field.';
        }
        field(InputUnits;Rec.EFCInputUnits)
        {
          ApplicationArea = All;
          ToolTip = 'Specifies the value of the Inputs Units field.';
        }
      }
    }
  }
}