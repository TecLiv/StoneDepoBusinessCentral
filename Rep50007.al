report 50105 "SalesTax-Invoice"
{
    DefaultLayout = RDLC;
    RDLCLayout = './SalesTax-Invoice.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            column(LocationCode_SalesInvoiceHeader; "Sales Invoice Header"."Location Code")
            {
            }
            column(OrderDate_SalesInvoiceHeader; "Sales Invoice Header"."Order Date")
            {
            }
            column(PostingDate_SalesInvoiceHeader; "Sales Invoice Header"."Posting Date")
            {
            }
            column(BilltoName_SalesInvoiceHeader; "Sales Invoice Header"."Bill-to Name")
            {
            }
            column(BilltoName2_SalesInvoiceHeader; "Sales Invoice Header"."Bill-to Name 2")
            {
            }
            column(BilltoAddress_SalesInvoiceHeader; "Sales Invoice Header"."Bill-to Address")
            {
            }
            column(BilltoAddress2_SalesInvoiceHeader; "Sales Invoice Header"."Bill-to Address 2")
            {
            }
            column(BilltoCity_SalesInvoiceHeader; "Sales Invoice Header"."Bill-to City")
            {
            }
            column(BilltoContact_SalesInvoiceHeader; "Sales Invoice Header"."Bill-to Contact")
            {
            }
            column(SelltoCustomerNo_SalesInvoiceHeader; "Sales Invoice Header"."Sell-to Customer No.")
            {
            }
            column(No_SalesInvoiceHeader; "Sales Invoice Header"."No.")
            {
            }
            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = FIELD ("No.");
                column(AvgQtyperAddBaseUOM_SalesInvoiceLine; "Sales Invoice Line"."SQM/Unit")
                {
                }
                column(VAT_SalesInvoiceLine; "Sales Invoice Line"."VAT %")
                {
                }
                column(LineDiscount_SalesInvoiceLine; "Sales Invoice Line"."Line Discount %")
                {
                }
                column(LineDiscountAmount_SalesInvoiceLine; "Sales Invoice Line"."Line Discount Amount")
                {
                }
                column(Amount_SalesInvoiceLine; "Sales Invoice Line".Amount)
                {
                }
                column(AmountIncludingVAT_SalesInvoiceLine; "Sales Invoice Line"."Amount Including VAT")
                {
                }
                column(UnitPrice_SalesInvoiceLine; "Sales Invoice Line"."Unit Price")
                {
                }
                column(No_SalesInvoiceLine; "Sales Invoice Line"."No.")
                {
                }
                column(Description_SalesInvoiceLine; "Sales Invoice Line".Description)
                {
                }
                column(UnitofMeasure_SalesInvoiceLine; "Sales Invoice Line"."Unit of Measure")
                {
                }
                column(Quantity_SalesInvoiceLine; "Sales Invoice Line".Quantity)
                {
                }
                column(QuantityAddBase_SalesInvoiceLine; "Sales Invoice Line"."Quantity (Add. Base) (SLABS)")
                {
                }
            }
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
}

