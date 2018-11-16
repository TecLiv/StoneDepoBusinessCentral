tableextension 50106 tab336 extends "Tracking Specification"
{
    // version NAVW113.00

    fields
    {

        //Unsupported feature: Code Modification on ""Lot No."(Field 5400).OnValidate".

        //trigger "(Field 5400)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        IF "Lot No." <> xRec."Lot No." THEN BEGIN
          TESTFIELD("Quantity Handled (Base)",0);
          TESTFIELD("Appl.-from Item Entry",0);
          IF IsReclass THEN
            "New Lot No." := "Lot No.";
          WMSManagement.CheckItemTrackingChange(Rec,xRec);
          InitExpirationDate;
        END;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        IF "Lot No." <> xRec."Lot No." THEN BEGIN
          //DSJS-Start
          IF "Source Type" = 37 THEN
            ItemJnlMgt.ValidateBarCodeWithItem("Lot No.","Item No.","Location Code");
          ItemNumber := '';
          ItemNumber := COPYSTR("Lot No.",1,6);
          IF ItemNumber <> "Item No." THEN
            ERROR('Invalid Product number. Product Item number not matched with receipt line item....');
          LengthCode := COPYSTR("Lot No.",8,4);
          WidthCode := COPYSTR("Lot No.",12,4);
          EVALUATE("Length (mm)",LengthCode);
          EVALUATE("Width (mm)",WidthCode);
          VALIDATE("Quantity (Add. Base) (SLABS)",1);
          //DSJS-End

        #2..8
        */
        //end;
        field(50005; "Quantity (Add. Base) (SLABS)"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 0;
            Editable = false;
            MinValue = 0;

            trigger OnValidate()
            begin
                //VALIDATE("Quantity (Base)","Quantity (Add. Base) (SLABS)");
                VALIDATE("Qty. in SQM", (ROUND((("Length (mm)" * "Width (mm)") / 1000000), 0.01, '=') * "Quantity (Add. Base) (SLABS)"));
                VALIDATE("Quantity (Base)", "Qty. in SQM");
            end;
        }
        field(50012; "Qty. in SQM"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(50015; "Length (mm)"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 0;
            Editable = false;
            MinValue = 0;

            trigger OnValidate()
            begin
                IF (("Length (mm)" <> 0) AND ("Width (mm)" <> 0)) THEN
                    VALIDATE("Qty. in SQM", (ROUND((("Length (mm)" * "Width (mm)") / 1000000), 0.01, '=') * "Quantity (Add. Base) (SLABS)"));
            end;
        }
        field(50016; "Width (mm)"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 0;
            Editable = false;
            MinValue = 0;

            trigger OnValidate()
            begin
                IF (("Length (mm)" <> 0) AND ("Width (mm)" <> 0)) THEN
                    VALIDATE("Qty. in SQM", (ROUND((("Length (mm)" * "Width (mm)") / 1000000), 0.01, '=') * "Quantity (Add. Base) (SLABS)"));
            end;
        }
        field(50017; "Bar Code"; Code[30])
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                ItemRec: Record Item;
            begin
                IF "Bar Code" <> xRec."Bar Code" THEN BEGIN
                    "Tracking Lot No." := '';
                    "Colour Shade" := '';
                    CheckLotNo := '';
                    CheckLotNo := COPYSTR("Bar Code", 1, 20);
                    VALIDATE("Lot No.", CheckLotNo);
                    "Tracking Lot No." := COPYSTR("Bar Code", 22, 4);
                    "Colour Shade" := COPYSTR("Bar Code", 27, 1);
                    IF ItemRec.GET("Item No.") THEN BEGIN
                        "Thickness (mm)" := ItemRec."Thickness (mm)";
                        Description := ItemRec.Description;
                    END;
                    //IF "Source Type" = 37 THEN
                    //ItemJnlMgt.ValidateBarCodeWithItem(CheckLotNo,"Item No.","Location Code");
                END;
            end;
        }
        field(50018; "Thickness (mm)"; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50050; "Warehouse Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(50051; "Warehouse Document Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(50052; "Tracking Lot No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50053; "Colour Shade"; Code[2])
        {
            DataClassification = ToBeClassified;
        }
    }

    //Unsupported feature: Variable Insertion (Variable: ItemRec) (VariableCollection) on "SetItemData(PROCEDURE 29)".



    //Unsupported feature: Code Modification on "SetItemData(PROCEDURE 29)".

    //procedure SetItemData();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Item No." := ItemNo;
    Description := ItemDescription;
    "Location Code" := LocationCode;
    "Variant Code" := VariantCode;
    "Bin Code" := BinCode;
    "Qty. per Unit of Measure" := QtyPerUoM;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..6


    IF ItemRec.GET(ItemNo) THEN BEGIN
      Description := ItemRec.Description;
      "Thickness (mm)" := ItemRec."Thickness (mm)";
    END;
    */
    //end;

    local procedure ">>DSJS<<<"()
    begin
    end;

    procedure SetWarehouseDocInfo(WhesDocNoL: Code[20]; WhesDocLineNoL: Integer)
    begin
        WhesDocNoG := WhesDocNoL;
        WhesDocLineNoG := WhesDocLineNoL;
    end;

    procedure SetWarehouseDocInfoinRec(WhesDocNoL: Code[20]; WhesDocLineNoL: Integer)
    begin
        //"Warehouse Document No." := WhesDocNoL;
        //"Warehouse Document Line No." := WhesDocLineNoL;
    end;

    procedure SetInputBarcode(BarCode: Code[20])
    var
        TrackingSpecRec2: Record "Tracking Specification";
        ReservationEntry: Record "Reservation Entry";
        ReservationEntry2: Record "Reservation Entry";
    begin
        /*
        NextEntryNo := 0;
        ReservationEntry.RESET;
        IF ReservationEntry.FIND('+') THEN
          NextEntryNo := ReservationEntry."Entry No.";
        
        IF NextEntryNo = 0 THEN
          NextEntryNo := 1
        ELSE
          NextEntryNo := NextEntryNo + 1;
        
        ReservationEntry2.INIT;
        */

    end;

    var
        ">>DSJS009<<": Integer;
        WhesDocNoG: Code[20];
        WhesDocLineNoG: Integer;
        LengthMM: Decimal;
        WidthMM: Decimal;
        SlabQty: Decimal;
        LengthCode: Code[10];
        WidthCode: Code[10];
        SlabQtyCode: Code[10];
        NextEntryNo: Integer;
        TrackingSpecRec: Record "Tracking Specification";
        TrackingSpecRec3: Record "Tracking Specification";
        ItemJnlMgt: Codeunit ItemJnlManagement;
        ItemNumber: Code[10];
        CheckLotNo: Code[20];
}

