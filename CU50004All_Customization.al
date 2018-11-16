codeunit 50107 All_Base_Customization
{

    trigger OnRun()
    begin
    end;

    var
        TextDS001: Label 'As you sure to cancel stock reservation for sales order no. %1?';

    local procedure ">>>DS<<<<"()
    begin
    end;

    local procedure MyProcedure()
    begin

    end;

    procedure GenerateItemCode(CategoryCode: Code[25]; ProductType: Code[25]; FinishCode: Code[25]; ProductNameCode: Code[25]; Length: Decimal; Width: Decimal; Thickness: Decimal; UOMCode: Code[10]; ProductOrigin: Code[10]; PCSSqm: Decimal; SalesUOMCode: Code[10]; PurchUOMCode: Code[10])
    var
        ItemRec: Record Item;
        NewItemRec: Record Item;
        ItemCode: Code[20];
        ProcessMaster: Record "Process Master";
        ItemUnitofMeasure: Record "Item Unit of Measure";
        DeffDim: Record "Default Dimension";
        DeffDim2: Record "Default Dimension";
        ProcessMaster1: Record "Process Master";
        CategoryCode1: Code[25];
        ProductType1: Code[25];
        FinishCode1: Code[25];
        ProductNameCode1: Code[25];
        DimValue: Record "Dimension Value";
        CountryRegion: Record "Country/Region";
        ItemCard: Page "Item Card";
    begin
        IF ProductOrigin = '' THEN
            ERROR('Product Origin must have a value');
        IF CategoryCode = '' THEN
            ERROR('Category must have a value');
        IF ProductType = '' THEN
            ERROR('Product Tyep must have a value');
        IF FinishCode = '' THEN
            ERROR('Finish must have a value');
        IF ProductNameCode = '' THEN
            ERROR('Product Name must have a value');
        IF Length = 0 THEN
            ERROR('Length must have a value');
        IF Width = 0 THEN
            ERROR('Width must have a value');
        IF Thickness = 0 THEN
            ERROR('Thickness must have a value');
        IF UOMCode = '' THEN
            ERROR('Unit of Measure must have a value');
        IF SalesUOMCode = '' THEN
            ERROR('Sales Unit of Measure must have a value');
        IF PurchUOMCode = '' THEN
            ERROR('Purchase Unit of Measure must have a value');

        IF NOT CONFIRM('Do you want to generate item code', FALSE) THEN
            EXIT;

        IF ProcessMaster1.GET(ProcessMaster1."Document Type"::Category, ProcessMaster1."Document Sub Type"::Category, CategoryCode) THEN
            CategoryCode1 := ProcessMaster1."Item Code";
        IF ProcessMaster1.GET(ProcessMaster1."Document Type"::"Product Type", ProcessMaster1."Document Sub Type"::"Product Type", ProductType) THEN
            ProductType1 := ProcessMaster1."Item Code";
        IF ProcessMaster1.GET(ProcessMaster1."Document Type"::Finish, ProcessMaster1."Document Sub Type"::Finish, FinishCode) THEN
            FinishCode1 := ProcessMaster1."Item Code";
        IF ProcessMaster1.GET(ProcessMaster1."Document Type"::"Product Name", ProcessMaster1."Document Sub Type"::"Product Name", ProductNameCode) THEN
            ProductNameCode1 := ProcessMaster1."Item Code";

        //ItemCode := CategoryCode +'-'+ ProductType +'-'+ FinishCode +'-'+ ProductNameCode +'-'+
        //COPYSTR(FORMAT(Length),1,2) + COPYSTR(FORMAT(Width),1,2) + COPYSTR(FORMAT(Thickness),1,2);

        ItemCode := CategoryCode1 + '-' + ProductType1 + '-' + FinishCode1 + '-' + ProductNameCode1 + '-' +
          COPYSTR(FORMAT(Length), 1, 2) + COPYSTR(FORMAT(Width), 1, 2) + COPYSTR(FORMAT(Thickness), 1, 2);

        ItemRec.RESET;
        ItemRec.SETRANGE("Item Customized Code", ItemCode);
        IF NOT ItemRec.FINDFIRST THEN BEGIN
            NewItemRec.INIT;
            NewItemRec."No." := '';
            NewItemRec.INSERT(TRUE);
            NewItemRec.Category := CategoryCode;
            NewItemRec."Product Type" := ProductType;
            NewItemRec.Finish := FinishCode;
            NewItemRec."Product Name" := ProductNameCode;
            NewItemRec.VALIDATE("Length (mm)", Length);
            NewItemRec.VALIDATE("Width (mm)", Width);
            NewItemRec.VALIDATE("Thickness (mm)", Thickness);
            NewItemRec."Item Customized Code" := ItemCode;
            ProcessMaster.RESET;
            ProcessMaster.SETRANGE("Document Type", ProcessMaster."Document Type"::"Product Name");
            ProcessMaster.SETRANGE("Document Sub Type", ProcessMaster."Document Sub Type"::"Product Name");
            ProcessMaster.SETFILTER(Code, ProductNameCode);
            IF ProcessMaster.FINDFIRST THEN
                NewItemRec.VALIDATE(Description, ProcessMaster.Description);
            IF UOMCode <> '' THEN BEGIN
                ItemUnitofMeasure.RESET;
                ItemUnitofMeasure.SETRANGE("Item No.", NewItemRec."No.");
                ItemUnitofMeasure.SETRANGE(Code, UOMCode);
                IF NOT ItemUnitofMeasure.FINDFIRST THEN BEGIN
                    ItemUnitofMeasure.INIT;
                    ItemUnitofMeasure.Code := UOMCode;
                    ItemUnitofMeasure."Item No." := NewItemRec."No.";
                    ItemUnitofMeasure.INSERT(TRUE);
                END;
                ItemUnitofMeasure.RESET;
                ItemUnitofMeasure.SETRANGE("Item No.", NewItemRec."No.");
                ItemUnitofMeasure.SETRANGE(Code, 'SQM');
                IF NOT ItemUnitofMeasure.FINDFIRST THEN BEGIN
                    ItemUnitofMeasure.INIT;
                    ItemUnitofMeasure.Code := 'SQM';
                    ItemUnitofMeasure."Item No." := NewItemRec."No.";
                    ItemUnitofMeasure."Qty. per Unit of Measure" := PCSSqm;
                    ItemUnitofMeasure.INSERT(TRUE);
                END;
            END;

            DimValue.RESET;
            DimValue.SETRANGE("Dimension Code", 'PROD. CATEGORY');
            DimValue.SETRANGE(Code, CategoryCode1);
            IF NOT DimValue.FINDFIRST THEN BEGIN
                DimValue.INIT;
                DimValue."Dimension Code" := 'PROD. CATEGORY';
                DimValue.Code := CategoryCode1;
                DimValue.Name := CategoryCode;
                DimValue.INSERT;
            END;

            DimValue.RESET;
            DimValue.SETRANGE("Dimension Code", 'PROD. TYPE');
            DimValue.SETRANGE(Code, ProductType1);
            IF NOT DimValue.FINDFIRST THEN BEGIN
                DimValue.INIT;
                DimValue."Dimension Code" := 'PROD. TYPE';
                DimValue.Code := ProductType1;
                DimValue.Name := ProductType;
                DimValue.INSERT;
            END;

            DimValue.RESET;
            DimValue.SETRANGE("Dimension Code", 'PROD. ORIGIN');
            DimValue.SETRANGE(Code, ProductOrigin);
            IF NOT DimValue.FINDFIRST THEN BEGIN
                DimValue.INIT;
                DimValue."Dimension Code" := 'PROD. ORIGIN';
                DimValue.Code := ProductOrigin;
                IF CountryRegion.GET(ProductOrigin) THEN
                    DimValue.Name := CountryRegion.Name;
                DimValue.INSERT;
            END;

            //Insert Default dimension
            DeffDim.RESET;
            DeffDim.SETRANGE("Table ID", 27);
            DeffDim.SETRANGE("No.", NewItemRec."No.");
            DeffDim.SETRANGE("Dimension Code", 'PROD. ORIGIN');
            IF NOT DeffDim.FINDFIRST THEN BEGIN
                DeffDim2.INIT;
                DeffDim2."Table ID" := 27;
                DeffDim2."No." := NewItemRec."No.";
                DeffDim2."Dimension Code" := 'PROD. ORIGIN';
                DeffDim2."Dimension Value Code" := ProductOrigin;
                DeffDim2.INSERT;
            END;

            DeffDim.RESET;
            DeffDim.SETRANGE("Table ID", 27);
            DeffDim.SETRANGE("No.", NewItemRec."No.");
            DeffDim.SETRANGE("Dimension Code", 'PROD. TYPE');
            IF NOT DeffDim.FINDFIRST THEN BEGIN
                DeffDim2.INIT;
                DeffDim2."Table ID" := 27;
                DeffDim2."No." := NewItemRec."No.";
                DeffDim2."Dimension Code" := 'PROD. TYPE';
                DeffDim2."Dimension Value Code" := ProductType1;
                DeffDim2.INSERT;
            END;

            DeffDim.RESET;
            DeffDim.SETRANGE("Table ID", 27);
            DeffDim.SETRANGE("No.", NewItemRec."No.");
            DeffDim.SETRANGE("Dimension Code", 'PROD. CATEGORY');
            IF NOT DeffDim.FINDFIRST THEN BEGIN
                DeffDim2.INIT;
                DeffDim2."Table ID" := 27;
                DeffDim2."No." := NewItemRec."No.";
                DeffDim2."Dimension Code" := 'PROD. CATEGORY';
                DeffDim2."Dimension Value Code" := CategoryCode1;
                DeffDim2.INSERT;
            END;

            NewItemRec.VALIDATE("Base Unit of Measure", UOMCode);
            //NewItemRec.VALIDATE("Sales Unit of Measure",UOMCode);
            //NewItemRec.VALIDATE("Purch. Unit of Measure",UOMCode);
            NewItemRec.VALIDATE("Sales Unit of Measure", SalesUOMCode);
            NewItemRec.VALIDATE("Purch. Unit of Measure", PurchUOMCode);
            NewItemRec.VALIDATE("Costing Method", NewItemRec."Costing Method"::Average);
            NewItemRec.VALIDATE("Gen. Prod. Posting Group", 'RETAIL');
            NewItemRec.VALIDATE("Inventory Posting Group", 'FINISHED');
            NewItemRec."Country/Region Purchased Code" := ProductOrigin;
            //NewItemRec.VALIDATE("Global Dimension 1 Code",ProductOrigin);
            //NewItemRec.VALIDATE("Global Dimension 2 Code",CategoryCode1);
            NewItemRec.MODIFY;
            MESSAGE('Item  No. %1 generated Successfully.', NewItemRec."No.");
            /*
            CLEAR(ItemCard);
            ItemCard.SETTABLEVIEW(NewItemRec);
            ItemCard.RUN;
            */
        END ELSE
            MESSAGE('.Item  No. already generated.%1', ItemRec."No.");

    end;

    procedure AutoReserveSalesLineOnRelease(SalesHead: Record "Sales Header"; SalesLine: Record "Sales Line")
    var
        SalesHead2: Record "Sales Header";
        SalesLine2: Record "Sales Line";
        Reservation: Page Reservation;
        ReserveSalesLine: Codeunit "Sales Line-Reserve";
        DocumentType: Text;
        PageSalesOrderSubform: Page "Sales Lines Subform";
        UpdateCounterCheck: Integer;
        SaleSetup: Record "Sales & Receivables Setup";
    begin
        SalesHead2.RESET;
        SalesHead2.SETRANGE("Document Type", SalesHead."Document Type");
        SalesHead2.SETRANGE("No.", SalesHead."No.");
        IF SalesHead2.FINDFIRST THEN BEGIN
            SalesLine2.RESET;
            SalesLine2.SETRANGE("Document Type", SalesHead2."Document Type");
            SalesLine2.SETRANGE("Document No.", SalesHead2."No.");
            SalesLine2.SETFILTER(Quantity, '<>0');
            IF SalesLine2.FINDSET THEN BEGIN
                REPEAT
                    SalesLine2.CALCFIELDS("Reserved Quantity");
                    IF ((SalesLine2."Document Type" = SalesLine2."Document Type"::Order) AND (SalesLine2.Type = SalesLine2.Type::Item) AND
                      (SalesLine2."Reserved Quantity" = 0)) THEN BEGIN
                        SalesLine2.ShowReservationVivin;
                        UpdateCounterCheck := UpdateCounterCheck + 1;
                    END;
                UNTIL SalesLine2.NEXT = 0;
            END;
        END;

        IF UpdateCounterCheck > 1 THEN
            MESSAGE('Stock has been reserved for sales order No. %1 successfully', SalesHead."No.");
    end;

    procedure CancelReserveSalesLineOnRelease(SalesHead: Record "Sales Header")
    var
        SalesHead2: Record "Sales Header";
        SalesLine2: Record "Sales Line";
        Reservation: Page Reservation;
        ReserveSalesLine: Codeunit "Sales Line-Reserve";
        DocumentType: Text;
        PageSalesOrderSubform: Page "Sales Order Subform";
        UpdateCounterCheck: Integer;
    begin
        IF CONFIRM(TextDS001, TRUE, SalesHead."No.") THEN BEGIN
            UpdateCounterCheck := 0;
            SalesHead2.RESET;
            SalesHead2.SETRANGE("Document Type", SalesHead."Document Type");
            SalesHead2.SETRANGE("No.", SalesHead."No.");
            IF SalesHead2.FINDFIRST THEN BEGIN
                SalesLine2.RESET;
                SalesLine2.SETRANGE("Document Type", SalesHead2."Document Type");
                SalesLine2.SETRANGE("Document No.", SalesHead2."No.");
                IF SalesLine2.FINDSET THEN BEGIN
                    REPEAT
                        SalesLine2.CALCFIELDS("Reserved Quantity");
                        IF ((SalesLine2."Document Type" = SalesLine2."Document Type"::Order) AND (SalesLine2.Type = SalesLine2.Type::Item) AND
                          (SalesLine2."Reserved Quantity" <> 0)) THEN BEGIN
                            SalesLine2.ShowCancelReservationVivin;
                            UpdateCounterCheck := UpdateCounterCheck + 1;
                        END;
                    UNTIL SalesLine2.NEXT = 0;
                END;
            END;

            IF UpdateCounterCheck > 0 THEN
                MESSAGE('Stock Reservation cancel for sales order no. %1 successfully', SalesHead."No.");
        END ELSE
            EXIT;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post (Yes/No)", 'OnBeforeConfirmPost', '', true, true)]
    local procedure OnbeforeconfirmpostpurchasedocforCDU91(var PurchaseHeader: Record "Purchase Header"; var HideDialog: Boolean; var IsHandled: Boolean)
    begin
        //DS-Start
        IF ((PurchaseHeader."Document Type" = PurchaseHeader."Document Type"::Order) AND (PurchaseHeader."Container Status" <> PurchaseHeader."Container Status"::Received)) THEN
            ERROR('Order must be received to warehouse before posting');
        //DS-End
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Charge Assgnt. (Purch.)", 'OnBeforeInsertItemChargeAssgntWithAssignValues', '', true, true)]
    local procedure CU5805OninsertItemChargeAssignment(var ItemChargeAssgntPurch: Record "Item Charge Assignment (Purch)")
    var
        PurchRcptLine: Record "Purch. Rcpt. Line";
        Item: Record Item;
    begin
        //DS-NY Code Start
        PurchRcptLine.RESET;
        PurchRcptLine.SETRANGE("Document No.", ItemChargeAssgntPurch."Applies-to Doc. No.");
        PurchRcptLine.SETRANGE("Line No.", ItemChargeAssgntPurch."Applies-to Doc. Line No.");
        IF PurchRcptLine.FINDFIRST THEN BEGIN
            PurchRcptLine.CALCFIELDS("Total Rem. Qty.");
            Item.GET(PurchRcptLine."No.");
            IF Item."Base Unit of Measure" = 'PCS' THEN
                ItemChargeAssgntPurch."ILE Rem. Qty." := (PurchRcptLine."Total Rem. Qty." * Item."Piece CBM")
            ELSE
                ItemChargeAssgntPurch."ILE Rem. Qty." := ((PurchRcptLine."Total Rem. Qty." / PurchRcptLine."Qty. per Unit of Measure") * Item."Piece CBM");
        END;
        //DS-NY Code End
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Charge Assgnt. (Purch.)", 'OnBeforeShowSuggestItemChargeAssignStrMenu', '', true, true)]
    local procedure CU5805ChangeMenu(var SuggestItemChargeMenuTxt: Text)
    begin
        SuggestItemChargeMenuTxt := SuggestItemChargeMenuTxt + ',Rem. Qty.';
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Charge Assgnt. (Purch.)", 'OnAssignItemCharges', '', true, true)]
    local procedure CU5805OnassignItemCharge(var ItemChargeAssignmentPurch: Record "Item Charge Assignment (Purch)"; Currency: Record Currency; PurchaseHeader: Record "Purchase Header"; TotalQtyToAssign: Decimal; TotalAmtToAssign: Decimal; SelectionTxt: Text)
    begin
        case SelectionTxt of
            'Rem. Qty.':
                AssignByRemQty(ItemChargeAssignmentPurch, Currency, PurchaseHeader, TotalQtyToAssign, TotalAmtToAssign);
        end;
    end;

    local procedure AssignByRemQty(VAR ItemChargeAssgntPurch: Record "Item Charge Assignment (Purch)"; Currency: Record Currency; PurchHeader: Record "Purchase Header"; TotalQtyToAssign: Decimal; TotalAmtToAssign: Decimal);
    VAR
        TempItemChargeAssgntPurch: Record "Item Charge Assignment (Purch)" temporary;
        PurchLine: Record "Purchase Line";
        PurchRcptLine: Record "Purch. Rcpt. Line";
        CurrExchRate: Record "Currency Exchange Rate";
        ReturnRcptLine: Record "Return Receipt Line";
        ReturnShptLine: Record "Return Shipment Line";
        SalesShptLine: Record "Sales Shipment Line";
        CurrencyCode: Code[10];
        TotalAppliesToDocLineAmount: Decimal;
        TotalAppliesToDocLineQty: Decimal;
        Item: Record Item;
    begin
        REPEAT
            IF NOT ItemChargeAssgntPurch.PurchLineInvoiced THEN BEGIN
                TempItemChargeAssgntPurch := ItemChargeAssgntPurch;
                CASE ItemChargeAssgntPurch."Applies-to Doc. Type" OF
                    ItemChargeAssgntPurch."Applies-to Doc. Type"::Quote,
                    ItemChargeAssgntPurch."Applies-to Doc. Type"::Order,
                    ItemChargeAssgntPurch."Applies-to Doc. Type"::Invoice,
                    ItemChargeAssgntPurch."Applies-to Doc. Type"::"Return Order",
                    ItemChargeAssgntPurch."Applies-to Doc. Type"::"Credit Memo":
                        BEGIN
                            PurchLine.GET(
                                ItemChargeAssgntPurch."Applies-to Doc. Type",
                                ItemChargeAssgntPurch."Applies-to Doc. No.",
                                ItemChargeAssgntPurch."Applies-to Doc. Line No.");
                            TempItemChargeAssgntPurch."Applies-to Doc. Line Amount" :=
                                ABS(PurchLine."Line Amount");
                        END;
                    ItemChargeAssgntPurch."Applies-to Doc. Type"::Receipt:
                        BEGIN
                            PurchRcptLine.GET(
                                ItemChargeAssgntPurch."Applies-to Doc. No.",
                                ItemChargeAssgntPurch."Applies-to Doc. Line No.");
                            CurrencyCode := PurchRcptLine.GetCurrencyCodeFromHeader;
                            IF CurrencyCode = PurchHeader."Currency Code" THEN BEGIN
                                TempItemChargeAssgntPurch."Applies-to Doc. Line Amount" :=
                                ABS(PurchRcptLine."Item Charge Base Amount");
                                PurchRcptLine.CALCFIELDS("Total Rem. Qty.");
                                Item.GET(PurchRcptLine."No.");
                                IF Item."Base Unit of Measure" = 'PCS' THEN
                                    TempItemChargeAssgntPurch."Applies-to Doc. Line Qty." := (PurchRcptLine."Total Rem. Qty." * Item."Piece CBM")
                                ELSE
                                    TempItemChargeAssgntPurch."Applies-to Doc. Line Qty." := ((PurchRcptLine."Total Rem. Qty." / PurchRcptLine."Qty. per Unit of Measure") * Item."Piece CBM");
                            END ELSE BEGIN
                                TempItemChargeAssgntPurch."Applies-to Doc. Line Amount" :=
                                CurrExchRate.ExchangeAmtFCYToFCY(
                                    PurchHeader."Posting Date", CurrencyCode, PurchHeader."Currency Code",
                                    ABS(PurchRcptLine."Item Charge Base Amount"));
                                PurchRcptLine.CALCFIELDS("Total Rem. Qty.");
                                Item.GET(PurchRcptLine."No.");
                                IF Item."Base Unit of Measure" = 'PCS' THEN
                                    TempItemChargeAssgntPurch."Applies-to Doc. Line Qty." := (PurchRcptLine."Total Rem. Qty." * Item."Piece CBM")
                                ELSE
                                    TempItemChargeAssgntPurch."Applies-to Doc. Line Qty." := ((PurchRcptLine."Total Rem. Qty." / PurchRcptLine."Qty. per Unit of Measure") * Item."Piece CBM");
                            END;
                        END;
                END;
                IF TempItemChargeAssgntPurch."Applies-to Doc. Line Amount" <> 0 THEN
                    TempItemChargeAssgntPurch.INSERT
                ELSE BEGIN
                    ItemChargeAssgntPurch."Amount to Assign" := 0;
                    ItemChargeAssgntPurch."Qty. to Assign" := 0;
                    ItemChargeAssgntPurch.MODIFY;
                END;
                TotalAppliesToDocLineAmount += TempItemChargeAssgntPurch."Applies-to Doc. Line Amount";
                TotalAppliesToDocLineQty += TempItemChargeAssgntPurch."Applies-to Doc. Line Qty.";
            END;
        UNTIL ItemChargeAssgntPurch.NEXT = 0;

        IF TempItemChargeAssgntPurch.FINDSET(TRUE) THEN
            REPEAT
                ItemChargeAssgntPurch.GET(
                TempItemChargeAssgntPurch."Document Type",
                TempItemChargeAssgntPurch."Document No.",
                TempItemChargeAssgntPurch."Document Line No.",
                TempItemChargeAssgntPurch."Line No.");
                IF TotalQtyToAssign <> 0 THEN BEGIN
                    ItemChargeAssgntPurch."Qty. to Assign" :=
                        ROUND(
                        TempItemChargeAssgntPurch."Applies-to Doc. Line Qty." / TotalAppliesToDocLineQty * TotalQtyToAssign,
                        0.00001);
                    ItemChargeAssgntPurch."Amount to Assign" :=
                        ROUND(
                        ItemChargeAssgntPurch."Qty. to Assign" / TotalQtyToAssign * TotalAmtToAssign,
                        Currency."Amount Rounding Precision");
                    TotalQtyToAssign -= ItemChargeAssgntPurch."Qty. to Assign";
                    TotalAmtToAssign -= ItemChargeAssgntPurch."Amount to Assign";
                    TotalAppliesToDocLineAmount -= TempItemChargeAssgntPurch."Applies-to Doc. Line Amount";
                    TotalAppliesToDocLineQty -= TempItemChargeAssgntPurch."Applies-to Doc. Line Qty.";
                    ItemChargeAssgntPurch.MODIFY;
                END;
            UNTIL TempItemChargeAssgntPurch.NEXT = 0;
        TempItemChargeAssgntPurch.DELETEALL;
        //DS-NY Code End   
    end;

    [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnAfterAssignItemValues', '', true, true)]
    local procedure OncopyItemtab39(Item: Record Item; var PurchLine: Record "Purchase Line")
    var
        PurchHeader: Record "Purchase Header";
    begin
        with PurchLine do begin
            if PurchHeader.Get("Document Type", "Document No.") then;
            "Thickness (mm)" := Item."Thickness (mm)";
            "SQM/Unit" := Item."Piece SQM";
            "Container No." := PurchHeader."Container No.";
            "Container Status" := PurchHeader."Container Status";
            "Length (mm)" := Item."Length (mm)";
            "Width (mm)" := Item."Width (mm)";
            "Category Code" := Item.Category;
            "Product Type" := Item."Product Type";
            Finish := Item.Finish;
            "Product Name" := Item."Product Name";
        end;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterAssignItemValues', '', true, true)]
    local procedure OncopyItemTab37(Item: Record Item; var SalesLine: Record "Sales Line")
    begin
        with SalesLine do begin
            //DSJS-Start
            "SQM/Unit" := Item."Piece SQM";
            "Length (mm)" := Item."Length (mm)";
            "Width (mm)" := Item."Width (mm)";
            "Thickness (mm)" := Item."Thickness (mm)";
            "Category Code" := Item.Category;
            "Product Type" := Item."Product Type";
            Finish := Item.Finish;
            "Product Name" := Item."Product Name";
            //DSJS-End
        end;
    end;
}

