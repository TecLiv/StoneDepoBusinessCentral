tableextension 50132 Tab5805 extends "Item Charge Assignment (Purch)"
{
    fields
    {
        field(50000; "ILE Rem. Qty."; decimal)
        {
            Description = 'DS-NY';
            Editable = false;
            DecimalPlaces = 0 : 5;
        }
        field(50001; "Applies-to Doc. Line Qty."; Decimal)
        {
            Description = 'DS-NY';
            DecimalPlaces = 0 : 5;
            AutoFormatType = 1;
        }
    }

    var
        myInt: Integer;
}