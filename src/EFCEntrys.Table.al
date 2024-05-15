table 70305 EFCEntrys
{
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; EFCEntryCode; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; EFCEntryDate; DateTime)
        {
            Caption = 'Entry Date';
            DataClassification = CustomerContent;
        }
        field(3; EFCEntryTime; Time)
        {
            Caption = 'Entry Time';
            DataClassification = CustomerContent;
        }
        field(4; EFCPlantationCode; Code[20])
        {
            Caption = 'Plantation Code';
            DataClassification = CustomerContent;
            TableRelation = EFCPlantations;

            trigger OnValidate()
            begin
              CopiData(EFCPlantationCode);
            end;
        }
        field(5; EFCVarietyCode; Code[20])
        {
            Caption = 'Variety Code';
            DataClassification = CustomerContent;
        }
        field(6; EFCVarietyDescription; Text[100])
        {
            Caption = 'Variety Description';
            DataClassification = CustomerContent;
        }
        field(7; EFCVendorCode; Code[20])
        {
            Caption = 'Vendor Code';
            DataClassification = CustomerContent;
        }
        field(8; EFCVendorName; Text[100])
        {
            Caption = 'Vendor Name';
            DataClassification = CustomerContent;
            TableRelation = Vendor;
        }
        field(9; EFCWarehouseCode; Code[20])
        {
            Caption = 'Warehouse Code';
            DataClassification = CustomerContent;
            TableRelation = Location;
        }
        field(10; EFCCarrierCode; Code[20])
        {
            Caption = 'Carrier Code';
            DataClassification = CustomerContent;
            TableRelation = "Shipping Agent";
        }
        field(11; EFCCarrierDescription; Text[100])
        {
            Caption = 'Carrier Description';
            DataClassification = CustomerContent;
        }
        field(12; EFCWeightUnitCode; Code[20])
        {
            Caption = 'Weight Unit Code';
            DataClassification = CustomerContent;
            TableRelation = "Unit of Measure";
        }
        field(13; EFCInputUnits; Decimal)
        {
            Caption = 'Input Units';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; EFCEntryCode)
        {
            Clustered = true;
        }
    }
    procedure CopiData(PlanationCode: Code[20])
    var
        Plantation: Record EFCPlantations;
        Entry: Record EFCEntrys;
    begin
        Plantation.GET(PlanationCode);
        if not Plantation.IsEmpty then begin
            Entry.EFCVendorCode := Plantation.EFCVendorCode;
            Entry.EFCVarietyCode := Plantation.EFCVarietyCode;
            Entry.MODIFY();
        end;
    end;
}
