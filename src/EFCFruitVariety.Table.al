table 70300 EFCFruitVariety
{
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; EFCVarietyCode; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; EFCVarietyDescription; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(3; EFCEstate; Enum EFCEnumStateVariety)
        {
            Caption = 'Estate';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; EFCVarietyCode)
        {
            Clustered = true;
        }
    }

    fieldgroups
  {
    fieldgroup(DropDown; EFCVarietyCode, EFCVarietyDescription, EFCEstate) { }
  }
}
