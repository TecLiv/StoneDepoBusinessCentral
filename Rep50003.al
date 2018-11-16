report 50103 "Sales Invoice-Unposted"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Sales Invoice-Unposted.rdlc';
    Caption = 'Sales Invoice';
    PreviewMode = PrintLayout;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = SORTING ("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Posted Sales Invoice';
            column(No_SalesInvHeader; "No.")
            {
            }
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING (Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING (Number)
                                        WHERE (Number = CONST (1));
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(CompInfo_Name; CompInfo.Name)
                    {
                    }
                    column(CompInfo_Address; CompInfo.Address + '  ' + CompInfo."Address 2")
                    {
                    }
                    column(CompInfo_City; CompInfo.City + '  ' + CompInfo.County + '  ' + CompInfo."Post Code")
                    {
                    }
                    column(CompInfo_PhoneNo; CompInfo."Phone No.")
                    {
                    }
                    column(CompInfo_Email; CompInfo."E-Mail")
                    {
                    }
                    column(CompInfo_ABN; CompInfo.ABN)
                    {
                    }
                    column(CompInfo_Pic; CompInfo.Picture)
                    {
                    }
                    column(CustName; Cust.Name + ' ' + Cust."Name 2")
                    {
                    }
                    column(CustAddress; Cust.Address + '  ' + Cust."Address 2" + '  ' + Cust.County + '  ' + Cust."Post Code")
                    {
                    }
                    column(CustCountryName; CountryRegion.Name)
                    {
                    }
                    column(InvoiceDate_SalesInvHeader; "Sales Header"."Posting Date")
                    {
                    }
                    dataitem("Sales Line"; "Sales Line")
                    {
                        DataItemLink = "Document No." = FIELD ("No.");
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = SORTING ("Document No.", "Line No.");
                        column(ItemNo; "No.")
                        {
                        }
                        column(Qty_SalesInvoiceLine; Quantity)
                        {
                        }
                        column(ItemName; Description + '  ' + "Description 2")
                        {
                        }
                        column(UnitPrice_SalesInvoiceLine; "Unit Price")
                        {
                        }
                        column(UOM__SalesInvoiceLine; "Unit of Measure Code")
                        {
                        }
                        column(LineAmt_SalesInvoiceLine; "Line Amount")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            Item.GET("No.");
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    IF Number > 1 THEN BEGIN
                        //CopyText := FormatDocument.GetCOPYText; Dynamics
                        OutputNo += 1;
                    END;
                    //CurrReport.PAGENO := 1;
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := ABS(NoOfCopies) + Cust."Invoice Copies" + 1;
                    IF NoOfLoops <= 0 THEN
                        NoOfLoops := 1;
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                IF GLOBALLANGUAGE = Language.GetLanguageID("Language Code") THEN
                    CurrReport.LANGUAGE := Language.GetLanguageID("Language Code")
                ELSE
                    CurrReport.LANGUAGE := Language.GetLanguageID('ENU');

                IF Cust.GET("Sell-to Customer No.") THEN;
                IF CountryRegion.GET(Cust."Country/Region Code") THEN;
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
        ReportCaptionLbl = 'TAX INVOICE';
        PhoneLbl = 'Phone';
        ABNLbl = 'ABN';
        InvoiceDtLbl = 'Invoice Date:';
        InvoiceNoLbl = 'Invoice No:';
        ItemNameLbl = 'Description';
        UnitLbl = 'Unit';
        BasePriceLbl = 'Base Price ($)';
        AmountLbl = 'Amount ($)';
        Text001 = 'Please remit all Electronic Payments to:';
        Text002 = 'Account Name:';
        Text003 = 'Bank:';
        Text004 = 'Account No:';
        Text005 = 'BSB:';
        DeliveryAddressLbl = 'Delivery Address:';
        UOMLbl = 'UOM';
        QtyLbl = 'Qty.';
        TotalAmountEXCGSTLbl = 'Total Amount EXC GST';
        TotalGSTPayableLbl = 'Total GST Payable';
        TotalDueGST = 'Total Due including GST (AUD)';
    }

    trigger OnPreReport()
    begin
        CompInfo.GET;
        CompInfo.CALCFIELDS(Picture);
    end;

    var
        Cust: Record Customer;
        Language: Record Language;
        FormatDocument: Codeunit "Format Address";
        CompInfo: Record "Company Information";
        CountryRegion: Record "Country/Region";
        Item: Record Item;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        OutputNo: Integer;
        CopyText: Text[30];
}

