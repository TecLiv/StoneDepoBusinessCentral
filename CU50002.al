codeunit 50102 "Internal Development"
{

    trigger OnRun()
    begin
    end;

    procedure CreateSalesPackingList(var Rec: Record "Sales Header")
    var
        SalesLine: Record "Sales Line";
        PackingList: Record "Sales Packing List";
        PackingListPage: Page "Sales Packing List";
        Text001: Label '&Create Line Wise Packing List,&Create Crates Wise Packing List';
        Selection: Integer;
        i: Integer;
        SrNo: Integer;
        te: Integer;
    begin
        WITH Rec DO BEGIN
            PackingList.RESET;
            PackingList.SETRANGE("Document Type", "Document Type");
            PackingList.SETRANGE("Document No.", "No.");
            IF NOT PackingList.FINDFIRST THEN BEGIN
                //Selection := STRMENU(Text001);
                //IF Selection = 0 THEN
                //  EXIT;
                Selection := 1;
            END;
            SrNo := 0;
            SalesLine.RESET;
            SalesLine.SETRANGE("Document Type", "Document Type");
            SalesLine.SETRANGE("Document No.", "No.");
            SalesLine.SETRANGE(Type, SalesLine.Type::Item);
            SalesLine.SETFILTER("No.", '<>%1', '');
            IF SalesLine.FINDSET THEN BEGIN
                REPEAT
                    IF Selection = 1 THEN BEGIN
                        PackingList.RESET;
                        PackingList.SETRANGE("Document Type", "Document Type");
                        PackingList.SETRANGE("Document No.", "No.");
                        PackingList.SETRANGE("Document Line No.", SalesLine."Line No.");
                        IF NOT PackingList.FINDFIRST THEN BEGIN
                            PackingList.INIT;
                            PackingList."Document Type" := SalesLine."Document Type";
                            PackingList."Document No." := SalesLine."Document No.";
                            PackingList."Document Line No." := SalesLine."Line No.";
                            PackingList."Line No." := GetLastSalesPackingLineNo(PackingList);
                            PackingList."Customer No." := SalesLine."Sell-to Customer No.";
                            PackingList."Item No." := SalesLine."No.";
                            PackingList."Item Description" := SalesLine.Description;
                            PackingList."Packing Description" := SalesLine."Packing Description";
                            PackingList."Order Quantity" := SalesLine.Quantity;
                            PackingList."Outstanding Quantity" := SalesLine."Outstanding Quantity";
                            PackingList."Unit Of Measure Code" := SalesLine."Unit of Measure Code";
                            PackingList.INSERT;
                        END;
                    END;
                    IF Selection = 2 THEN BEGIN
                        SalesLine.TESTFIELD(Crates);
                        PackingList.RESET;
                        PackingList.SETRANGE("Document Type", "Document Type");
                        PackingList.SETRANGE("Document No.", "No.");
                        PackingList.SETRANGE("Document Line No.", SalesLine."Line No.");
                        IF NOT PackingList.FINDFIRST THEN BEGIN
                            FOR i := 1 TO SalesLine.Crates DO BEGIN
                                SrNo += 1;
                                PackingList.INIT;
                                PackingList."Document Type" := SalesLine."Document Type";
                                PackingList."Document No." := SalesLine."Document No.";
                                PackingList."Document Line No." := SalesLine."Line No.";
                                PackingList."Line No." := GetLastSalesPackingLineNo(PackingList);
                                PackingList."Customer No." := SalesLine."Sell-to Customer No.";
                                PackingList."Item No." := SalesLine."No.";
                                PackingList."Item Description" := SalesLine.Description;
                                PackingList."Packing Description" := SalesLine."Packing Description";
                                PackingList."Order Quantity" := SalesLine.Quantity;
                                PackingList."Outstanding Quantity" := SalesLine."Outstanding Quantity";
                                PackingList."Unit Of Measure Code" := SalesLine."Unit of Measure Code";
                                PackingList.VALIDATE("From Parcel No.", SrNo);
                                PackingList.VALIDATE("To Parcel No.", SrNo);
                                PackingList.INSERT;
                            END;
                        END;
                    END;
                UNTIL SalesLine.NEXT = 0;
                CLEAR(PackingListPage);
                PackingList.RESET;
                PackingList.SETRANGE("Document Type", "Document Type");
                PackingList.SETRANGE("Document No.", "No.");
                PackingListPage.SETTABLEVIEW(PackingList);
                PackingListPage.RUN;
            END;
        END;
    end;

    procedure GetLastSalesPackingLineNo(var PackingList: Record "Sales Packing List"): Integer
    var
        LastPackingList: Record "Sales Packing List";
    begin
        LastPackingList.RESET;
        LastPackingList.SETRANGE("Document Type", PackingList."Document Type");
        LastPackingList.SETRANGE("Document No.", PackingList."Document No.");
        LastPackingList.SETRANGE("Document Line No.", PackingList."Document Line No.");
        IF LastPackingList.FINDLAST THEN
            EXIT(LastPackingList."Line No." + 10000)
        ELSE
            EXIT(10000);
    end;

    procedure CreatePurchasePackingList(var Rec: Record "Purchase Header")
    var
        PurchaseLine: Record "Purchase Line";
        PurchasePackingList: Record "Purchase Packing List";
        PurchasePackingListPage: Page "Purchase Packing List";
        Text001: Label '&Create Line Wise Packing List,&Create Crates Wise Packing List';
        Selection: Integer;
        i: Integer;
        SrNo: Integer;
    begin
        WITH Rec DO BEGIN
            PurchasePackingList.RESET;
            PurchasePackingList.SETRANGE("Document Type", "Document Type");
            PurchasePackingList.SETRANGE("Document No.", "No.");
            IF NOT PurchasePackingList.FINDFIRST THEN BEGIN
                //Selection := STRMENU(Text001);
                //IF Selection = 0 THEN
                //  EXIT;
                Selection := 1;
            END;
            SrNo := 0;
            PurchaseLine.RESET;
            PurchaseLine.SETRANGE("Document Type", "Document Type");
            PurchaseLine.SETRANGE("Document No.", "No.");
            PurchaseLine.SETRANGE(Type, PurchaseLine.Type::Item);
            PurchaseLine.SETFILTER("No.", '<>%1', '');
            IF PurchaseLine.FINDSET THEN BEGIN
                REPEAT
                    IF Selection = 1 THEN BEGIN
                        PurchasePackingList.RESET;
                        PurchasePackingList.SETRANGE("Document Type", "Document Type");
                        PurchasePackingList.SETRANGE("Document No.", "No.");
                        PurchasePackingList.SETRANGE("Document Line No.", PurchaseLine."Line No.");
                        IF NOT PurchasePackingList.FINDFIRST THEN BEGIN
                            PurchasePackingList.INIT;
                            PurchasePackingList."Document Type" := PurchaseLine."Document Type";
                            PurchasePackingList."Document No." := PurchaseLine."Document No.";
                            PurchasePackingList."Document Line No." := PurchaseLine."Line No.";
                            PurchasePackingList."Line No." := GetLastPurchasePackingLineNo(PurchasePackingList);
                            PurchasePackingList."Vendor No." := PurchaseLine."Buy-from Vendor No.";
                            PurchasePackingList."Item No." := PurchaseLine."No.";
                            PurchasePackingList."Item Description" := PurchaseLine.Description;
                            PurchasePackingList."Packing Description" := PurchaseLine."Packing Description";
                            PurchasePackingList."Order Quantity" := PurchaseLine.Quantity;
                            PurchasePackingList."Outstanding Quantity" := PurchaseLine."Outstanding Quantity";
                            PurchasePackingList."Unit Of Measure Code" := PurchaseLine."Unit of Measure Code";
                            PurchasePackingList.INSERT;
                        END;
                    END;
                    IF Selection = 2 THEN BEGIN
                        PurchaseLine.TESTFIELD(Crates);
                        PurchasePackingList.RESET;
                        PurchasePackingList.SETRANGE("Document Type", "Document Type");
                        PurchasePackingList.SETRANGE("Document No.", "No.");
                        PurchasePackingList.SETRANGE("Document Line No.", PurchaseLine."Line No.");
                        IF NOT PurchasePackingList.FINDFIRST THEN BEGIN
                            FOR i := 1 TO PurchaseLine.Crates DO BEGIN
                                SrNo += 1;
                                PurchasePackingList.INIT;
                                PurchasePackingList."Document Type" := PurchaseLine."Document Type";
                                PurchasePackingList."Document No." := PurchaseLine."Document No.";
                                PurchasePackingList."Document Line No." := PurchaseLine."Line No.";
                                PurchasePackingList."Line No." := GetLastPurchasePackingLineNo(PurchasePackingList);
                                PurchasePackingList."Vendor No." := PurchaseLine."Buy-from Vendor No.";
                                PurchasePackingList."Item No." := PurchaseLine."No.";
                                PurchasePackingList."Item Description" := PurchaseLine.Description;
                                PurchasePackingList."Packing Description" := PurchaseLine."Packing Description";
                                PurchasePackingList."Order Quantity" := PurchaseLine.Quantity;
                                PurchasePackingList."Outstanding Quantity" := PurchaseLine."Outstanding Quantity";
                                PurchasePackingList."Unit Of Measure Code" := PurchaseLine."Unit of Measure Code";
                                PurchasePackingList.VALIDATE("From Parcel No.", SrNo);
                                PurchasePackingList.VALIDATE("To Parcel No.", SrNo);
                                PurchasePackingList.INSERT;
                            END;
                        END;
                    END;
                UNTIL PurchaseLine.NEXT = 0;
                CLEAR(PurchasePackingListPage);
                PurchasePackingList.RESET;
                PurchasePackingList.SETRANGE("Document Type", "Document Type");
                PurchasePackingList.SETRANGE("Document No.", "No.");
                PurchasePackingListPage.SETTABLEVIEW(PurchasePackingList);
                PurchasePackingListPage.RUN;
            END;
        END;
    end;

    procedure GetLastPurchasePackingLineNo(var PurchasePackingList: Record "Purchase Packing List"): Integer
    var
        LastPurchasePackingList: Record "Purchase Packing List";
    begin
        LastPurchasePackingList.RESET;
        LastPurchasePackingList.SETRANGE("Document Type", PurchasePackingList."Document Type");
        LastPurchasePackingList.SETRANGE("Document No.", PurchasePackingList."Document No.");
        LastPurchasePackingList.SETRANGE("Document Line No.", PurchasePackingList."Document Line No.");
        IF LastPurchasePackingList.FINDLAST THEN
            EXIT(LastPurchasePackingList."Line No." + 10000)
        ELSE
            EXIT(10000);
    end;
}