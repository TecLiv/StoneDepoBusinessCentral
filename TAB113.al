tableextension 50121 tab113 extends "Sales Invoice Line"
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {
        modify(Description)
        {
            Caption = 'Product Name';
        }
        field(50000; "Length (mm)"; Decimal)
        {
            Editable = false;
        }
        field(50001; "Width (mm)"; Decimal)
        {
            Editable = false;
        }
        field(50002; Height; Decimal)
        {
            Editable = false;
        }
        field(50003; Cubage; Decimal)
        {
            Editable = false;
        }
        field(50004; "SQM/Unit"; Decimal)
        {
            Editable = false;
        }
        field(50005; "Quantity (Add. Base) (SLABS)"; Decimal)
        {
            Editable = false;
        }
        field(50014; "Dim. UOM Code"; Code[10])
        {
            Editable = false;
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(50015; "Dim. Qty per UOM"; Decimal)
        {
            DecimalPlaces = 3 : 3;
            Editable = false;
        }
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
        field(50601; "Margin $"; Decimal)
        {
            Editable = false;
        }
        field(50602; "Margin Percent Age"; Decimal)
        {
            Editable = false;
        }
        field(50603; "Unit Cost on Item Card"; Decimal)
        {
            Editable = false;
        }
        field(50604; "Total Amount As Per Unit Cost"; Decimal)
        {
            Editable = false;
        }
        field(50605; "Qty. To Ship (SLABS)"; Decimal)
        {
            DecimalPlaces = 0 : 0;
        }
        field(80006; "Free Supply"; Boolean)
        {
        }
        field(90101; "Category Code"; Code[25])
        {
        }
        field(90102; "Product Type"; Code[25])
        {
        }
        field(90103; Finish; Code[25])
        {
        }
        field(90104; "Product Name"; Code[25])
        {
        }
        field(90105; Crates; Integer)
        {
        }
    }
    keys
    {

        //Unsupported feature: Property Insertion (SumIndexFields) on ""Document No.,Line No."(Key)".


        //Unsupported feature: Property Insertion (MaintainSIFTIndex) on ""Document No.,Line No."(Key)".

    }
}

