pageextension 50108 Pag50 extends "Purchase Order"
{
    layout
    {
        modify("No.")
        {
            CaptionML = ENA = 'PO No.', ENU = 'PO No.';
            ApplicationArea = All;
        }
        addafter("Posting Date")
        {
            field("Container No."; "Container No.")
            {
                ApplicationArea = All;
            }
            field("Container Status"; "Container Status")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        addlast(Navigation)
        {
            action("Stock Avialability")
            {
                CaptionML = ENA = 'Stock Availability', ENU = 'Stock Availability';
                ApplicationArea = All;
                RunObject = Report "Stock Availability";
                Promoted = true;
                Image = ItemAvailabilitybyPeriod;
                PromotedCategory = Report;
            }
        }
    }

    var
        myInt: Integer;
}