tableextension 50137 Tab5107 extends "Sales Header Archive"
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {
        field(50018; "Thickness (mm)"; Decimal)
        {
            Editable = false;

            trigger OnValidate()
            begin
                /*
                IF (("Length (mm)" <> 0) AND ("Width (mm)" <> 0) AND ("Thickness (mm)" <> 0)) THEN
                  "Piece CBM" := ROUND((("Length (mm)" * "Width (mm)" * "Thickness (mm)") / 1000000000),0.00001,'=');
                */

            end;
        }
        field(55556; "Current Status"; Option)
        {
            OptionCaption = 'Open,Sales Approval,Warehouse,Partial Shipped,Shipped';
            OptionMembers = Open,"Sales Approval",Warehouse,"Partial Shipped",Shipped;
            Editable = false;
        }
    }
}

