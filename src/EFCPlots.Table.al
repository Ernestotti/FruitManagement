table 70302 EFCPlots
{
    
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; EFCCode; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; EFCDescription; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(3; EFCVendorCode; Code[20])
        {
            Caption = 'Vendor Code';
            DataClassification = CustomerContent;
            TableRelation = Vendor;

            trigger OnValidate()
            begin
              CalcFields(EFCVendorName)
            end;
        }
        field(4; EFCVendorName; Text[100])
        {
            Caption = 'Vendor Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Vendor.Name where("No." = field("EFCVendorCode")));
            Editable = false;
        }
    }
    keys
    {
        key(PK; EFCCode)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; EFCCode, EFCDescription, EFCVendorCode, EFCVendorName)
        {
        }
    }
}
