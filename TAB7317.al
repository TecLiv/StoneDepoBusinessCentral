tableextension 50108 tab7317 extends "Warehouse Receipt Line"
{
    // version NAVW113.00

    fields
    {
        modify(Description)
        {
            Caption = 'Product Name';
        }

        //Unsupported feature: Code Modification on ""Qty. to Receive"(Field 21).OnValidate".

        //trigger  to Receive"(Field 21)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Qty. to Receive" > "Qty. Outstanding" THEN
          ERROR(
            Text002,
        #4..15
        "Qty. to Cross-Dock (Base)" := 0;
        "Qty. to Receive (Base)" := CalcBaseQty("Qty. to Receive");

        Item.CheckSerialNoQty("Item No.",FIELDCAPTION("Qty. to Receive (Base)"),"Qty. to Receive (Base)");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..18
        //##
        IF "Thickness (mm)" > 0 THEN
          "CBM to Receive" := ROUND(("Qty. to Receive" * "Thickness (mm)" / 1000),0.00001,'=');
        //##

        Item.CheckSerialNoQty("Item No.",FIELDCAPTION("Qty. to Receive (Base)"),"Qty. to Receive (Base)");
        */
        //end;
        field(50000; "Length (mm)"; Decimal)
        {

            trigger OnValidate()
            begin
                CalculateCubage;
            end;
        }
        field(50001; "Width (mm)"; Decimal)
        {

            trigger OnValidate()
            begin
                CalculateCubage;
            end;
        }
        field(50002; Height; Decimal)
        {

            trigger OnValidate()
            begin
                CalculateCubage;
            end;
        }
        field(50003; Cubage1; Decimal)
        {
            Caption = 'Cubage1';
        }
        field(50004; "Avg. Qty. per Add. Base UOM"; Decimal)
        {
        }
        field(50005; "Qty. (SLABS)"; Decimal)
        {
            DecimalPlaces = 0 : 0;
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
        field(50016; "Qty. To Receive (SLABS)"; Decimal)
        {
            DecimalPlaces = 0 : 0;

            trigger OnValidate()
            begin
                //VALIDATE("Qty. to Receive","Qty. To Receive (SLABS)" * "Avg. Qty. per Add. Base UOM");
            end;
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
            Editable = true;
        }
        field(50024; "CBM to Receive"; Decimal)
        {
            DecimalPlaces = 5 : 5;
            Editable = false;
        }
    }


    //Unsupported feature: Code Modification on "OpenItemTrackingLines(PROCEDURE 6500)".

    //procedure OpenItemTrackingLines();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TESTFIELD("No.");
    TESTFIELD("Qty. (Base)");

    #4..10
    CASE "Source Type" OF
      DATABASE::"Purchase Line":
        BEGIN
          IF PurchaseLine.GET("Source Subtype","Source No.","Source Line No.") THEN
            ReservePurchLine.CallItemTracking2(PurchaseLine,SecondSourceQtyArray);
        END;
      DATABASE::"Sales Line":
        BEGIN
    #19..27
    END;

    OnAfterOpenItemTrackingLines(Rec,SecondSourceQtyArray);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..13
          IF PurchaseLine.GET("Source Subtype","Source No.","Source Line No.") THEN BEGIN
            ReservePurchLine.SetWarehousRcptDocInfo("No.","Line No.");  //DSJS
            ReservePurchLine.CallItemTracking2(PurchaseLine,SecondSourceQtyArray);
        END;
    #16..30
    */
    //end;

    local procedure "DS-Start"()
    begin
    end;

    local procedure CalculateCubage()
    var
        ItemRec: Record Item;
    begin
        ItemRec.GET("No.");

        IF ItemRec."Dimension Mandatory" = TRUE THEN
            Cubage1 := "Length (mm)" * "Width (mm)" * Height;
    end;
}

