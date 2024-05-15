report 70315 EFCEntryFruitbyVendor
{
  Caption = 'EFC Entry Fruit by Vendor';
  UsageCategory = ReportsAndAnalysis;
  ApplicationArea = All;
  DefaultRenderingLayout = EFCEntryFruitbyVendor;
  
  dataset
  {
    dataitem(Entrys; EFCEntrys)
    {
      column(EntryCode;EFCEntryCode)
      {
        IncludeCaption = true;
      }
      column(EntryDate; EFCEntryDate)
      {
        IncludeCaption = true;
      }
      column(EFCVarietyCode;EFCVarietyCode)
      {
        IncludeCaption = true;
      }
      column(PlantationCode;EFCPlantationCode)
      {
        IncludeCaption = true;
      }
      column(VendorName;EFCVendorName)
      {
        IncludeCaption = true;
      }
      column(InputUnits;EFCInputUnits)
      {
        IncludeCaption = true;
      }
      column(WeightUnitCode;EFCWeightUnitCode)
      {
        IncludeCaption = true;
      }
    }
  }
  
  rendering
  {
    layout(EFCEntryFruitbyVendor)
    {
      Caption = 'EFC Entry Fruit by Vendor';
      Type = RDLC;
      LayoutFile = 'src/Layouts/EFCEntryFruitbyVendor.rdl';
    }
  }
}