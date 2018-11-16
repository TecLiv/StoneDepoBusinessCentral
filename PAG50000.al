page 50100 "Process Master List"
{
    PageType = List;
    SourceTable = "Process Master";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document Type"; "Document Type")
                {
                    Editable = false;
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Document Sub Type"; "Document Sub Type")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Code; Code)
                {
                    Caption = 'Description';
                    ApplicationArea = All;
                }
                field("Item Code"; "Item Code")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    Caption = 'Product Name';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}

