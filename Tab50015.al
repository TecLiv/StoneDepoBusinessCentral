table 50113 "Process Only Buffer"
{

    fields
    {
        field(1; "Document Type"; Option)
        {
            Editable = false;
            OptionCaption = ' ,Purchase,Sales,Inventory,All';
            OptionMembers = " ",Purchase,Sales,Inventory,All;
        }
        field(2; "Document Subtype"; Option)
        {
            Editable = false;
            OptionCaption = ' ,Container-Availability,B';
            OptionMembers = " ","Container-Availability",B;
        }
        field(3; "Code"; Code[50])
        {
            Editable = true;
        }
        field(4; Date; Date)
        {
            Editable = false;
        }
        field(5; "Line No."; Integer)
        {
        }
        field(9; "Container No."; Code[11])
        {
            Editable = false;
        }
        field(10; "Decimal-A"; Decimal)
        {
        }
        field(11; "Decimal-B"; Decimal)
        {
        }
        field(12; "Decimal-C"; Decimal)
        {
        }
        field(13; "Decimal-D"; Decimal)
        {
        }
        field(14; "Decimal-E"; Decimal)
        {
        }
        field(15; "Decimal-F"; Decimal)
        {
        }
        field(16; "Decimal-G"; Decimal)
        {
        }
        field(20; Description; Text[50])
        {
        }
        field(21; "Order No."; Code[20])
        {
        }
        field(50; "Column Name"; Text[50])
        {
            Editable = false;
        }
        field(100; "Decimal-Total"; Decimal)
        {
        }
        field(101; "Ending Date"; Date)
        {
        }
        field(102; "Vendor Invoice No."; Code[50])
        {
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document Subtype", "Code", Date, "Container No.", "Line No.")
        {
        }
        key(Key2; "Document Type", "Document Subtype", "Code", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

