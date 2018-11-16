report 50112 "Inventory Status-Purchase"
{
    // version DSJS

    DefaultLayout = RDLC;
    RDLCLayout = './Inventory Status-Purchase.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem(DataItem1000000025; Item)
        {
            RequestFilterFields = "No.";

            trigger OnAfterGetRecord()
            begin
                CalculateStockAsOnDate(DataItem1000000025."No.");
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
            column(Date_Period; FORMAT(TempProcessOnlyforEMailReport.Date, 0, '<Month Text> <Closing><Day>, <Year4>'))
            {
            }
            column(PO_Qty; TempProcessOnlyforEMailReport."Decimal-A")
            {
            }
            column(LineNo; TempProcessOnlyforEMailReport."Container No.")
            {
            }
            column(ColumnName; TempProcessOnlyforEMailReport."Container No.")
            {
            }
            column(PO_Qty2; FORMAT(TempProcessOnlyforEMailReport."Decimal-A"))
            {
            }
            column(Comp_Name; COMPANYNAME)
            {
            }
            column(PO_No; TempProcessOnlyforEMailReport."Order No.")
            {
            }
            column(Container_No; TempProcessOnlyforEMailReport.Description)
            {
            }
            column(Inventory_Qty; InventoryQty)
            {
            }
            column(Start_Date; FORMAT(StartDate - 1))
            {
            }
            column(Ending_Date; EndingDate)
            {
            }
            column(Date_filter; FORMAT(StartDate) + '..' + FORMAT(EndingDate))
            {
            }
            column(UOM; ItemRec."Purch. Unit of Measure")
            {
            }

            trigger OnAfterGetRecord()
            begin
                IF Number = 1 THEN
                    TempProcessOnlyforEMailReport.FIND('-')
                ELSE
                    TempProcessOnlyforEMailReport.NEXT;

                IF ItemRec.GET(TempProcessOnlyforEMailReport.Code) THEN;

                InventoryQty := 0;
                ItemLedgerEntry.RESET;
                ItemLedgerEntry.SETRANGE("Item No.", TempProcessOnlyforEMailReport.Code);
                ItemLedgerEntry.SETFILTER("Posting Date", '%1..%2', 0D, (StartDate - 1));
                ERROR('..%1...', StartDate - 1);
                IF ItemLedgerEntry.FINDSET THEN BEGIN
                    REPEAT
                        IF ItemLedgerEntry.Quantity < 0 THEN
                            InventoryQty += ItemLedgerEntry.Quantity / ItemLedgerEntry."Qty. per Unit of Measure"
                        ELSE
                            InventoryQty += ItemLedgerEntry.Quantity * ItemLedgerEntry."Qty. per Unit of Measure";
                    UNTIL ItemLedgerEntry.NEXT = 0;
                END;
            end;

            trigger OnPreDataItem()
            begin
                TempProcessOnlyforEMailReport.RESET;
                TempProcessOnlyforEMailReport.SETCURRENTKEY("Document Type", "Document Subtype", Code, "Line No.");
                TempProcessOnlyforEMailReport.SETRANGE("Document Type", TempProcessOnlyforEMailReport."Document Type"::All);
                TempProcessOnlyforEMailReport.SETRANGE("Document Subtype", TempProcessOnlyforEMailReport."Document Subtype"::"Container-Availability");
                SETRANGE(Number, 1, TempProcessOnlyforEMailReport.COUNT);
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                field(StartDate; StartDate)
                {
                    Caption = 'Start Date';
                    ApplicationArea = All;
                }
                field(EndingDate; EndingDate)
                {
                    Caption = 'End Date';
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
        TempProcessOnlyforEMailReport.SETRANGE("Document Type", TempProcessOnlyforEMailReport."Document Type"::All);
        TempProcessOnlyforEMailReport.SETRANGE("Document Subtype", TempProcessOnlyforEMailReport."Document Subtype"::"Container-Availability");
        IF TempProcessOnlyforEMailReport.FIND('-') THEN
            TempProcessOnlyforEMailReport.DELETEALL;
    end;

    var
        TempProcessOnlyforEMailReport: Record "Process Only Buffer" temporary;
        Text010: Label 'The Date Formula %1 cannot be used. Try to restate it. E.g. 1M+CM instead of CM+1M.';
        ItemRec: Record Item;
        StartDate: Date;
        EndingDate: Date;
        PurchInvHeader: Record "Purch. Inv. Header";
        PurchInvLine: Record "Purch. Inv. Line";
        ItemLedgerEntry: Record "Item Ledger Entry";
        InventoryQty: Decimal;
        SrNo: Integer;

    procedure CalculateStockAsOnDate(ItemNo: Code[20])
    begin
        PurchInvHeader.RESET;
        PurchInvHeader.SETRANGE("Posting Date", StartDate, EndingDate);
        IF PurchInvHeader.FINDSET THEN BEGIN
            REPEAT
                PurchInvLine.RESET;
                PurchInvLine.SETRANGE("Document No.", PurchInvHeader."No.");
                PurchInvLine.SETRANGE(Type, PurchInvLine.Type::Item);
                PurchInvLine.SETRANGE("No.", ItemNo);
                IF PurchInvLine.FINDSET THEN BEGIN
                    REPEAT
                        TempProcessOnlyforEMailReport.RESET;
                        TempProcessOnlyforEMailReport.SETRANGE("Document Type", TempProcessOnlyforEMailReport."Document Type"::All);
                        TempProcessOnlyforEMailReport.SETRANGE("Document Subtype", TempProcessOnlyforEMailReport."Document Subtype"::"Container-Availability");
                        TempProcessOnlyforEMailReport.SETRANGE(Code, PurchInvLine."No.");
                        TempProcessOnlyforEMailReport.SETRANGE("Container No.", PurchInvHeader."Vendor Invoice No.");
                        TempProcessOnlyforEMailReport.SETRANGE("Line No.", 1);
                        IF NOT TempProcessOnlyforEMailReport.FINDFIRST THEN BEGIN
                            SrNo += 1;
                            TempProcessOnlyforEMailReport.INIT;
                            TempProcessOnlyforEMailReport."Document Type" := TempProcessOnlyforEMailReport."Document Type"::All;
                            TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::"Container-Availability";
                            TempProcessOnlyforEMailReport.Code := PurchInvLine."No.";
                            TempProcessOnlyforEMailReport."Container No." := PurchInvHeader."Vendor Invoice No.";
                            TempProcessOnlyforEMailReport."Line No." := SrNo;
                            TempProcessOnlyforEMailReport."Decimal-A" := PurchInvLine.Quantity;
                            TempProcessOnlyforEMailReport."Order No." := PurchInvHeader."Order No.";
                            TempProcessOnlyforEMailReport.Description := PurchInvHeader."Container No.";
                            TempProcessOnlyforEMailReport.INSERT;
                        END ELSE BEGIN
                            TempProcessOnlyforEMailReport."Decimal-A" += PurchInvLine.Quantity;
                            TempProcessOnlyforEMailReport.MODIFY;
                        END;
                    UNTIL PurchInvLine.NEXT = 0;
                END ELSE BEGIN
                    SrNo += 1;
                    TempProcessOnlyforEMailReport.INIT;
                    TempProcessOnlyforEMailReport."Document Type" := TempProcessOnlyforEMailReport."Document Type"::All;
                    TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::"Container-Availability";
                    TempProcessOnlyforEMailReport.Code := ItemNo;
                    TempProcessOnlyforEMailReport."Container No." := '';
                    TempProcessOnlyforEMailReport."Line No." := SrNo;
                    TempProcessOnlyforEMailReport."Decimal-A" := 0;
                    TempProcessOnlyforEMailReport."Order No." := '';
                    TempProcessOnlyforEMailReport.Description := '';
                    TempProcessOnlyforEMailReport.INSERT;
                END;
            UNTIL PurchInvHeader.NEXT = 0;
        END ELSE BEGIN
            SrNo += 1;
            TempProcessOnlyforEMailReport.INIT;
            TempProcessOnlyforEMailReport."Document Type" := TempProcessOnlyforEMailReport."Document Type"::All;
            TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::"Container-Availability";
            TempProcessOnlyforEMailReport.Code := ItemNo;
            TempProcessOnlyforEMailReport."Container No." := '';
            TempProcessOnlyforEMailReport."Line No." := SrNo;
            TempProcessOnlyforEMailReport."Decimal-A" := 0;
            TempProcessOnlyforEMailReport."Order No." := '';
            TempProcessOnlyforEMailReport.Description := '';
            TempProcessOnlyforEMailReport.INSERT;
        END;
    end;
}

