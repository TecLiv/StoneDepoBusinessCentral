pageextension 50113 Pag461 extends "Inventory Setup"
{
    layout
    {
        addafter("Prevent Negative Inventory")
        {
            field("Daily Stock Ledger E-Mail ID"; "Daily Stock Ledger E-Mail ID")
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