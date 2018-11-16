table 50111 "Inbound Sales Line"
{
    // version DS


    fields
    {
        field(1; "Order No."; Code[20])
        {
        }
        field(2; "Line No."; Integer)
        {
        }
        field(3; "Parent Line No."; Integer)
        {
        }
        field(4; "Item Type"; Option)
        {
            OptionCaption = ' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item)';
            OptionMembers = " ","G/L Account",Item,Resource,"Fixed Asset","Charge (Item)";
        }
        field(5; "Item No."; Code[20])
        {
        }
        field(6; Description; Text[100])
        {
        }
        field(7; Quantity; Decimal)
        {
        }
        field(8; "Unit Amount"; Decimal)
        {
        }
        field(9; "Original Unit Price"; Decimal)
        {
        }
        field(10; "Discount Amount"; Decimal)
        {
        }
        field(11; "Tax Amount"; Decimal)
        {
        }
        field(12; "Amount Paid"; Decimal)
        {
        }
        field(13; "Paid Price"; Decimal)
        {
        }
        field(14; "Tax Percent"; Decimal)
        {
        }
        field(15; "Order Status"; Option)
        {
            OptionCaption = 'COD_Order,PGOrder,processing,complete,holded,canceled,Undelivered';
            OptionMembers = COD,Prepaid;
        }
    }

    keys
    {
        key(Key1; "Order No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

