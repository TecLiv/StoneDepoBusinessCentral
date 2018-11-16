tableextension 50105 tab111 extends "Sales Shipment Line"
{
    // version NAVW113.00

    fields
    {
        field(50000; "Length"; Decimal)
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
                IF (("Length (  mm)" <> 0) AND ("Width (mm)" <> 0) AND ("Thickness (mm)" <> 0)) THEN
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
        field(80007; "Customer Name"; Text[50])
        {
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
    }

    //Unsupported feature: Variable Insertion (Variable: SalesPackingList) (VariableCollection) on "InitFromSalesLine(PROCEDURE 12)".


    //Unsupported feature: Variable Insertion (Variable: PostedSalesPackingList) (VariableCollection) on "InitFromSalesLine(PROCEDURE 12)".



    //Unsupported feature: Code Modification on "InitFromSalesLine(PROCEDURE 12)".

    //procedure InitFromSalesLine();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    INIT;
    TRANSFERFIELDS(SalesLine);
    IF ("No." = '') AND (Type IN [Type::"G/L Account"..Type::"Charge (Item)"]) THEN
    #4..19
    END;

    OnAfterInitFromSalesLine(SalesShptHeader,SalesLine,Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..22
    //DSPS-Start
          IF Quantity > 0 THEN BEGIN
            SalesPackingList.RESET;
            SalesPackingList.SETRANGE("Document Type",SalesLine."Document Type");
            SalesPackingList.SETRANGE("Document No.",SalesLine."Document No.");
            SalesPackingList.SETRANGE("Line No.",SalesLine."Line No.");
            IF SalesPackingList.FINDSET THEN BEGIN
              REPEAT
                PostedSalesPackingList.INIT;
                PostedSalesPackingList."Invoice No." := "Document No.";
                PostedSalesPackingList."Document Line No." := SalesLine."Line No.";
                PostedSalesPackingList."Line No." := SalesPackingList."Line No.";
                PostedSalesPackingList."Customer No." := SalesPackingList."Customer No.";
                PostedSalesPackingList."Item No." := SalesPackingList."Item No.";
                PostedSalesPackingList."Item Description" := SalesPackingList."Item Description";
                PostedSalesPackingList."Packing Description" := SalesPackingList."Packing Description";
                PostedSalesPackingList."Order Quantity" := SalesPackingList."Order Quantity";
                PostedSalesPackingList."Outstanding Quantity" := SalesPackingList."Outstanding Quantity";
                PostedSalesPackingList."From Parcel No." := SalesPackingList."From Parcel No.";
                PostedSalesPackingList."To Parcel No." := SalesPackingList."To Parcel No.";
                PostedSalesPackingList."Quantity Per Parcel" := SalesPackingList."Quantity Per Parcel";
                PostedSalesPackingList."No. Of Parcel" := SalesPackingList."No. Of Parcel";
                PostedSalesPackingList."Total Packed Quantity" := SalesPackingList."Total Packed Quantity";
                PostedSalesPackingList.Remarks := SalesPackingList.Remarks;
                PostedSalesPackingList."Remarks For Custom" := SalesPackingList."Remarks For Custom";
                PostedSalesPackingList."Total Parcel" := SalesPackingList."Total Parcel";
                PostedSalesPackingList."Posting Date" := SalesShptHeader."Posting Date";
                PostedSalesPackingList."User ID" := USERID;
                PostedSalesPackingList."Include In Packing" := SalesPackingList."Include In Packing";
                PostedSalesPackingList.INSERT;
              UNTIL SalesPackingList.NEXT = 0;
            END;
          END;
          //DSPS-END
    */
    //end;
}

