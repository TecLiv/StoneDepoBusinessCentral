tableextension 50115 tab32 extends "Item Ledger Entry"
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {
        field(50005; "Quantity (Add. Base) (SLABS)"; Decimal)
        {
            DecimalPlaces = 0 : 0;
        }
        field(50012; "Qty. in SQM"; Decimal)
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
        field(50050; "Warehouse Document No."; Code[20])
        {
            Editable = false;
        }
        field(50051; "Warehouse Document Line No."; Integer)
        {
            Editable = false;
        }
        field(50052; "Tracking Lot No."; Code[20])
        {
        }
        field(50053; "Colour Shade"; Code[2])
        {
        }
        field(90101; "Category Code"; Code[2])
        {
        }
        field(90102; "Product Type"; Code[2])
        {
        }
        field(90103; Finish; Code[3])
        {
        }
        field(90104; "Product Name"; Code[2])
        {
        }
    }
    keys
    {

    }
}

