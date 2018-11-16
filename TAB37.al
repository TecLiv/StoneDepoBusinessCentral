tableextension 50103 tab37 extends "Sales Line"
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {

        //Unsupported feature: Code Modification on ""VAT Prod. Posting Group"(Field 90).OnValidate".

        //trigger  Posting Group"(Field 90)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        VATPostingSetup.GET("VAT Bus. Posting Group","VAT Prod. Posting Group");
        "VAT Difference" := 0;
        #4..13
          "VAT Calculation Type"::"Full VAT":
            BEGIN
              TESTFIELD(Type,Type::"G/L Account");
              TESTFIELD("No.",VATPostingSetup.GetSalesAccount(FALSE));
            END;
        END;
        #20..22
              "Unit Price" * (100 + "VAT %") / (100 + xRec."VAT %"),
              Currency."Unit-Amount Rounding Precision");
        UpdateAmounts;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..16
              VATPostingSetup.TESTFIELD("Sales VAT Account");
        #17..25
        */
        //end;


        //Unsupported feature: Code Modification on ""Purchasing Code"(Field 5711).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TESTFIELD(Type,Type::Item);
        CheckAssocPurchOrder(FIELDCAPTION(Type));
        #4..13
            IF (Quantity <> 0) AND (Quantity = "Quantity Shipped") THEN
              ERROR(SalesLineCompletelyShippedErr);
            Reserve := Reserve::Never;
            IF "Drop Shipment" THEN BEGIN
              EVALUATE("Outbound Whse. Handling Time",'<0D>');
              EVALUATE("Shipping Time",'<0D>');
        #20..45
          END;
          UpdateDates;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..16
            VALIDATE(Quantity,Quantity);
        #17..48
        */
        //end;


        //Unsupported feature: Code Modification on ""Planned Shipment Date"(Field 5795).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IF "Planned Shipment Date" <> 0D THEN BEGIN
          PlannedShipmentDateCalculated := TRUE;

          VALIDATE("Shipment Date",CalcShipmentDate);
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..4
          IF FORMAT("Outbound Whse. Handling Time") <> '' THEN
            VALIDATE(
              "Shipment Date",
              CalendarMgmt.CalcDateBOC2(
                FORMAT("Outbound Whse. Handling Time"),
                "Planned Shipment Date",
                CalChange."Source Type"::Location,
                "Location Code",
                '',
                CalChange."Source Type"::"Shipping Agent",
                "Shipping Agent Code",
                "Shipping Agent Service Code",
                FALSE))
          ELSE
            VALIDATE(
              "Shipment Date",
              CalendarMgmt.CalcDateBOC(
                FORMAT(FORMAT('')),
                "Planned Shipment Date",
                CalChange."Source Type"::"Shipping Agent",
                "Shipping Agent Code",
                "Shipping Agent Service Code",
                CalChange."Source Type"::Location,
                "Location Code",
                '',
                FALSE));
        END;
        */
        //end;


        //Unsupported feature: Code Modification on ""Customer Disc. Group"(Field 7002).OnValidate".

        //trigger  Group"(Field 7002)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF Type = Type::Item THEN
          UpdateUnitPrice(FIELDNO("Customer Disc. Group"))
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        IF Type = Type::Item THEN BEGIN
          UpdateUnitPrice(FIELDNO("Customer Disc. Group"));
        END;

        IF "Customer Disc. Group" = 'FREE SUPPLY' THEN BEGIN
          "Margin $" := 0;
          "Margin Percent Age" := 0;
          "Unit Cost on Item Card" := 0;
          "Total Amount As Per Unit Cost" := 0;
        END;
        */
        //end;
        field(50000; "Length (mm)"; Decimal)
        {
            DecimalPlaces = 0 : 0;

            trigger OnValidate()
            begin
                CalculateCubage;
            end;
        }
        field(50001; "Width (mm)"; Decimal)
        {
            DecimalPlaces = 0 : 0;

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
                CalculateCubage;
            end;
        }
        field(50003; Cubage; Decimal)
        {
        }
        field(50004; "SQM/Unit"; Decimal)
        {
        }
        field(50005; "Qty. (SLABS)"; Decimal)
        {
            DecimalPlaces = 0 : 0;

            trigger OnValidate()
            begin
                /*
                //VALIDATE(Quantity,(ROUND(((Length * Width) / 1000000),0.01,'=') * "Quantity (Add. Base) (SLABS)"));
                VALIDATE(Quantity,("Avg. Qty. per Add. Base UOM" *"Qty. (SLABS)"));
                VALIDATE("Qty. in SQM",(ROUND((("Length (mm)" * "Width (mm)") / 1000000),0.01,'=') * "Qty. (SLABS)"));
                VALIDATE("Line Discount %");
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
        field(50016; "Qty. in SQM"; Decimal)
        {
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
    keys
    {

        //Unsupported feature: Property Insertion (SumIndexFields) on ""Document Type,Document No.,Line No."(Key)".


        //Unsupported feature: Property Insertion (Enabled) on ""Document Type,Document No.,Location Code"(Key)".


        //Unsupported feature: Property Deletion (SumIndexFields) on ""Document Type,Document No.,Location Code"(Key)".


        //Unsupported feature: Property Deletion (MaintainSQLIndex) on ""Document Type,Document No.,Location Code"(Key)".

    }


    //Unsupported feature: Code Modification on "CalcBaseQty(PROCEDURE 14)".

    //procedure CalcBaseQty();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TESTFIELD("Qty. per Unit of Measure");
    EXIT(ROUND(Qty * "Qty. per Unit of Measure",0.00001));
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    TESTFIELD("Qty. per Unit of Measure");
    //EXIT(ROUND(Qty * "Qty. per Unit of Measure",0.00001));
    IF (("Document Type" = "Document Type"::Order) AND (Type = Type::Item) AND ("Unit of Measure Code" = 'PCS')) THEN
      EXIT(ROUND(Qty * "Qty. per Unit of Measure",0.00001))
    ELSE IF (("Document Type" = "Document Type"::Order) AND (Type = Type::Item) AND ("Unit of Measure Code" = 'SQM')) THEN
      EXIT(ROUND(Qty / "Qty. per Unit of Measure",0.00001))
    ELSE
    EXIT(ROUND(Qty * "Qty. per Unit of Measure",0.00001));
    */
    //end;


    //Unsupported feature: Code Modification on "UpdateAmounts(PROCEDURE 3)".

    //procedure UpdateAmounts();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF Type = Type::" " THEN
      EXIT;
    GetSalesHeader;
    VATBaseAmount := "VAT Base Amount";
    "Recalculate Invoice Disc." := TRUE;

    IF "Line Amount" <> xRec."Line Amount" THEN BEGIN
      "VAT Difference" := 0;
      LineAmountChanged := TRUE;
    END;
    IF "Line Amount" <> ROUND(Quantity * "Unit Price",Currency."Amount Rounding Precision") - "Line Discount Amount" THEN BEGIN
      "Line Amount" := ROUND(Quantity * "Unit Price",Currency."Amount Rounding Precision") - "Line Discount Amount";
      "VAT Difference" := 0;
      LineAmountChanged := TRUE;
    END;

    IF NOT "Prepayment Line" THEN BEGIN
      IF "Prepayment %" <> 0 THEN BEGIN
        IF Quantity < 0 THEN
          FIELDERROR(Quantity,STRSUBSTNO(Text047,FIELDCAPTION("Prepayment %")));
        IF "Unit Price" < 0 THEN
          FIELDERROR("Unit Price",STRSUBSTNO(Text047,FIELDCAPTION("Prepayment %")));
      END;
      IF SalesHeader."Document Type" <> SalesHeader."Document Type"::Invoice THEN BEGIN
        "Prepayment VAT Difference" := 0;
        IF NOT PrePaymentLineAmountEntered THEN
          IF NOT CalculateFullGST("Prepmt. Line Amount") THEN
            "Prepmt. Line Amount" := ROUND("Line Amount" * "Prepayment %" / 100,Currency."Amount Rounding Precision");
        IF "Prepmt. Line Amount" < "Prepmt. Amt. Inv." THEN BEGIN
          IF IsServiceCharge THEN
            ERROR(CannotChangePrepaidServiceChargeErr);
          FIELDERROR("Prepmt. Line Amount",STRSUBSTNO(Text049,"Prepmt. Amt. Inv."));
        END;
        PrePaymentLineAmountEntered := FALSE;
        IF "Prepmt. Line Amount" <> 0 THEN BEGIN
          RemLineAmountToInvoice :=
            ROUND("Line Amount" * (Quantity - "Quantity Invoiced") / Quantity,Currency."Amount Rounding Precision");
          IF RemLineAmountToInvoice < ("Prepmt. Line Amount" - "Prepmt Amt Deducted") THEN
            FIELDERROR("Prepmt. Line Amount",STRSUBSTNO(Text045,RemLineAmountToInvoice + "Prepmt Amt Deducted"));
        END;
      END ELSE
        IF (CurrFieldNo <> 0) AND ("Line Amount" <> xRec."Line Amount") AND
           ("Prepmt. Amt. Inv." <> 0) AND ("Prepayment %" = 100)
        THEN BEGIN
          IF "Line Amount" < xRec."Line Amount" THEN
            FIELDERROR("Line Amount",STRSUBSTNO(Text044,xRec."Line Amount"));
          FIELDERROR("Line Amount",STRSUBSTNO(Text045,xRec."Line Amount"));
        END;
    END;

    OnAfterUpdateAmounts(Rec,xRec,CurrFieldNo);

    UpdateVATAmounts;
    InitOutstandingAmount;
    IF (CurrFieldNo <> 0) AND
       NOT ((Type = Type::Item) AND (CurrFieldNo = FIELDNO("No.")) AND (Quantity <> 0) AND
            // a write transaction may have been started
            ("Qty. per Unit of Measure" <> xRec."Qty. per Unit of Measure")) AND // ...continued condition
       ("Document Type" <= "Document Type"::Invoice) AND
       (("Outstanding Amount" + "Shipped Not Invoiced") > 0) AND
       (CurrFieldNo <> FIELDNO("Blanket Order No.")) AND
       (CurrFieldNo <> FIELDNO("Blanket Order Line No."))
    THEN
      CustCheckCreditLimit.SalesLineCheck(Rec);

    IF Type = Type::"Charge (Item)" THEN
      UpdateItemChargeAssgnt;

    CalcPrepaymentToDeduct;
    IF VATBaseAmount <> "VAT Base Amount" THEN
      LineAmountChanged := TRUE;

    IF LineAmountChanged THEN BEGIN
      UpdateDeferralAmounts;
      LineAmountChanged := FALSE;
    END;

    OnAfterUpdateAmountsDone(Rec,xRec,CurrFieldNo);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..15
    UpdateVATAmounts;
    #17..78
    */
    //end;


    //Unsupported feature: Code Modification on "GetFAPostingGroup(PROCEDURE 6)".

    //procedure GetFAPostingGroup();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF (Type <> Type::"Fixed Asset") OR ("No." = '') THEN
      EXIT;
    IF "Depreciation Book Code" = '' THEN BEGIN
    #4..10
    FADeprBook.GET("No.","Depreciation Book Code");
    FADeprBook.TESTFIELD("FA Posting Group");
    FAPostingGr.GET(FADeprBook."FA Posting Group");
    LocalGLAcc.GET(FAPostingGr.GetAcquisitionCostAccountOnDisposal);
    LocalGLAcc.CheckGLAcc;
    LocalGLAcc.TESTFIELD("Gen. Prod. Posting Group");
    "Posting Group" := FADeprBook."FA Posting Group";
    "Gen. Prod. Posting Group" := LocalGLAcc."Gen. Prod. Posting Group";
    "Tax Group Code" := LocalGLAcc."Tax Group Code";
    VALIDATE("VAT Prod. Posting Group",LocalGLAcc."VAT Prod. Posting Group");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..13
    FAPostingGr.TESTFIELD("Acq. Cost Acc. on Disposal");
    #14..20
    */
    //end;


    //Unsupported feature: Code Modification on "GetCaptionClass(PROCEDURE 34)".

    //procedure GetCaptionClass();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF SalesHeader2.GET("Document Type","Document No.") THEN;
    CASE FieldNumber OF
      FIELDNO("No."):
        EXIT(STRSUBSTNO('3,%1',GetFieldCaption(FieldNumber)));
      ELSE BEGIN
        IF SalesHeader2."Prices Including VAT" THEN
          EXIT('2,1,' + GetFieldCaption(FieldNumber));
        EXIT('2,0,' + GetFieldCaption(FieldNumber));
      END;
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


    //Unsupported feature: Code Modification on "ShowItemChargeAssgnt(PROCEDURE 5801)".

    //procedure ShowItemChargeAssgnt();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GET("Document Type","Document No.","Line No.");
    TESTFIELD("No.");
    TESTFIELD(Quantity);

    #5..51
    ItemChargeAssgnts.Initialize(Rec,ItemChargeAssgntLineAmt);
    ItemChargeAssgnts.RUNMODAL;
    CALCFIELDS("Qty. to Assign");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    GET("Document Type","Document No.","Line No.");
    TESTFIELD(Type,Type::"Charge (Item)");
    #2..54
    */
    //end;

    local procedure "DS-Start"()
    begin
    end;

    local procedure CalculateCubage()
    var
        ItemRec: Record Item;
    begin
        TESTFIELD(Type, Type::Item);
        ItemRec.GET("No.");

        IF ItemRec."Dimension Mandatory" = TRUE THEN
            Cubage := "Length (mm)" * "Width (mm)" * Height;
    end;

    local procedure ">>DSJS<<<"()
    begin
    end;

    [Scope('Personalization')]
    procedure ShowReservationVivin()
    var
        Reservation: Page Reservation;
    begin
        TESTFIELD(Type, Type::Item);
        TESTFIELD("No.");
        TESTFIELD(Reserve);
        CLEAR(Reservation);
        Reservation.SetSalesLine(Rec);
        //Reservation.SetSalesLineVivin(Rec);
        Reservation.AutoReserve;
        UpdatePlanned;
    end;

    [Scope('Personalization')]
    procedure ShowCancelReservationVivin()
    var
        Reservation: Page Reservation;
    begin
        TESTFIELD(Type, Type::Item);
        TESTFIELD("No.");
        TESTFIELD(Reserve);
        CLEAR(Reservation);
        Reservation.SetSalesLine(Rec);
        //Reservation.SetSalesLineCancelReservationVivin(Rec);
        UpdatePlanned;
    end;

    //Unsupported feature: Property Modification (Fields) on "Brick(FieldGroup 1)".



    //Unsupported feature: Property Modification (Id) on ""No."(Field 6).OnValidate.FindRecordMgt(Variable 1000)".

    //var
    //>>>> ORIGINAL VALUE:
    //"No." : 1000;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //"No." : 10000;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "PriceDescriptionTxt(Variable 1038)".

    //var
    //>>>> ORIGINAL VALUE:
    //PriceDescriptionTxt : 1038;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PriceDescriptionTxt : 10038;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "CommentLbl(Variable 1046)".

    //var
    //>>>> ORIGINAL VALUE:
    //CommentLbl : 1046;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CommentLbl : 10046;
    //Variable type has not been exported.

    var
        ApplicationAreaSetup: Record "Application Area Setup";

    var
        DeferralPostDate: Date;
        ItemNoFieldCaptionTxt: Label 'Item';
}

