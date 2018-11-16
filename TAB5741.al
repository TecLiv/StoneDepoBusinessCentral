tableextension 50107 tab5741 extends "Transfer Line"
{
    // version NAVW113.00

    fields
    {

        //Unsupported feature: Code Modification on ""Item No."(Field 3).OnValidate".

        //trigger "(Field 3)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD("Quantity Shipped",0);
        IF CurrFieldNo <> 0 THEN
          TestStatusOpen;
        #4..32
        VALIDATE(Quantity,xRec.Quantity);
        "Item Category Code" := Item."Item Category Code";
        "Product Group Code" := Item."Product Group Code";

        CreateDim(DATABASE::Item,"Item No.");
        DimMgt.UpdateGlobalDimFromDimSetID("Dimension Set ID","Shortcut Dimension 1 Code","Shortcut Dimension 2 Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..35
        //##
        "Avg. Qty. per Add. Base UOM" := Item."Piece SQM";
        "Dim. UOM Code" := Item."Dim. UOM Code";
        ItemUnitofMeasure.RESET;
        ItemUnitofMeasure.SETRANGE("Item No.",Item."No.");
        ItemUnitofMeasure.SETRANGE(Code,Item."Base Unit of Measure");
        IF ItemUnitofMeasure.FINDFIRST THEN BEGIN
          Height := ItemUnitofMeasure.Height;
        END;

        ItemUnitofMeasure2.RESET;
        ItemUnitofMeasure2.SETRANGE("Item No.",Item."No.");
        ItemUnitofMeasure2.SETRANGE(Code,Item."Dim. UOM Code");
        IF ItemUnitofMeasure2.FINDFIRST THEN BEGIN
          "Dim. Qty per UOM" := ItemUnitofMeasure2."Qty. per Unit of Measure";
        END;
        //##
        CreateDim(DATABASE::Item,"Item No.");
        DimMgt.UpdateGlobalDimFromDimSetID("Dimension Set ID","Shortcut Dimension 1 Code","Shortcut Dimension 2 Code");
        */
        //end;
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

            trigger OnValidate()
            begin
                VALIDATE(Quantity, (ROUND(((Length * Width) / 1000000), 0.01, '=') * "Quantity (Add. Base) (SLABS)"));
            end;
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

    var
        ItemUnitofMeasure: Record "Item Unit of Measure";
        ItemUnitofMeasure2: Record "Item Unit of Measure";
}

