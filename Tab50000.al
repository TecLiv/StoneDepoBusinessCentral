table 50101 "Process Master"
{

    fields
    {
        field(1; "Document Type"; Option)
        {
            OptionCaption = 'Product Type,Finish,Colour,Category,Product Name';
            OptionMembers = "Product Type",Finish,Colour,Category,"Product Name";
        }
        field(2; "Document Sub Type"; Option)
        {
            OptionCaption = 'Product Type,Finish,Colour,Category,Product Name';
            OptionMembers = "Product Type",Finish,Colour,Category,"Product Name";
        }
        field(3; "Code"; Code[25])
        {
        }
        field(4; Description; Text[50])
        {
        }
        field(5; "Item Code"; Code[3])
        {
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document Sub Type", "Code")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(Brick; "Document Type", "Document Sub Type", "Code", "Item Code")
        {
        }
        fieldgroup(DropDown; "Document Type", "Document Sub Type", "Code", "Item Code")
        {
        }
    }
}

