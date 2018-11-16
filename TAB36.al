tableextension 50102 tab36 extends "Sales Header"
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {

        modify("Posting No.")
        {
            trigger OnAfterValidate()
            var
                SalesInvHeader: Record "Sales Invoice Header";
            begin
                IF "Posting No." <> '' THEN BEGIN
                    IF SalesInvHeader.GET("Posting No.") THEN
                        ERROR('Invoice No. %1 already exists');
                END;
            end;
        }
        //Unsupported feature: Code Modification on ""Sell-to Customer No."(Field 2).OnValidate".

        //trigger "(Field 2)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckCreditLimitIfLineNotInsertedYet;
        IF "No." = '' THEN
          InitRecord;
        #4..59

        Cust.CheckBlockedCustOnDocs(Cust,"Document Type",FALSE,FALSE);
        Cust.TESTFIELD("Gen. Bus. Posting Group");
        CopySellToCustomerAddressFieldsFromCustomer(Cust);

        IF "Sell-to Customer No." = xRec."Sell-to Customer No." THEN
          IF ShippedSalesLinesExist OR ReturnReceiptExist THEN BEGIN
        #67..101

        PostCodeCheck.CopyAddressID(
          DATABASE::Customer,Cust.GETPOSITION,0,DATABASE::"Sales Header",GETPOSITION,3);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..62
        "Sell-to Customer Template Code" := '';
        "Sell-to Customer Name" := Cust.Name;
        "Sell-to Customer Name 2" := Cust."Name 2";
        "Demo Data" := Cust."Demo Data";
        CopySellToCustomerAddressFieldsFromCustomer(Cust);
        IF NOT SkipSellToContact THEN
          "Sell-to Contact" := Cust.Contact;
        "Gen. Bus. Posting Group" := Cust."Gen. Bus. Posting Group";
        "VAT Bus. Posting Group" := Cust."VAT Bus. Posting Group";
        "WHT Business Posting Group" := Cust."WHT Business Posting Group";
        "Tax Area Code" := Cust."Tax Area Code";
        "Tax Liable" := Cust."Tax Liable";
        "VAT Registration No." := Cust."VAT Registration No.";
        "VAT Country/Region Code" := Cust."Country/Region Code";
        "Shipping Advice" := Cust."Shipping Advice";
        "Responsibility Center" := UserSetupMgt.GetRespCenter(0,Cust."Responsibility Center");
        VALIDATE("Location Code",UserSetupMgt.GetLocation(0,Cust."Location Code","Responsibility Center"));
        #64..104
        */
        //end;


        //Unsupported feature: Code Modification on ""Bill-to Customer No."(Field 4).OnValidate".

        //trigger "(Field 4)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TESTFIELD(Status,Status::Open);
        BilltoCustomerNoChanged := xRec."Bill-to Customer No." <> "Bill-to Customer No.";
        IF BilltoCustomerNoChanged THEN
        #4..25
        Cust.TESTFIELD("Customer Posting Group");
        PostingSetupMgt.CheckCustPostingGroupReceivablesAccount("Customer Posting Group");
        CheckCrLimit;
        CopyBillToCustomerAddressFieldsFromCustomer(Cust);

        IF NOT BilltoCustomerNoChanged THEN
          IF ShippedSalesLinesExist THEN BEGIN
            TESTFIELD("Customer Disc. Group",xRec."Customer Disc. Group");
            TESTFIELD("Currency Code",xRec."Currency Code");
          END;

        CreateDim(
          DATABASE::Customer,"Bill-to Customer No.",
        #39..63

        PostCodeCheck.CopyAddressID(
          DATABASE::Customer,Cust.GETPOSITION,0,DATABASE::"Sales Header",GETPOSITION,1);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..28
        "Tax Document Type" := Cust."Tax Document Type";

        "Bill-to Customer Template Code" := '';
        "Bill-to Name" := Cust.Name;
        "Bill-to Name 2" := Cust."Name 2";
        CopyBillToCustomerAddressFieldsFromCustomer(Cust);
        IF NOT SkipBillToContact THEN
          "Bill-to Contact" := Cust.Contact;
        "Payment Terms Code" := Cust."Payment Terms Code";
        "Prepmt. Payment Terms Code" := Cust."Payment Terms Code";

        IF "Document Type" = "Document Type"::"Credit Memo" THEN BEGIN
          "Payment Method Code" := '';
          IF PaymentTerms.GET("Payment Terms Code") THEN
            IF PaymentTerms."Calc. Pmt. Disc. on Cr. Memos" THEN
              "Payment Method Code" := Cust."Payment Method Code"
        END ELSE
          "Payment Method Code" := Cust."Payment Method Code";

        GLSetup.GET;
        IF GLSetup."Bill-to/Sell-to VAT Calc." = GLSetup."Bill-to/Sell-to VAT Calc."::"Bill-to/Pay-to No." THEN BEGIN
          "VAT Bus. Posting Group" := Cust."VAT Bus. Posting Group";
          "VAT Country/Region Code" := Cust."Country/Region Code";
          "VAT Registration No." := Cust."VAT Registration No.";
          "Gen. Bus. Posting Group" := Cust."Gen. Bus. Posting Group";
        END;
        "WHT Business Posting Group" := Cust."WHT Business Posting Group";
        "Customer Posting Group" := Cust."Customer Posting Group";
        "Currency Code" := Cust."Currency Code";
        "Customer Price Group" := Cust."Customer Price Group";
        "Prices Including VAT" := Cust."Prices Including VAT";
        "Allow Line Disc." := Cust."Allow Line Disc.";
        "Invoice Disc. Code" := Cust."Invoice Disc. Code";
        "Customer Disc. Group" := Cust."Customer Disc. Group";
        "Language Code" := Cust."Language Code";
        "Salesperson Code" := Cust."Salesperson Code";
        "Combine Shipments" := Cust."Combine Shipments";
        Reserve := Cust.Reserve;
        IF "Document Type" = "Document Type"::Order THEN
          "Prepayment %" := Cust."Prepayment %";

        IF NOT BilltoCustomerNoChanged THEN BEGIN
        #32..35
        END;
        #36..66
        */
        //end;
        field(55555; "Demo Data"; Option)
        {
            OptionCaption = 'No,Yes';
            OptionMembers = No,Yes;
        }
        field(55556; "Current Status"; Option)
        {
            Caption = 'Current Status';
            Editable = false;
            OptionCaption = 'Open,Sales Approval,Warehouse,Partial Shipped,Shipped';
            OptionMembers = Open,"Sales Approval",Warehouse,"Partial Shipped",Shipped;
        }
        field(80000; "Sales Order No."; Code[20])
        {
        }
        field(80001; "Order Value"; Decimal)
        {
        }
        field(80002; "Order Time"; Time)
        {
        }
        field(80003; "Date Received"; Date)
        {
            Editable = false;
        }
        field(80004; "Time Received"; Time)
        {
            Editable = false;
        }
        field(80005; "Order Status"; Option)
        {
            OptionCaption = 'COD,Prepaid';
            OptionMembers = COD,Prepaid;
        }
        field(80006; "Free Supply"; Boolean)
        {
        }

    }


    //Unsupported feature: Property Modification (Id) on "IdentityManagement(Variable 1010)".

    //var
    //>>>> ORIGINAL VALUE:
    //IdentityManagement : 1010;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IdentityManagement : 10100;
    //Variable type has not been exported.

    var
        SellToCustomerTxt1: Label 'Sell-to Customer';
        BillToCustomerTxt1: Label 'Bill-to Customer';

    var
        PrepaymentInvoicesNotPaidErr1: Label 'You cannot post the document of type %1 with the number %2 before all related prepayment invoices are posted.', Comment = 'You cannot post the document of type Order with the number 1001 before all related prepayment invoices are posted.';
}

