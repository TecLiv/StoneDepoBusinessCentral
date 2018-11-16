page 50145 DataImportUtilityPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    //SourceTable = Integer;

    layout
    {

    }

    actions
    {
        area(Processing)
        {
            action(ImportGL)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Xmlport.Run(50110, false, true);
                end;
            }
            action(ImportCustLedEntries)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Xmlport.Run(50111, false, true);
                end;
            }
            action(ImportDetailedCustLedEntries)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50112, false, true);
                end;
            }
            action(ImportVendorLedEntries)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50113, false, true);
                end;
            }
            action(ImportDetailedVendLedEntries)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50114, false, true);
                end;
            }
            action(ImportItemLedEntries)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50115, false, true);
                end;
            }
            action(ImportGlRegister)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50116, false, true);
                end;
            }
            action(ImportItemRegister)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50117, false, true);
                end;
            }
            action(ImportGlEntryLinkVat)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50118, false, true);
                end;
            }
            action(ImportVatEntry)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50119, false, true);
                end;
            }
            action(ImportItemApplicationEntry)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50120, false, true);
                end;
            }
            action(ImportDimensionSetTree)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50121, false, true);
                end;
            }
            action(ImportDimensionSetEntry)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50122, false, true);
                end;
            }
            action(ImportValueEntry)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50123, false, true);
                end;
            }
            action(ImportAvgCostAdjustment)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50124, false, true);
                end;
            }
            action(ImportPurchRcptLine)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50125, false, true);
                end;
            }
            action(ImportSalesInvoiceLine)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50126, false, true);
                end;
            }
            action(ImportSalesShipmentLine)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50127, false, true);
                end;
            }
            action(ImportPurchInvoiceLine)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50128, false, true);
                end;
            }
            action(ImportSalesInvoiceHeader)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50129, false, true);
                end;
            }
            action(ImportSalesShipmentHeader)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50130, false, true);
                end;
            }
            action(ImportPurchLine)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50131, false, true);
                end;
            }
            action(ImportPurchRcptHeader)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50132, false, true);
                end;
            }
            action(ImportPurchInvoiceHeader)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50133, false, true);
                end;
            }
            action(ImportPurchHeader)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50134, false, true);
                end;
            }
            action(ImportSalesHeader)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50135, false, true);
                end;
            }
            action(ImportSalesCreditMemoHeader)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50136, false, true);
                end;
            }
            action(ImportPurchCreditMemoHeader)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50137, false, true);
                end;
            }
            action(ImportReturnShipmentHeader)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50138, false, true);
                end;
            }
            action(ImportReturnRcptHeader)
            {
                ApplicationArea = all;
                trigger onaction()
                begin
                    Xmlport.Run(50139, false, true);
                end;
            }
        }
    }

    var
        myInt: Integer;
}