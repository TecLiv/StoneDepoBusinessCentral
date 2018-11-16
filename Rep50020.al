report 50109 "Stock Status as on Date"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Stock Status as on Date.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem(Item; Item)
        {
            RequestFilterFields = "Location Filter", "No.";
            column(Comp_Name; COMPANYNAME)
            {
            }
            column(LocationCode; LocationCode)
            {
            }

            trigger OnAfterGetRecord()
            begin
                Item.CALCFIELDS(Inventory);
                Item.CALCFIELDS("Reserved Qty. on Inventory");
                Item.CALCFIELDS("Reserved Qty. on Sales Orders");
                Item.CALCFIELDS("Reserved Qty. on Purch. Orders");
                ShortQtyOnInventory := Item.Inventory - Item."Reserved Qty. on Inventory";
                //SOReserveQty := Item."Reserved Qty. on Sales Orders";
                SOReserveQty := Item."Reserved Qty. on Inventory";
                BackOrderQty := Item."Reserved Qty. on Purch. Orders";
                CalculateStockAsOnDate;
            end;

            trigger OnPreDataItem()
            begin
                LocationCode := Item.GETFILTER("Location Filter");
            end;
        }
        dataitem(Integer; Integer)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = FILTER (1 ..));
            column(Item_No; TempProcessOnlyforEMailReport.Code)
            {
            }
            column(Item_Description; ItemRec.Description)
            {
            }
            column(Item_CBM; ItemRec."Product Type")
            {
            }
            column(Item_GrosWeight; ItemRec."Gross Weight")
            {
            }
            column(Date_Period; TempProcessOnlyforEMailReport.Date)
            {
            }
            column(Stock_Qty; TempProcessOnlyforEMailReport."Decimal-A")
            {
            }
            column(Reservation_Qty; TempProcessOnlyforEMailReport."Decimal-B")
            {
            }
            column(PO_Qty; TempProcessOnlyforEMailReport."Decimal-C")
            {
            }
            column(PO_ReserveQty; TempProcessOnlyforEMailReport."Decimal-D")
            {
            }

            trigger OnAfterGetRecord()
            begin
                IF Number = 1 THEN
                    TempProcessOnlyforEMailReport.FIND('-')
                ELSE
                    TempProcessOnlyforEMailReport.NEXT;
                IF ItemRec.GET(TempProcessOnlyforEMailReport.Code) THEN;
            end;

            trigger OnPreDataItem()
            begin
                TempProcessOnlyforEMailReport.RESET;
                TempProcessOnlyforEMailReport.SETRANGE("Document Type", TempProcessOnlyforEMailReport."Document Type"::Purchase);
                TempProcessOnlyforEMailReport.SETRANGE("Document Subtype", TempProcessOnlyforEMailReport."Document Subtype"::B);
                SETRANGE(Number, 1, TempProcessOnlyforEMailReport.COUNT);
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        TempProcessOnlyforEMailReport.RESET;
        TempProcessOnlyforEMailReport.DELETEALL;
        CalcDates;
    end;

    var
        PeriodStartDate: array[20] of Date;
        PeriodEndDate: array[20] of Date;
        i: Integer;
        LocationCode: Code[10];
        PurchLine: Record "Purchase Line";
        EndingDate: Date;
        ShortQtyOnInventory: Decimal;
        SOReserveQty: Decimal;
        BackOrderQty: Decimal;
        TempProcessOnlyforEMailReport: Record "Process Only Buffer" temporary;
        Text010: Label 'The Date Formula %1 cannot be used. Try to restate it. E.g. 1M+CM instead of CM+1M.';
        ItemRec: Record Item;
        LocationFilterGV: Code[100];

    local procedure CalcDates()
    var
        i: Integer;
        PeriodLength2: DateFormula;
    begin
        PeriodStartDate[1] := TODAY;
        PeriodEndDate[1] := CALCDATE('CW', TODAY);
        FOR i := 2 TO ARRAYLEN(PeriodEndDate) DO BEGIN
            PeriodStartDate[i] := PeriodEndDate[i - 1] + 1;
            PeriodEndDate[i] := CALCDATE('1W', PeriodStartDate[i] - 1);
        END;
        EndingDate := PeriodEndDate[i];

        FOR i := 1 TO ARRAYLEN(PeriodEndDate) DO
            IF PeriodEndDate[i] < PeriodStartDate[i] THEN
                ERROR(Text010, '7D');

        PeriodStartDate[1] := 0D;
    end;

    procedure CalculateStockAsOnDate()
    var
        ItemRec: Record Item;
        SalesLine: Record "Sales Line";
        PurchLine: Record "Purchase Line";
    begin
        FOR i := 1 TO ARRAYLEN(PeriodEndDate) DO BEGIN
            PurchLine.RESET;
            PurchLine.SETRANGE("Document Type", PurchLine."Document Type"::Order);
            PurchLine.SETRANGE(Type, PurchLine.Type::Item);
            PurchLine.SETFILTER("No.", Item."No.");
            IF LocationCode <> '' THEN
                PurchLine.SETFILTER("Location Code", LocationCode);
            PurchLine.SETFILTER("Expected Receipt Date", '%1..%2', PeriodStartDate[i], PeriodEndDate[i]);
            IF PurchLine.FINDSET THEN BEGIN
                REPEAT
                    TempProcessOnlyforEMailReport.RESET;
                    TempProcessOnlyforEMailReport.SETRANGE("Document Type", TempProcessOnlyforEMailReport."Document Type"::Purchase);
                    TempProcessOnlyforEMailReport.SETRANGE("Document Subtype", TempProcessOnlyforEMailReport."Document Subtype"::B);
                    TempProcessOnlyforEMailReport.SETRANGE(Code, Item."No.");
                    IF i = 1 THEN
                        TempProcessOnlyforEMailReport.SETRANGE(Date, TODAY)
                    ELSE
                        TempProcessOnlyforEMailReport.SETRANGE(Date, PeriodStartDate[i]);
                    TempProcessOnlyforEMailReport.SETRANGE("Line No.", 1);
                    IF NOT TempProcessOnlyforEMailReport.FINDFIRST THEN BEGIN
                        TempProcessOnlyforEMailReport.INIT;
                        TempProcessOnlyforEMailReport."Document Type" := TempProcessOnlyforEMailReport."Document Type"::Purchase;
                        TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::B;
                        TempProcessOnlyforEMailReport.Code := Item."No.";
                        IF i = 1 THEN
                            TempProcessOnlyforEMailReport.Date := TODAY
                        ELSE
                            TempProcessOnlyforEMailReport.Date := PeriodStartDate[i];
                        TempProcessOnlyforEMailReport."Line No." := 1;
                        TempProcessOnlyforEMailReport."Decimal-A" := ShortQtyOnInventory;
                        TempProcessOnlyforEMailReport."Decimal-B" := SOReserveQty;
                        TempProcessOnlyforEMailReport."Decimal-C" := PurchLine."Outstanding Quantity";
                        TempProcessOnlyforEMailReport."Decimal-D" := BackOrderQty;
                        TempProcessOnlyforEMailReport."Ending Date" := PeriodEndDate[i];
                        TempProcessOnlyforEMailReport.INSERT;
                    END ELSE BEGIN
                        TempProcessOnlyforEMailReport."Decimal-C" += PurchLine."Outstanding Quantity";
                        TempProcessOnlyforEMailReport.MODIFY;
                    END;
                UNTIL PurchLine.NEXT = 0;
            END ELSE BEGIN
                TempProcessOnlyforEMailReport.INIT;
                TempProcessOnlyforEMailReport."Document Type" := TempProcessOnlyforEMailReport."Document Type"::Purchase;
                TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::B;
                TempProcessOnlyforEMailReport.Code := Item."No.";
                IF i = 1 THEN
                    TempProcessOnlyforEMailReport.Date := TODAY
                ELSE
                    TempProcessOnlyforEMailReport.Date := PeriodStartDate[i];
                TempProcessOnlyforEMailReport."Line No." := 1;
                TempProcessOnlyforEMailReport."Decimal-A" := ShortQtyOnInventory;
                TempProcessOnlyforEMailReport."Decimal-B" := SOReserveQty;
                TempProcessOnlyforEMailReport."Ending Date" := PeriodEndDate[i];
                TempProcessOnlyforEMailReport."Decimal-D" := BackOrderQty;
                TempProcessOnlyforEMailReport.INSERT;
            END;
        END;
    end;
}

