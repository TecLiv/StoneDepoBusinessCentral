tableextension 50122 tab115 extends "Sales Cr.Memo Line"
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {
        field(50000; Length; Decimal)
        {
            Editable = false;
        }
        field(50001; Width; Decimal)
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
        field(50005; "Quantity (Add. Base)"; Decimal)
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
            Editable = false;
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

    }


    //Unsupported feature: Code Modification on "GetCaptionClass(PROCEDURE 34)".

    //procedure GetCaptionClass();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetHeader;
    CASE FieldNumber OF
      FIELDNO("No."):
        EXIT(STRSUBSTNO('3,%1',GetFieldCaption(FieldNumber)));
      ELSE BEGIN
        IF SalesCrMemoHeader."Prices Including VAT" THEN
          EXIT('2,1,' + GetFieldCaption(FieldNumber));
        EXIT('2,0,' + GetFieldCaption(FieldNumber));
      END
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
        BEGIN
          IF ApplicationAreaSetup.IsFoundationEnabled THEN
            EXIT(STRSUBSTNO('3,%1',ItemNoFieldCaptionTxt));
        EXIT(STRSUBSTNO('3,%1',GetFieldCaption(FieldNumber)));
        END;
    #5..10
    */
    //end;

    var
        ApplicationAreaSetup: Record "Application Area Setup";

    var
        ItemNoFieldCaptionTxt: Label 'Item No.';
}

