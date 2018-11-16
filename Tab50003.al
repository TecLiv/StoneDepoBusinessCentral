table 50104 "Availability By Lot"
{

    fields
    {
        field(1; "Product No."; Code[20])
        {
            Editable = false;
        }
        field(2; "Location Code"; Code[10])
        {
            Caption = 'Location';
            Editable = false;
        }
        field(3; "Lot No."; Code[10])
        {
            Editable = false;
        }
        field(4; Description; Text[50])
        {
            Caption = 'Product Name';
            Editable = false;
        }
        field(5; "Quantity (SQM)"; Decimal)
        {
            Editable = false;
        }
        field(6; "Qty. (SLABS)"; Decimal)
        {
            DecimalPlaces = 0 : 0;
            Editable = false;
        }
        field(8; Shade; Code[2])
        {
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Product No.", "Location Code", "Lot No.")
        {
        }
    }

    fieldgroups
    {
    }
}

