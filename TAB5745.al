tableextension 50149 tab5745 extends "Transfer Shipment Line"
{
    // version NAVW111.00

    fields
    {
        field(50000; Length; Decimal)
        {

            trigger OnValidate()
            begin
                //CalculateCubage;
            end;
        }
        field(50001; Width; Decimal)
        {

            trigger OnValidate()
            begin
                //CalculateCubage;
            end;
        }
        field(50002; Height; Decimal)
        {

            trigger OnValidate()
            begin
                //CalculateCubage;
            end;
        }
        field(50003; Cubage; Decimal)
        {
            Caption = 'Cubage1';
        }
        field(50004; "Avg. Qty. per Add. Base UOM"; Decimal)
        {
        }
        field(50005; "Quantity (Add. Base) (SLABS)"; Decimal)
        {
            DecimalPlaces = 0 : 0;
            Editable = false;
        }
        field(50014; "Dim. UOM Code"; Code[10])
        {
            Editable = false;
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(50015; "Dim. Qty per UOM"; Decimal)
        {
            DecimalPlaces = 3 : 3;
            Editable = false;
        }
    }
}

