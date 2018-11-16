table 50109 "Posted Purchase Packing List"
{

    fields
    {
        field(2; "Invoice No."; Code[20])
        {
            Caption = 'Invoice No.';
        }
        field(3; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
        field(4; "Line No."; Integer)
        {
        }
        field(11; "Vendor No."; Code[20])
        {
            TableRelation = Customer;
        }
        field(21; "Item No."; Code[20])
        {
            TableRelation = Item;
        }
        field(22; "Item Description"; Text[50])
        {
        }
        field(23; "Packing Description"; Text[100])
        {
        }
        field(25; "Order Quantity"; Decimal)
        {
        }
        field(26; "Outstanding Quantity"; Decimal)
        {
        }
        field(41; "From Parcel No."; Integer)
        {
        }
        field(42; "To Parcel No."; Integer)
        {
        }
        field(43; "Quantity Per Parcel"; Decimal)
        {
        }
        field(44; "No. Of Parcel"; Integer)
        {
        }
        field(45; "Total Packed Quantity"; Decimal)
        {
        }
        field(51; Remarks; Text[50])
        {
        }
        field(52; "Remarks For Custom"; Text[50])
        {
        }
        field(56; "Total Parcel"; Decimal)
        {
        }
        field(61; "Posting Date"; Date)
        {
        }
        field(62; "User ID"; Code[20])
        {
        }
        field(101; "Include In Packing"; Boolean)
        {
        }
    }

    keys
    {
        key(Key1; "Invoice No.")
        {
        }
    }

    fieldgroups
    {
    }
}

