tableextension 50128 tab125 extends "Purch. Cr. Memo Line"
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {
        modify(Description)
        {
            Caption = 'Product Name';
        }
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
        field(50023; "Qty. To Receive SQM"; Decimal)
        {
            Description = 'DSJS';
            Editable = false;
        }
        field(50024; "Qty. Received (SLABS)"; Decimal)
        {
            DecimalPlaces = 0 : 0;
            Description = 'DSJS';
            Editable = false;
        }
        field(80006; "Free Supply"; Boolean)
        {
        }
        field(80007; "Containeer No."; Code[11])
        {
            Editable = false;
        }
        field(80008; "Containeer Status"; Option)
        {
            OptionCaption = 'Open,In-Transist,Received';
            OptionMembers = Open,"In-Transist",Received;
            Editable = false;
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
        field(90106; "Packing Description"; text[100])
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
    IF NOT PurchCrMemoHeader.GET("Document No.") THEN
      PurchCrMemoHeader.INIT;
    CASE FieldNumber OF
      FIELDNO("No."):
        EXIT(STRSUBSTNO('3,%1',GetFieldCaption(FieldNumber)));
      ELSE BEGIN
        IF PurchCrMemoHeader."Prices Including VAT" THEN
          EXIT('2,1,' + GetFieldCaption(FieldNumber));
        EXIT('2,0,' + GetFieldCaption(FieldNumber));
      END
    END;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..4
        BEGIN
          IF ApplicationAreaSetup.IsFoundationEnabled THEN
            EXIT(STRSUBSTNO('3,%1',ItemNoFieldCaptionTxt));
        EXIT(STRSUBSTNO('3,%1',GetFieldCaption(FieldNumber)));
        END;
    #6..11
    */
    //end;

    var
        ApplicationAreaSetup: Record "Application Area Setup";

    var
        ItemNoFieldCaptionTxt: Label 'Item No.';
}

