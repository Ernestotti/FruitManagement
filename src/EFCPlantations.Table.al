table 70304 EFCPlantations
{

    DataClassification = CustomerContent;
    
    fields
    {
        field(1; EFCPlantationCode; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; EFCPlotCode; Code[20])
        {
            Caption = 'Plots Code';
            DataClassification = CustomerContent;
            TableRelation = EFCPlots;

            trigger OnValidate()
            begin
              CalcFields(EFCVendorCode)
            end;
        }
        field(3; EFCDescriptionPlantation; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(4; EFCVendorCode; Code[20])
        {
            Caption = 'Vendor Code';
            FieldClass = FlowField;
            CalcFormula = lookup(EFCPlots.EFCVendorCode where(EFCCode = field(EFCPlotCode)));
            Editable = false;
        }
        field(5; EFCVarietyCode; Code[20])
        {
            Caption = 'Variety Code';
            DataClassification = CustomerContent;
            TableRelation = EFCFruitVariety;

            trigger OnValidate()
            begin
              CalcFields(EFCVarietyDescription)
            end;
        }
        field(6; EFCVarietyDescription; Text[100])
        {
            Caption = 'Variety Description';
            FieldClass = FlowField;
            CalcFormula = lookup(EFCFruitVariety.EFCVarietyDescription where(EFCVarietyCode = field(EFCVarietyCode)));
            Editable = false;
        }
        field(7; EFCDischargeDate; DateTime)
        {
            Caption = 'Discharge Date';
            DataClassification = CustomerContent;
        }
        field(8; EFCStatePlantations; Enum EfcEnumStatePlantations)
        {
            Caption = 'State Plantations';
            DataClassification = CustomerContent;
        }
        field(9; EFCSurface; Decimal)
        {
            Caption = 'Surface';
            DataClassification = CustomerContent;
        }
        field(10; EFCSurfaceUnitCode; Code[20])
        {
            Caption = 'Surface Unit Code';
            DataClassification = CustomerContent;
            TableRelation = "Unit of Measure";
        }
    }
    keys
    {
        key(PK; EFCPlantationCode)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; EFCPlantationCode, EFCPlotCode, EFCDescriptionPlantation, EFCVendorCode, EFCVarietyCode, EFCVarietyDescription)
        {
        }
    }
}
