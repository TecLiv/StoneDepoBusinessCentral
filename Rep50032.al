report 50113 "Inventory Status-Sales"
{
    // version DSJS
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Inventory Status-Sales.rdlc';

    dataset
    {
        dataitem(DataItem1000000004; Item)
        {

            trigger OnAfterGetRecord()
            begin
                CalculateStockAsOnDate(DataItem1000000004."No.");
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
            column(ColumnName; TempProcessOnlyforEMailReport.Description)
            {
            }
            column(PO_Qty2; FORMAT(TempProcessOnlyforEMailReport."Decimal-A"))
            {
            }
            column(Comp_Name; COMPANYNAME)
            {
            }
            column(Invoice_No; TempProcessOnlyforEMailReport."Order No.")
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
            column(UOM; ItemRec."Sales Unit of Measure")
            {
            }
            column(Date_filter; FORMAT(StartDate) + '..' + FORMAT(EndingDate))
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
                IF ItemLedgerEntry.FINDSET THEN BEGIN
                    REPEAT
                        InventoryQty += ItemLedgerEntry.Quantity;
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
        SalesInvHeader: Record "Sales Invoice Header";
        SalesInvLine: Record "Sales Invoice Line";
        ItemLedgerEntry: Record "Item Ledger Entry";
        InventoryQty: Decimal;
        SrNo: Integer;

    procedure CalculateStockAsOnDate(ItemNo: Code[20])
    begin
        SalesInvHeader.RESET;
        SalesInvHeader.SETRANGE("Posting Date", StartDate, EndingDate);
        IF SalesInvHeader.FINDSET THEN BEGIN
            REPEAT
                SalesInvLine.RESET;
                SalesInvLine.SETRANGE("Document No.", SalesInvHeader."No.");
                SalesInvLine.SETRANGE(Type, SalesInvLine.Type::Item);
                SalesInvLine.SETFILTER("No.", ItemNo);
                IF SalesInvLine.FINDSET THEN BEGIN
                    REPEAT
                        TempProcessOnlyforEMailReport.RESET;
                        TempProcessOnlyforEMailReport.SETRANGE("Document Type", TempProcessOnlyforEMailReport."Document Type"::All);
                        TempProcessOnlyforEMailReport.SETRANGE("Document Subtype", TempProcessOnlyforEMailReport."Document Subtype"::"Container-Availability");
                        TempProcessOnlyforEMailReport.SETRANGE(Code, SalesInvLine."No.");
                        TempProcessOnlyforEMailReport.SETRANGE("Order No.", SalesInvHeader."No.");
                        IF NOT TempProcessOnlyforEMailReport.FINDFIRST THEN BEGIN
                            SrNo += 1;
                            TempProcessOnlyforEMailReport.INIT;
                            TempProcessOnlyforEMailReport."Document Type" := TempProcessOnlyforEMailReport."Document Type"::All;
                            TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::"Container-Availability";
                            TempProcessOnlyforEMailReport.Code := SalesInvLine."No.";
                            TempProcessOnlyforEMailReport."Container No." := SalesInvHeader."External Document No.";
                            TempProcessOnlyforEMailReport."Line No." := SrNo;
                            TempProcessOnlyforEMailReport."Decimal-A" := SalesInvLine.Quantity;
                            TempProcessOnlyforEMailReport."Order No." := SalesInvHeader."No.";
                            TempProcessOnlyforEMailReport.Description := SalesInvHeader."Bill-to Name";
                            TempProcessOnlyforEMailReport.INSERT;
                        END ELSE BEGIN
                            TempProcessOnlyforEMailReport."Order No." := SalesInvLine."Document No.";
                            TempProcessOnlyforEMailReport.Description := SalesInvLine."Bill-to Customer No.";
                            TempProcessOnlyforEMailReport."Decimal-A" += SalesInvLine.Quantity;
                            TempProcessOnlyforEMailReport.MODIFY;
                        END;
                    UNTIL SalesInvLine.NEXT = 0;
                END ELSE BEGIN
                    SrNo += 1;
                    TempProcessOnlyforEMailReport.INIT;
                    TempProcessOnlyforEMailReport."Document Type" := TempProcessOnlyforEMailReport."Document Type"::All;
                    TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::"Container-Availability";
                    TempProcessOnlyforEMailReport.Code := ItemNo;
                    TempProcessOnlyforEMailReport."Line No." := SrNo;
                    TempProcessOnlyforEMailReport.INSERT;
                END;
            UNTIL SalesInvHeader.NEXT = 0;
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

