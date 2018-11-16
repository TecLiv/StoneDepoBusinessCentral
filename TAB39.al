tableextension 50104 tab39 extends "Purchase Line"
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {
        modify(Description)
        {
            Caption = 'Product Name';
        }
        modify("No.")
        {
            trigger OnAfterValidate()
            var
                PurHeader: Record "Purchase Header";
            begin
                if PurHeader.Get("Document Type", "Document No.") then begin
                    "Container No." := PurHeader."Container No.";
                    "Container Status" := PurHeader."Container Status";
                end;
            end;
        }

        field(50000; "Length (mm)"; Decimal)
        {
            DecimalPlaces = 0 : 0;
            Editable = false;

            trigger OnValidate()
            begin
                CalculateCubage;
            end;
        }
        field(50001; "Width (mm)"; Decimal)
        {
            DecimalPlaces = 0 : 0;
            Editable = false;

            trigger OnValidate()
            begin
                CalculateCubage;
            end;
        }
        field(50002; Height; Decimal)
        {
            DecimalPlaces = 0 : 0;

            trigger OnValidate()
            begin
                //CalculateCubage;
            end;
        }
        field(50003; Cubage; Decimal)
        {
        }
        field(50004; "SQM/Unit"; Decimal)
        {
            Editable = false;
        }
        field(50005; "Quantity / (SLABS)"; Decimal)
        {
            DecimalPlaces = 0 : 0;

            trigger OnValidate()
            begin
                /*
                VALIDATE(Quantity,("Avg. Qty. per Add. Base UOM" * "Quantity / (SLABS)"));
                VALIDATE("Direct Unit Cost");
                //VALIDATE(CBM,ROUND(((("Length (mm)" * "Width (mm)" * "Thickness (mm)") / 1000000000)),0.00001,'=') * Quantity) ;
                CBM := ROUND(("Piece CBM" * "Quantity / (SLABS)"),0.00001,'=');
                */

            end;
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
        field(50019; "Piece CBM"; Decimal)
        {
            DecimalPlaces = 5 : 5;
            Editable = false;
        }
        field(50020; CBM; Decimal)
        {
            DecimalPlaces = 5 : 5;
            Editable = false;
        }
        field(50021; "Order Quantity"; Decimal)
        {
            Description = 'DSJS';
        }
        field(50022; "Qty. in SQM"; Decimal)
        {
            Description = 'DSJS';
            Editable = false;
        }
        field(50023; "Qty. To Receive SQM"; Decimal)
        {
            Description = 'DSJS';
            Editable = true;
        }
        field(50024; "Qty. Received (SLABS)"; Decimal)
        {
            DecimalPlaces = 0 : 0;
            Description = 'DSJS';
            Editable = false;
        }
        field(50025; "Last Purchase Price"; Decimal)
        {
            Editable = false;
        }
        field(80006; "Free Supply"; Boolean)
        {
        }
        field(80007; "Container No."; Code[11])
        {
            Caption = 'Container No.';
            Editable = false;
        }
        field(80008; "Container Status"; Option)
        {
            Caption = 'Container Status';
            Editable = false;
            OptionCaption = 'Open,In Transit,Received';
            OptionMembers = Open,"In Transit",Received;
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
        field(90106; "Packing Description"; Text[100])
        {
        }
        field(90107; "Packing Quantity"; Decimal)
        {
            CalcFormula = Sum ("Sales Packing List"."Total Packed Quantity" WHERE ("Document Type" = FIELD ("Document Type"),
                                                                                  "Document No." = FIELD ("Document No."),
                                                                                  "Document Line No." = FIELD ("Line No.")));
            Editable = false;
            FieldClass = FlowField;
        }
    }
    local procedure "DS-START"()
    begin
    end;

    local procedure CalculateCubage()
    var
        ItemRec: Record Item;
    begin
        TESTFIELD(Type, Type::Item);
        ItemRec.GET("No.");

        IF ItemRec."Dimension Mandatory" = TRUE THEN
            Cubage := ROUND((("Length (mm)" * "Width (mm)") / 1000000), 0.01, '=');
    end;

    var
        StandardText: Record "Standard Text";
        FixedAsset: Record "Fixed Asset";
        PrepmtMgt: Codeunit "Prepayment Mgt.";
        TypeHelper: Codeunit "Type Helper";
        "DS-START-": Integer;
        ItemUnitofMeasure: Record "Item Unit of Measure";
        ItemUnitofMeasure2: Record "Item Unit of Measure";


    var
        ApplicationAreaSetup: Record "Application Area Setup";

    var
        ItemNoFieldCaptionTxt: Label 'Item';
        CannotBeNegativeErr: Label 'The %1 field cannot be negative on the purchase line.', Comment = '%1 - Field Caption';
        PurchInvLine: Record "Purch. Inv. Line";
}

