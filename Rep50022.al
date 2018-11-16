report 50111 "Container Availability-Old"
{
    // version DSJS

    DefaultLayout = RDLC;
    RDLCLayout = './Container Availability-Old.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem(Item; Item)
        {
            RequestFilterFields = "No.", "Location Filter";
            column(Comp_Name; COMPANYNAME)
            {
            }

            trigger OnAfterGetRecord()
            begin
                Item.CALCFIELDS(Inventory);
                Item.CALCFIELDS("Reserved Qty. on Inventory");
                Item.CALCFIELDS("Reserved Qty. on Sales Orders");
                Item.CALCFIELDS("Reserved Qty. on Purch. Orders");
                StockQty := Item.Inventory;
                SOReserveQty := Item."Reserved Qty. on Inventory";
                SOHQtyOnInventory := Item.Inventory - Item."Reserved Qty. on Inventory";
                PurchaseOrderQty := Item."Reserved Qty. on Purch. Orders";
                CalculateStockAsOnDate;
            end;
        }
        dataitem(DataItem1000000000; Integer)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = FILTER (1 ..));
            column(Item_No; TempProcessOnlyforEMailReport.Code)
            {
            }
            column(Item_Description; ItemRec.Description)
            {
            }
            column(Item_ProductSize; ItemRec."Description 2")
            {
            }
            column(Item_UOM; ItemRec."Base Unit of Measure")
            {
            }
            column(Item_SQM; ItemRec."Piece SQM")
            {
            }
            column(Item_CBM; ItemRec."Product Type")
            {
            }
            column(Item_GrosWeight; ItemRec."Gross Weight")
            {
            }
            column(Date_Period; FORMAT(TempProcessOnlyforEMailReport.Date, 0, '<Month Text> <Closing><Day>, <Year4>'))
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
            column(LineNo; TempProcessOnlyforEMailReport."Line No.")
            {
            }
            column(ColumnName; TempProcessOnlyforEMailReport."Column Name")
            {
            }
            column(VendorNo; ItemRec."Vendor No.")
            {
            }
            column(PO_Qty2; FORMAT(TempProcessOnlyforEMailReport."Decimal-C"))
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

            trigger OnPostDataItem()
            begin
                MESSAGE('Done....');
            end;

            trigger OnPreDataItem()
            begin
                TempProcessOnlyforEMailReport.RESET;
                TempProcessOnlyforEMailReport.SETCURRENTKEY(TempProcessOnlyforEMailReport."Document Type", TempProcessOnlyforEMailReport."Document Subtype", TempProcessOnlyforEMailReport.Code, TempProcessOnlyforEMailReport."Line No.");
                TempProcessOnlyforEMailReport.SETRANGE(TempProcessOnlyforEMailReport."Document Type", TempProcessOnlyforEMailReport."Document Type"::Purchase);
                TempProcessOnlyforEMailReport.SETRANGE(TempProcessOnlyforEMailReport."Document Subtype", TempProcessOnlyforEMailReport."Document Subtype"::"Container-Availability");
                SETRANGE(Number, 1, TempProcessOnlyforEMailReport.COUNT);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field(ContainerNo; ContainerNo)
                {
                    Caption = 'Container No.';
                    ApplicationArea = All;
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
        ItemNoLbl = 'Item No.';
        ItemDescriptionLbl = 'Item Description';
        SizeLbl = 'Size';
        UOMLbl = 'UOMLbl';
        SQMLbl = 'SQM';
        StockQtyLbl = 'Stock Qty.';
        ReserveQtyoninventoryLbl = 'Reserve Qty. on inventory';
        SOHLbl = 'SOH';
        QtyOnPurchOrderLbl = 'Qty. On Purch. Order';
    }

    trigger OnPreReport()
    begin
        TempProcessOnlyforEMailReport.RESET;
        TempProcessOnlyforEMailReport.SETRANGE(TempProcessOnlyforEMailReport."Document Type", TempProcessOnlyforEMailReport."Document Type"::Purchase);
        TempProcessOnlyforEMailReport.SETRANGE(TempProcessOnlyforEMailReport."Document Subtype", TempProcessOnlyforEMailReport."Document Subtype"::"Container-Availability");
        IF TempProcessOnlyforEMailReport.FIND('-') THEN
            TempProcessOnlyforEMailReport.DELETEALL;

        CalcDates;
    end;

    var
        PurchLine: Integer;
        TempProcessOnlyforEMailReport: Record "Process Only Buffer";
        TempProcessOnlyforEMailReport2: Record "Process Only Buffer";
        Text010: Label 'The Date Formula %1 cannot be used. Try to restate it. E.g. 1M+CM instead of CM+1M.';
        ContainerNo: Code[11];
        ItemRec: Record Item;
        PeriodStartDate: array[20] of Date;
        PeriodEndDate: array[20] of Date;
        i: Integer;
        EndingDate: Date;
        SOHQtyOnInventory: Decimal;
        SOReserveQty: Decimal;
        PurchaseOrderQty: Decimal;
        StockQty: Decimal;

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
            PurchLine.SETFILTER("Expected Receipt Date", '%1..%2', PeriodStartDate[i], PeriodEndDate[i]);
            IF PurchLine.FINDSET THEN BEGIN
                REPEAT
                    TempProcessOnlyforEMailReport.RESET;
                    TempProcessOnlyforEMailReport.SETRANGE("Document Type", TempProcessOnlyforEMailReport."Document Type"::Purchase);
                    TempProcessOnlyforEMailReport.SETRANGE("Document Subtype", TempProcessOnlyforEMailReport."Document Subtype"::"Container-Availability");
                    TempProcessOnlyforEMailReport.SETRANGE(Code, Item."No.");
                    IF i = 1 THEN
                        TempProcessOnlyforEMailReport.SETRANGE(Date, TODAY)
                    ELSE
                        TempProcessOnlyforEMailReport.SETRANGE(Date, PeriodStartDate[i]);
                    TempProcessOnlyforEMailReport.SETRANGE("Line No.", 1);
                    IF NOT TempProcessOnlyforEMailReport.FINDFIRST THEN BEGIN
                        TempProcessOnlyforEMailReport.INIT;
                        TempProcessOnlyforEMailReport."Document Type" := TempProcessOnlyforEMailReport."Document Type"::Purchase;
                        TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::"Container-Availability";
                        TempProcessOnlyforEMailReport.Code := Item."No.";
                        IF i = 1 THEN
                            TempProcessOnlyforEMailReport.Date := TODAY
                        ELSE
                            TempProcessOnlyforEMailReport.Date := PeriodStartDate[i];
                        TempProcessOnlyforEMailReport."Container No." := PurchLine."Container No.";
                        TempProcessOnlyforEMailReport."Line No." := 1;

                        TempProcessOnlyforEMailReport."Decimal-A" := SOHQtyOnInventory;
                        TempProcessOnlyforEMailReport."Decimal-B" := SOReserveQty;
                        TempProcessOnlyforEMailReport."Decimal-C" := PurchLine."Outstanding Quantity";
                        TempProcessOnlyforEMailReport."Decimal-D" := PurchaseOrderQty;
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
                TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::"Container-Availability";
                TempProcessOnlyforEMailReport.Code := Item."No.";
                IF i = 1 THEN
                    TempProcessOnlyforEMailReport.Date := TODAY
                ELSE
                    TempProcessOnlyforEMailReport.Date := PeriodStartDate[i];
                TempProcessOnlyforEMailReport."Container No." := PurchLine."Container No.";
                TempProcessOnlyforEMailReport."Line No." := 1;
                TempProcessOnlyforEMailReport."Decimal-A" := SOHQtyOnInventory;
                TempProcessOnlyforEMailReport."Decimal-B" := SOReserveQty;
                TempProcessOnlyforEMailReport."Ending Date" := PeriodEndDate[i];
                TempProcessOnlyforEMailReport."Decimal-D" := PurchaseOrderQty;
                TempProcessOnlyforEMailReport.INSERT;
            END;
        END;
    end;
}

