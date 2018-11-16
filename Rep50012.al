report 50107 "Inventory-Sales-Purch-Details2"
{
    // version DSJS

    DefaultLayout = RDLC;
    RDLCLayout = './Inventory-Sales-Purch-Details2.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = WHERE ("Item Not Use In Report" = CONST (false));
            RequestFilterFields = "No.";
            column(Start_Date_S; FORMAT(StartDate - 1))
            {
            }

            trigger OnAfterGetRecord()
            begin
                TotalPurchaseQty := 0;
                TotalSaleQuantity := 0;
                CalculateStockAsOnDatePurchase(Item."No.", StartDate2);
                CalculateStockAsOnDateSales(Item."No.", StartDate2);
                CalculateInventoryAsonDate(Item."No.");
            end;
        }
        dataitem(Item_Inventory; Integer)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = FILTER (1 ..));
            column(Item_No_Item; TempProcessOnlyforEMailReport.Code)
            {
            }
            column(DocSub_Type_Item; DocType)
            {
            }
            column(Item_Description_Item; ItemRec.Description)
            {
            }
            column(Item_Description2_Item; ItemRec."Description 2")
            {
            }
            column(Item_Finish; ItemRec.Finish)
            {
            }
            column(Date_Period_Item; FORMAT(TempProcessOnlyforEMailReport.Date, 0, '<Month Text> <Closing><Day>, <Year4>'))
            {
            }
            column(PurchInv_Qty_Item; TempProcessOnlyforEMailReport."Decimal-A")
            {
            }
            column(SalesInv_Qty_Item; TempProcessOnlyforEMailReport."Decimal-B")
            {
            }
            column(InvStock_Item; TempProcessOnlyforEMailReport."Decimal-C")
            {
            }
            column(LineNo_Item; TempProcessOnlyforEMailReport."Container No.")
            {
            }
            column(PO_Qty2_Item; FORMAT(TempProcessOnlyforEMailReport."Decimal-A"))
            {
            }
            column(Comp_Name_Item; COMPANYNAME)
            {
            }
            column(Container_No_Item; TempProcessOnlyforEMailReport.Description)
            {
            }
            column(Inventory_Qty_Item; InventoryQty)
            {
            }
            column(Ending_Date_Item; EndingDate)
            {
            }
            column(Date_filter_Item; FORMAT(StartDate) + '..' + FORMAT(EndingDate))
            {
            }
            column(UOM_Item; ItemRec."Purch. Unit of Measure")
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
                        IF ItemLedgerEntry.Quantity < 0 THEN
                            InventoryQty += ItemLedgerEntry.Quantity / ItemLedgerEntry."Qty. per Unit of Measure"
                        ELSE
                            InventoryQty += ItemLedgerEntry.Quantity * ItemLedgerEntry."Qty. per Unit of Measure";
                    UNTIL ItemLedgerEntry.NEXT = 0;
                END;

                DocType := TempProcessOnlyforEMailReport."Document Subtype";
            end;

            trigger OnPreDataItem()
            begin
                TempProcessOnlyforEMailReport.RESET;
                TempProcessOnlyforEMailReport.SETCURRENTKEY("Document Type", "Document Subtype", Code, "Line No.");
                TempProcessOnlyforEMailReport.SETRANGE("Document Type", TempProcessOnlyforEMailReport."Document Type"::All);
                TempProcessOnlyforEMailReport.SETFILTER("Document Subtype", '%1', TempProcessOnlyforEMailReport."Document Subtype"::"Inventory-Details");
                SETRANGE(Number, 1, TempProcessOnlyforEMailReport.COUNT);
            end;
        }
        dataitem(Sales; Integer)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = FILTER (1 ..));
            column(Item_No_S; TempProcessOnlyforEMailReport.Code)
            {
            }
            column(DocSub_Type_S; DocType)
            {
            }
            column(Item_Description_S; ItemRec.Description)
            {
            }
            column(Item_Description2_S; ItemRec."Description 2")
            {
            }
            column(Item_Finish_S; ItemRec.Finish)
            {
            }
            column(Date_Period_S; FORMAT(TempProcessOnlyforEMailReport.Date, 0, '<Month Text> <Closing><Day>, <Year4>'))
            {
            }
            column(PO_Qty_S; TempProcessOnlyforEMailReport."Decimal-A")
            {
            }
            column(LineNo_S; TempProcessOnlyforEMailReport."Container No.")
            {
            }
            column(ColumnName_S; TempProcessOnlyforEMailReport.Description)
            {
            }
            column(PO_Qty2_S; FORMAT(TempProcessOnlyforEMailReport."Decimal-A"))
            {
            }
            column(Comp_Name_S; COMPANYNAME)
            {
            }
            column(Invoice_No_S; TempProcessOnlyforEMailReport."Order No.")
            {
            }
            column(Inventory_Qty_S; InventoryQty)
            {
            }
            column(Ending_Date_S; EndingDate)
            {
            }
            column(UOM_S; ItemRec."Sales Unit of Measure")
            {
            }
            column(Date_filter_S; FORMAT(StartDate2) + '..' + FORMAT(EndingDate2))
            {
            }
            column(Inv_On_Startdate_S; TempProcessOnlyforEMailReport."Inventory On StartDate-1")
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
                TempProcessOnlyforEMailReport.SETFILTER("Document Subtype", '%1', TempProcessOnlyforEMailReport."Document Subtype"::"Sales-Details");
                SETRANGE(Number, 1, TempProcessOnlyforEMailReport.COUNT);
            end;
        }
        dataitem(Purchase; Integer)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = FILTER (1 ..));
            column(Item_No; TempProcessOnlyforEMailReport.Code)
            {
            }
            column(DocSub_Type; DocType)
            {
            }
            column(Item_Description; ItemRec.Description)
            {
            }
            column(Item_Description2; ItemRec."Description 2")
            {
            }
            column(Item_Finish_P; ItemRec.Finish)
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
            column(Ending_Date; EndingDate)
            {
            }
            column(Date_filter; FORMAT(StartDate2) + '..' + FORMAT(EndingDate2))
            {
            }
            column(UOM; ItemRec."Purch. Unit of Measure")
            {
            }
            column(Inv_On_Startdate; TempProcessOnlyforEMailReport."Inventory On StartDate-1")
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
                        IF ItemLedgerEntry.Quantity < 0 THEN
                            InventoryQty += ItemLedgerEntry.Quantity / ItemLedgerEntry."Qty. per Unit of Measure"
                        ELSE
                            InventoryQty += ItemLedgerEntry.Quantity * ItemLedgerEntry."Qty. per Unit of Measure";
                    UNTIL ItemLedgerEntry.NEXT = 0;
                END;
                DocType := TempProcessOnlyforEMailReport."Document Subtype";
            end;

            trigger OnPreDataItem()
            begin
                TempProcessOnlyforEMailReport.RESET;
                TempProcessOnlyforEMailReport.SETCURRENTKEY("Document Type", "Document Subtype", Code, "Line No.");
                TempProcessOnlyforEMailReport.SETRANGE("Document Type", TempProcessOnlyforEMailReport."Document Type"::All);
                TempProcessOnlyforEMailReport.SETFILTER("Document Subtype", '%1', TempProcessOnlyforEMailReport."Document Subtype"::"Purchase-Details");
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
                field("Start Date"; StartDate)
                {
                    ApplicationArea = All;
                }
                field("End Date"; EndingDate)
                {
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
        ItemDescriptionLbl = '''''';
        SizeLbl = 'Size';
        UOMLbl = 'UOMLbl';
        SQMLbl = '''''';
        StockQtyLbl = 'Stock Qty.';
        ReserveQtyoninventoryLbl = 'Reserve Qty. on inventory';
        SOHLbl = 'SOH';
        QtyOnPurchOrderLbl = 'Qty. On Purch. Order';
    }

    trigger OnInitReport()
    begin
        EndingDate := TODAY;
        //StartDate := CALCDATE('-CM',TODAY);
    end;

    trigger OnPreReport()
    begin
        TotalSaleQuantity := 0;
        TotalPurchaseQty := 0;

        TempProcessOnlyforEMailReport.RESET;
        TempProcessOnlyforEMailReport.SETRANGE("Document Type", TempProcessOnlyforEMailReport."Document Type"::All);
        TempProcessOnlyforEMailReport.SETFILTER("Document Subtype", '%1|%2|%3', TempProcessOnlyforEMailReport."Document Subtype"::"Inventory-Details",
              TempProcessOnlyforEMailReport."Document Subtype"::"Purchase-Details", TempProcessOnlyforEMailReport."Document Subtype"::"Sales-Details");
        IF TempProcessOnlyforEMailReport.FIND('-') THEN
            TempProcessOnlyforEMailReport.DELETEALL;

        StartDate2 := StartDate;
        EndingDate2 := EndingDate;
    end;

    var
        TempProcessOnlyforEMailReport: Record "Process Only Buffer2";
        Text010: Label 'The Date Formula %1 cannot be used. Try to restate it. E.g. 1M+CM instead of CM+1M.';
        ItemRec: Record Item;
        StartDate: Date;
        EndingDate: Date;
        PurchInvHeader: Record "Purch. Inv. Header";
        PurchInvLine: Record "Purch. Inv. Line";
        ItemLedgerEntry: Record "Item Ledger Entry";
        InventoryQty: Decimal;
        SrNo: Integer;
        SalesInvLine: Record "Sales Invoice Line";
        SalesInvHeader: Record "Sales Invoice Header";
        SrNoSales: Integer;
        DocType: Integer;
        SrNoInventory: Integer;
        TotalSaleQuantity: Decimal;
        TotalPurchaseQty: Decimal;
        StartDate2: Date;
        EndingDate2: Date;

    procedure CalculateStockAsOnDatePurchase(ItemNo: Code[20]; StartDate1: Date)
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
                        TempProcessOnlyforEMailReport.SETRANGE("Document Subtype", TempProcessOnlyforEMailReport."Document Subtype"::"Purchase-Details");
                        TempProcessOnlyforEMailReport.SETRANGE(Code, PurchInvLine."No.");
                        TempProcessOnlyforEMailReport.SETRANGE("Container No.", PurchInvHeader."Vendor Invoice No.");
                        TempProcessOnlyforEMailReport.SETRANGE("Line No.", 1);
                        IF NOT TempProcessOnlyforEMailReport.FINDFIRST THEN BEGIN
                            SrNo += 1;
                            TempProcessOnlyforEMailReport.INIT;
                            TempProcessOnlyforEMailReport."Document Type" := TempProcessOnlyforEMailReport."Document Type"::All;
                            TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::"Purchase-Details";
                            TempProcessOnlyforEMailReport.Code := PurchInvLine."No.";
                            TempProcessOnlyforEMailReport."Container No." := PurchInvHeader."Vendor Invoice No.";
                            TempProcessOnlyforEMailReport."Line No." := SrNo;
                            TempProcessOnlyforEMailReport."Decimal-A" := PurchInvLine.Quantity;
                            TempProcessOnlyforEMailReport."Order No." := PurchInvHeader."Order No.";
                            TempProcessOnlyforEMailReport.Description := PurchInvHeader."Container No.";
                            TotalPurchaseQty := TotalPurchaseQty + PurchInvLine.Quantity;  //
                            TempProcessOnlyforEMailReport."Inventory On StartDate-1" := StartDate1 - 1;  //
                            TempProcessOnlyforEMailReport.INSERT;
                        END ELSE BEGIN
                            TempProcessOnlyforEMailReport."Decimal-A" += PurchInvLine.Quantity;
                            TotalPurchaseQty := TotalPurchaseQty + PurchInvLine.Quantity;  //
                            TempProcessOnlyforEMailReport.MODIFY;
                        END;
                    UNTIL PurchInvLine.NEXT = 0;
                END ELSE BEGIN
                    SrNo += 1;
                    TempProcessOnlyforEMailReport.INIT;
                    TempProcessOnlyforEMailReport."Document Type" := TempProcessOnlyforEMailReport."Document Type"::All;
                    TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::"Purchase-Details";
                    TempProcessOnlyforEMailReport.Code := ItemNo;
                    TempProcessOnlyforEMailReport."Container No." := '';
                    TempProcessOnlyforEMailReport."Line No." := SrNo;
                    TempProcessOnlyforEMailReport."Decimal-A" := 0;
                    TempProcessOnlyforEMailReport."Order No." := '';
                    TempProcessOnlyforEMailReport.Description := '';
                    //TotalPurchaseQty := 0;
                    TempProcessOnlyforEMailReport.INSERT;
                END;
            UNTIL PurchInvHeader.NEXT = 0;
        END ELSE BEGIN
            SrNo += 1;
            TempProcessOnlyforEMailReport.INIT;
            TempProcessOnlyforEMailReport."Document Type" := TempProcessOnlyforEMailReport."Document Type"::All;
            TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::"Purchase-Details";
            TempProcessOnlyforEMailReport.Code := ItemNo;
            TempProcessOnlyforEMailReport."Container No." := '';
            TempProcessOnlyforEMailReport."Line No." := SrNo;
            TempProcessOnlyforEMailReport."Decimal-A" := 0;
            TempProcessOnlyforEMailReport."Order No." := '';
            TempProcessOnlyforEMailReport.Description := '';
            //TotalPurchaseQty := 0;
            TempProcessOnlyforEMailReport.INSERT;
        END;
    end;

    procedure CalculateStockAsOnDateSales(ItemNo: Code[20]; StartDate1: Date)
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
                        TempProcessOnlyforEMailReport.SETRANGE("Document Subtype", TempProcessOnlyforEMailReport."Document Subtype"::"Sales-Details");
                        TempProcessOnlyforEMailReport.SETRANGE(Code, SalesInvLine."No.");
                        TempProcessOnlyforEMailReport.SETRANGE("Order No.", SalesInvHeader."No.");
                        IF NOT TempProcessOnlyforEMailReport.FINDFIRST THEN BEGIN
                            SrNoSales += 1;
                            TempProcessOnlyforEMailReport.INIT;
                            TempProcessOnlyforEMailReport."Document Type" := TempProcessOnlyforEMailReport."Document Type"::All;
                            TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::"Sales-Details";
                            TempProcessOnlyforEMailReport.Code := SalesInvLine."No.";
                            TempProcessOnlyforEMailReport."Container No." := SalesInvHeader."External Document No.";
                            TempProcessOnlyforEMailReport."Line No." := SrNoSales;
                            TempProcessOnlyforEMailReport."Decimal-A" := SalesInvLine.Quantity;
                            TempProcessOnlyforEMailReport."Order No." := SalesInvHeader."No.";
                            TempProcessOnlyforEMailReport.Description := SalesInvHeader."Bill-to Name";
                            TotalSaleQuantity := TotalSaleQuantity + SalesInvLine.Quantity;  //
                            TempProcessOnlyforEMailReport."Inventory On StartDate-1" := StartDate1 - 1;  //
                            TempProcessOnlyforEMailReport.INSERT;
                        END ELSE BEGIN
                            TempProcessOnlyforEMailReport."Order No." := SalesInvLine."Document No.";
                            TempProcessOnlyforEMailReport.Description := SalesInvLine."Bill-to Customer No.";
                            TempProcessOnlyforEMailReport."Decimal-A" += SalesInvLine.Quantity;
                            TotalSaleQuantity := TotalSaleQuantity + SalesInvLine.Quantity;  //
                            TempProcessOnlyforEMailReport.MODIFY;
                        END;
                    UNTIL SalesInvLine.NEXT = 0;
                END ELSE BEGIN
                    SrNoSales += 1;
                    TempProcessOnlyforEMailReport.INIT;
                    TempProcessOnlyforEMailReport."Document Type" := TempProcessOnlyforEMailReport."Document Type"::All;
                    TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::"Sales-Details";
                    TempProcessOnlyforEMailReport.Code := ItemNo;
                    TempProcessOnlyforEMailReport."Line No." := SrNoSales;
                    //TotalSaleQuantity := 0;
                    TempProcessOnlyforEMailReport.INSERT;
                END;
            UNTIL SalesInvHeader.NEXT = 0;
        END ELSE BEGIN
            SrNoSales += 1;
            TempProcessOnlyforEMailReport.INIT;
            TempProcessOnlyforEMailReport."Document Type" := TempProcessOnlyforEMailReport."Document Type"::All;
            TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::"Sales-Details";
            TempProcessOnlyforEMailReport.Code := ItemNo;
            TempProcessOnlyforEMailReport."Container No." := '';
            TempProcessOnlyforEMailReport."Line No." := SrNoSales;
            TempProcessOnlyforEMailReport."Decimal-A" := 0;
            TempProcessOnlyforEMailReport."Order No." := '';
            TempProcessOnlyforEMailReport.Description := '';
            //TotalSaleQuantity := 0;
            TempProcessOnlyforEMailReport.INSERT;
        END;
    end;

    local procedure CalculateInventoryAsonDate(ItemNo: Code[20])
    var
        ItemRec: Record Item;
    begin
        IF ItemRec.GET(ItemNo) THEN BEGIN
            SrNoInventory += 1;
            ItemRec.CALCFIELDS("Purchases (Qty.)");
            ItemRec.CALCFIELDS("Sales (Qty.)");
            TempProcessOnlyforEMailReport.INIT;
            TempProcessOnlyforEMailReport."Document Type" := TempProcessOnlyforEMailReport."Document Type"::All;
            TempProcessOnlyforEMailReport."Document Subtype" := TempProcessOnlyforEMailReport."Document Subtype"::"Inventory-Details";
            TempProcessOnlyforEMailReport.Code := ItemNo;
            TempProcessOnlyforEMailReport."Container No." := '';
            TempProcessOnlyforEMailReport."Line No." := SrNoInventory;
            TempProcessOnlyforEMailReport."Decimal-A" := TotalPurchaseQty;
            TempProcessOnlyforEMailReport."Decimal-B" := TotalSaleQuantity;
            TempProcessOnlyforEMailReport."Decimal-C" := TotalPurchaseQty - TotalSaleQuantity;
            TempProcessOnlyforEMailReport."Order No." := '';
            TempProcessOnlyforEMailReport.Description := '';
            TempProcessOnlyforEMailReport.INSERT;
        END;
    end;
}

