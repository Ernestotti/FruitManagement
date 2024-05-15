page 70315 EFCPlotsSubpage
{
    ApplicationArea = All;
    Caption = 'EFC Plots Subpage';
    PageType = ListPart;
    SourceTable = EFCPlantations;
    AutoSplitKey = true;
    DelayedInsert = true;
    UsageCategory = None;
    
    layout
    {
        area(content)
        {
            repeater(EFCPlotsSubpage)
            {
                field(PlantationCode;Rec.EFCPlantationCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(PlotCode;Rec.EFCPlotCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Plots Code field.';
                }
                field(Description;Rec.EFCDescriptionPlantation)
                {
                     ApplicationArea = All;
                     ToolTip = 'Specifies the value of the Description field.';
                }
                field(VendorCode;Rec.EFCVendorCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Code field.';
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
                field(DischargeDate;Rec.EFCDischargeDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discharge Date field.';
                    Editable = false;
                }
                field(StatePlantations;Rec.EFCStatePlantations)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the State Plantations field.';
                }
                field(Surface;Rec.EFCSurface)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Surface field.';
                }
                field(SurfaceUnitCode;Rec.EFCSurfaceUnitCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Surface Unit Code field.';
                }
            }
        }
    }
}
