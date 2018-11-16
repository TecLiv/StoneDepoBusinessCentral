tableextension 50110 tab7321 extends "Warehouse Shipment Line"
{
    // version NAVW113.00

    fields
    {
        field(50000; "Length (MM)"; Decimal)
        {
            Caption = 'Length (MM)';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                CalculateCubage;
            end;
        }
        field(50001; "Width (MM)"; Decimal)
        {
            Caption = 'Width (MM)';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                CalculateCubage;
            end;
        }
        field(50002; Height; Decimal)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                CalculateCubage;
            end;
        }
        field(50003; Cubage1; Decimal)
        {
            Caption = 'Cubage1';
            DataClassification = ToBeClassified;
        }
        field(50004; "Avg. Qty. per Add. Base UOM"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50005; "Quantity (Add. Base) (SLABS)"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 0;
        }
        field(50014; "Dim. UOM Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(50015; "Dim. Qty per UOM"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 3 : 3;
            Editable = false;
        }
        field(50016; "Qty. To Ship (SLABS)"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 0;

            trigger OnValidate()
            begin
                VALIDATE("Qty. to Ship", "Qty. To Ship (SLABS)");
            end;
        }
        field(50017; "Qty. To Ship (SQM)"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50018; "Thickness (mm)"; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;

            trigger OnValidate()
            begin
                /*
                IF (("Length (mm)" <> 0) AND ("Width (mm)" <> 0) AND ("Thickness (mm)" <> 0)) THEN
                  "Piece CBM" := ROUND((("Length (mm)" * "Width (mm)" * "Thickness (mm)") / 1000000000),0.00001,'=');
                */

            end;
        }
        field(50200; "Shipment Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }

    local procedure "DS-START"()
    begin
    end;

    local procedure CalculateCubage()
    var
        ItemRec: Record Item;
    begin
        ItemRec.GET("No.");

        IF ItemRec."Dimension Mandatory" = TRUE THEN
            Cubage1 := "Length (MM)" * "Width (MM)" * Height;
    end;
}

