table 50103 "Showroom Details"
{
    fields
    {
        field(1; "Document No."; Code[20])
        {
        }
        field(2; "Line No."; Integer)
        {
        }
        field(3; "Customer Code"; Code[20])
        {
        }
        field(4; Name; Text[50])
        {
        }
        field(5; "Item No."; Code[20])
        {
        }
        field(6; Description; Text[50])
        {
        }
        field(7; City; Text[30])
        {
        }
        field(8; "Post Code"; Code[20])
        {
        }
        field(9; "Phone No."; Text[30])
        {
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

