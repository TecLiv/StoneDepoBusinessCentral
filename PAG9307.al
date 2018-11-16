pageextension 50110 Pag9307 extends "Purchase Order List"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addafter(Reopen)
        {
            action("Stock Availability")
            {
                ApplicationArea = All;
                RunObject = report "Stock Availability";
                Promoted = true;
                Image = ItemAvailabilitybyPeriod;
                PromotedCategory = Report;

            }
        }
    }

    var
        myInt: Integer;
}