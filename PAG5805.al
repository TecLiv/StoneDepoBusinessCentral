pageextension 50116 Pag5805 extends "Item Charge Assignment (Purch)"
{
    layout
    {
        addafter(QtyShippedBase)
        {
            field("ILE Rem. Qty."; "ILE Rem. Qty.")
            {
                CaptionML = ENU = 'CBM Qty.', ENA = 'CBM Qty.';
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