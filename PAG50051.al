page 50124 "ItemSalePurchase-OK"
{
    Editable = false;
    PageType = List;
    SourceTable = "Process Only Buffer2";
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
                    ApplicationArea = All;
                }
                field("Document Subtype"; "Document Subtype")
                {
                    ApplicationArea = All;
                }
                field(Code; Code)
                {
                    ApplicationArea = All;
                }
                field(Date; Date)
                {
                    ApplicationArea = All;
                }
                field("Line No."; "Line No.")
                {
                    ApplicationArea = All;
                }
                field("Container No."; "Container No.")
                {
                    ApplicationArea = All;
                }
                field("Decimal-A"; "Decimal-A")
                {
                    ApplicationArea = All;
                }
                field("Decimal-B"; "Decimal-B")
                {
                    ApplicationArea = All;
                }
                field("Decimal-C"; "Decimal-C")
                {
                    ApplicationArea = All;
                }
                field("Decimal-D"; "Decimal-D")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Order No."; "Order No.")
                {
                    ApplicationArea = All;
                }
                field("Column Name"; "Column Name")
                {
                    ApplicationArea = All;
                }
                field("Decimal-Total"; "Decimal-Total")
                {
                    ApplicationArea = All;
                }
                field("Ending Date"; "Ending Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}

