tableextension 50142 tab6508 extends "Value Entry Relation"
{
    // version NAVW110.00

    fields
    {
        field(50005; "Quantity (Add. Base) (SLABS)"; Decimal)
        {
            DecimalPlaces = 0 : 0;
            Editable = false;
        }
        field(50012; "Base UOM per Add. Base UOM"; Decimal)
        {
        }
        field(50015; "Length (mm)"; Decimal)
        {
            DecimalPlaces = 0 : 0;
        }
        field(50016; "Width (mm)"; Decimal)
        {
            DecimalPlaces = 0 : 0;
        }
        field(50017; "Bar Code"; Code[30])
        {
        }
        field(50018; "Thickness (mm)"; Decimal)
        {
            Editable = false;
        }
        field(50053; "Colour Shade"; Code[2])
        {
        }
    }
}

