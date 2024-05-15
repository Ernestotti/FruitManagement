page 70313 EFCFruitManagementRoleCenter
{
  PageType = RoleCenter;
  ApplicationArea = All;
  UsageCategory = None;
  
  layout
  {
    area(RoleCenter)
    {
      part(HeadLineOrderProcessor; "Headline RC Order Processor")
      {
        ApplicationArea = All;
      }
      part(O365CustomerActivity; "O365 Customer Activity Page")
      {
        ApplicationArea = All;
      }
      part(O365Activities; "O365 Activities")
      {
        ApplicationArea = All;
      }
    }
  }
  
  actions
  {
    area(Sections)
    {
      group(MasterData)
      {
        Caption = 'Master Data';
        Image = RegisteredDocs;
        action(FruitVarieties)
        {
          Caption = 'Fruit Variety';
          ApplicationArea = All;
          RunObject = page EFCFruitVarieties;
        }
        action(Plots)
        {
          Caption = 'Plots';
          ApplicationArea = All;
          RunObject = page EFCPlotsList;
        }
        action(Plantation)
        {
          Caption = 'Plantation';
          ApplicationArea = All;
          RunObject = page EFCPlantationsList;
        }
      }
      group(Documents)
      {
        action(Entrys)
        {
          Caption = 'Entrys';
          ApplicationArea = All;
          RunObject = page EFCEntrysList;
        }
      }
    }
    area(Embedding)
    {
      action(eFruitVarieties)
      {
         Caption = 'Fruit Variety';
          ApplicationArea = All;
          RunObject = page EFCFruitVarieties;
      }
      action(ePlots)
        {
          Caption = 'Plots';
          ApplicationArea = All;
          RunObject = page EFCPlotsList;
        }
      action(ePlantation)
        {
          Caption = 'Plantation';
          ApplicationArea = All;
          RunObject = page EFCPlantationsList;
        }
      action(eEntrys)
        {
          Caption = 'Entrys';
          ApplicationArea = All;
          RunObject = page EFCEntrysList;
        }
    }
  }
}