report 50110 "Stock Availability"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Stock Availability.rdlc';
    Caption = 'Stock Availability';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = SORTING (Finish, Description, "Description 2")
                                ORDER(Ascending)
                                WHERE ("Item Not Use In Report" = FILTER (false));
            RequestFilterFields = "No.";
            column(Comp_Name; COMPANYNAME)
            {
            }

            trigger OnAfterGetRecord()
            begin
                Item.CALCFIELDS(Inventory);
                Item.CALCFIELDS("Reserved Qty. on Inventory");
                Item.CALCFIELDS("Reserved Qty. on Purch. Orders");
                Item.CALCFIELDS("Qty. on Purch. Order");
                Item.CALCFIELDS("Reserved Qty. on Purch. Orders");
                StockQtyOnInventory := Item.Inventory - Item."Reserved Qty. on Inventory";
                ReserveQty := Item."Reserved Qty. on Inventory";
                PurchaseOrderQty := Item."Qty. on Purch. Order";
                ReserveQtyOnPurchOrder := Item."Reserved Qty. on Purch. Orders";
                CalculateStock;
            end;
        }
        dataitem(DataItem1000000001; Integer)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = FILTER (1 ..));
            column(Item_No; TempProcessOnlyBuffer.Code)
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
            column(Item_Finish; ItemRec.Finish)
            {
            }
            column(Date_Period; FORMAT(TempProcessOnlyBuffer.Date, 0, '<Month Text> <Closing><Day>, <Year4>'))
            {
            }
            column(Stock_Qty; TempProcessOnlyBuffer."Decimal-A")
            {
            }
            column(Reservation_Qty; TempProcessOnlyBuffer."Decimal-B")
            {
            }
            column(PO_Qty; TempProcessOnlyBuffer."Decimal-C")
            {
            }
            column(PO_ReserveQty; TempProcessOnlyBuffer."Decimal-D")
            {
            }
            column(Column_Name; TempProcessOnlyBuffer."Column Name")
            {
            }
            column(LineNo; TempProcessOnlyBuffer."Line No.")
            {
            }
            column(Period_Date; TempProcessOnlyBuffer.Date)
            {
            }
            column(ReserveQtyOn_PurchOrder; TempProcessOnlyBuffer."Decimal-E")
            {
            }
            column(BalanceQty_PO; TempProcessOnlyBuffer."Decimal-F")
            {
            }
            column(QtyTo_Sell; TempProcessOnlyBuffer."Decimal-G")
            {
            }
            column(Vend_InvoiceNo; TempProcessOnlyBuffer."Vendor Invoice No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                IF Number = 1 THEN
                    TempProcessOnlyBuffer.FIND('-')
                ELSE
                    TempProcessOnlyBuffer.NEXT;

                IF ItemRec.GET(TempProcessOnlyBuffer.Code) THEN;
            end;

            trigger OnPreDataItem()
            begin
                TempProcessOnlyBuffer.RESET;
                TempProcessOnlyBuffer.SETRANGE(TempProcessOnlyBuffer."Document Type", TempProcessOnlyBuffer."Document Type"::Purchase);
                TempProcessOnlyBuffer.SETRANGE(TempProcessOnlyBuffer."Document Subtype", TempProcessOnlyBuffer."Document Subtype"::"Container-Availability");
                SETRANGE(Number, 1, TempProcessOnlyBuffer.COUNT);
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
        ItemNoLbl = 'Item No.';
        ItemDescriptionLbl = 'Product Name';
        SizeLbl = 'Size';
        UOMLbl = 'UOM';
        SQMLbl = 'SQM';
        StockQtyLbl = 'Stock Qty.';
        ReserveQtyoninventoryLbl = 'Reserve Qty.(Stock)';
        SOHLbl = 'Stock In Hand';
        QtyOnPurchOrderLbl = 'Qty. In Transit (PO)';
        FinishedLbl = 'Finished';
        QtyToSellLbl = 'Qty. To Sell';
        ReserveQtyPOLbl = 'Reserve Qty.(PO)';
        BalanceQtyPOLbl = 'Balance Qty. (PO)';
    }

    trigger OnPreReport()
    begin
        TempProcessOnlyBuffer.RESET;
        TempProcessOnlyBuffer.SETRANGE(TempProcessOnlyBuffer."Document Type", TempProcessOnlyBuffer."Document Type"::Purchase);
        TempProcessOnlyBuffer.SETRANGE(TempProcessOnlyBuffer."Document Subtype", TempProcessOnlyBuffer."Document Subtype"::"Container-Availability");
        IF TempProcessOnlyBuffer.FIND('-') THEN
            TempProcessOnlyBuffer.DELETEALL;
    end;

    var
        TempProcessOnlyBuffer: Record "Process Only Buffer" temporary;
        ItemRec: Record Item;
        Text010: Label 'The Date Formula %1 cannot be used. Try to restate it. E.g. 1M+CM instead of CM+1M.';
        StockQty: Decimal;
        ReserveQty: Decimal;
        StockQtyOnInventory: Decimal;
        PurchaseOrderQty: Decimal;
        ReserveQtyOnPurchOrder: Decimal;

    procedure CalculateStock()
    var
        ItemRec: Record Item;
        SalesLine: Record "Sales Line";
        PurchLine: Record "Purchase Line";
        PurchaseHeader: Record "Purchase Header";
    begin
        PurchLine.RESET;
        PurchLine.SETCURRENTKEY("Document Type", "Expected Receipt Date");
        PurchLine.SETRANGE("Document Type", PurchLine."Document Type"::Order);
        PurchLine.SETRANGE(Type, PurchLine.Type::Item);
        PurchLine.SETFILTER("No.", Item."No.");
        PurchLine.SETRANGE("Container Status", PurchLine."Container Status"::"In Transit");
        IF PurchLine.FINDSET THEN BEGIN
            REPEAT
                TempProcessOnlyBuffer.RESET;
                TempProcessOnlyBuffer.SETRANGE("Document Type", TempProcessOnlyBuffer."Document Type"::Purchase);
                TempProcessOnlyBuffer.SETRANGE("Document Subtype", TempProcessOnlyBuffer."Document Subtype"::"Container-Availability");
                TempProcessOnlyBuffer.SETRANGE(Code, Item."No.");
                TempProcessOnlyBuffer.SETRANGE(Date, PurchLine."Expected Receipt Date");
                TempProcessOnlyBuffer.SETRANGE("Container No.", PurchLine."Container No.");
                TempProcessOnlyBuffer.SETRANGE("Line No.", 1);
                IF NOT TempProcessOnlyBuffer.FINDFIRST THEN BEGIN
                    TempProcessOnlyBuffer.INIT;
                    TempProcessOnlyBuffer."Document Type" := TempProcessOnlyBuffer."Document Type"::Purchase;
                    TempProcessOnlyBuffer."Document Subtype" := TempProcessOnlyBuffer."Document Subtype"::"Container-Availability";
                    TempProcessOnlyBuffer.Code := Item."No.";
                    TempProcessOnlyBuffer.Date := PurchLine."Expected Receipt Date";
                    TempProcessOnlyBuffer."Container No." := PurchLine."Container No.";
                    TempProcessOnlyBuffer."Line No." += 1;
                    TempProcessOnlyBuffer."Decimal-A" := StockQtyOnInventory;
                    TempProcessOnlyBuffer."Decimal-B" := ReserveQty;
                    TempProcessOnlyBuffer."Decimal-C" := PurchLine."Outstanding Qty. (Base)";
                    TempProcessOnlyBuffer."Decimal-D" := PurchaseOrderQty;
                    TempProcessOnlyBuffer."Ending Date" := PurchLine."Expected Receipt Date";
                    IF PurchaseHeader.GET(PurchLine."Document Type", PurchLine."Document No.") THEN;
                    TempProcessOnlyBuffer."Column Name" := TempProcessOnlyBuffer."Container No." + ' ' + FORMAT(TempProcessOnlyBuffer.Date, 0, '<Day,2> <Month Text,3> <Year4>') + ' ' +
                      PurchaseHeader."Vendor Invoice No.";
                    TempProcessOnlyBuffer."Decimal-E" := ReserveQtyOnPurchOrder;
                    TempProcessOnlyBuffer."Decimal-F" := PurchaseOrderQty - ReserveQtyOnPurchOrder;
                    TempProcessOnlyBuffer."Decimal-G" := (StockQtyOnInventory - ReserveQty) + TempProcessOnlyBuffer."Decimal-F";
                    TempProcessOnlyBuffer.INSERT;
                END ELSE BEGIN
                    TempProcessOnlyBuffer."Decimal-C" += PurchLine."Outstanding Qty. (Base)";
                    TempProcessOnlyBuffer.MODIFY;
                END;
            UNTIL PurchLine.NEXT = 0;
        END ELSE BEGIN
            TempProcessOnlyBuffer.INIT;
            TempProcessOnlyBuffer."Document Type" := TempProcessOnlyBuffer."Document Type"::Purchase;
            TempProcessOnlyBuffer."Document Subtype" := TempProcessOnlyBuffer."Document Subtype"::"Container-Availability";
            TempProcessOnlyBuffer.Code := Item."No.";
            TempProcessOnlyBuffer.Date := PurchLine."Expected Receipt Date";
            TempProcessOnlyBuffer."Container No." := PurchLine."Container No.";
            TempProcessOnlyBuffer."Line No." := 1;
            TempProcessOnlyBuffer."Decimal-A" := StockQtyOnInventory;
            TempProcessOnlyBuffer."Decimal-B" := ReserveQty;
            TempProcessOnlyBuffer."Ending Date" := PurchLine."Expected Receipt Date";
            TempProcessOnlyBuffer."Decimal-D" := PurchaseOrderQty;
            TempProcessOnlyBuffer."Decimal-E" := ReserveQtyOnPurchOrder;
            TempProcessOnlyBuffer."Decimal-F" := PurchaseOrderQty - ReserveQtyOnPurchOrder;
            TempProcessOnlyBuffer."Decimal-G" := (StockQtyOnInventory - ReserveQty) + TempProcessOnlyBuffer."Decimal-F";
            TempProcessOnlyBuffer.INSERT;
        END;
    end;
}

