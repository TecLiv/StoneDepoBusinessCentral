pageextension 50117 Pag5806 extends "Purch. Receipt Lines"
{
    layout
    {
        addafter("Unit of Measure Code")
        {
            field("Total Rem. Qty."; "Total Rem. Qty.")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}