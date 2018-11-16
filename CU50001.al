codeunit 50101 "Convert Web Sales Order"
{
    // version DS

    TableNo = "Inbound Sales Header";

    trigger OnRun()
    begin
        InboundCustomer.GET("Customer No.");
        AcceptInboundCustomer(InboundCustomer);

        Customer.GET(InboundCustomer."Customer No.");
        SalesSetup.GET;
        //SalesSetup.TESTFIELD("Default Location");
        SalesHeader.INIT;
        SalesHeader."Document Type" := SalesHeader."Document Type"::Order;
        SalesHeader."No." := '';
        SalesHeader.INSERT(TRUE);
        SalesHeader."Sales Order No." := "Order No.";
        SalesHeader."Order Date" := "Order Date";
        SalesHeader.VALIDATE("Sell-to Customer No.", Customer."No.");
        SalesHeader.VALIDATE("Ship-to Name", "Ship-to Name");
        SalesHeader.VALIDATE("Ship-to Name 2", "Ship-to Name 2");
        SalesHeader.VALIDATE("Ship-to Address", "Ship-to Address");
        SalesHeader.VALIDATE("Ship-to Address 2", "Ship-to Address 2");
        SalesHeader."Ship-to Post Code" := "Ship-to Post Code";
        SalesHeader.VALIDATE("Ship-to Country/Region Code", "Ship-to Country");
        SalesHeader.VALIDATE("Ship-to Contact", "Ship-to Phone No.");
        SalesHeader.VALIDATE("Payment Method Code", "Payment Method");
        SalesHeader.VALIDATE("Order Value", "Order Value");
        SalesHeader.VALIDATE("Order Date", "Order Date");
        SalesHeader.VALIDATE("Order Time", "Order Time");
        //SalesHeader.VALIDATE("Location Code", SalesSetup."Default Location");
        SalesHeader."Date Received" := "Date Received";
        SalesHeader."Time Received" := "Time Received";
        SalesHeader."Order Status" := "Order Status";
        SalesHeader.MODIFY(TRUE);

        InboundSalesLine.RESET;
        InboundSalesLine.SETRANGE("Order No.", "Order No.");
        IF InboundSalesLine.FINDSET THEN BEGIN
            REPEAT
                SalesLine.INIT;
                SalesLine."Document Type" := SalesHeader."Document Type";
                SalesLine."Document No." := SalesHeader."No.";
                SalesLine."Line No." := InboundSalesLine."Line No.";
                SalesLine.INSERT(TRUE);
                SalesLine.VALIDATE("Sell-to Customer No.", SalesHeader."Sell-to Customer No.");
                SalesLine.VALIDATE(Type, InboundSalesLine."Item Type");
                SalesLine.VALIDATE("No.", InboundSalesLine."Item No.");
                SalesLine.VALIDATE(Quantity, InboundSalesLine.Quantity);
                SalesLine.VALIDATE("Unit Price", InboundSalesLine."Unit Amount");
                SalesLine.VALIDATE("Location Code", SalesHeader."Location Code");
                SalesLine.VALIDATE("Line Discount Amount", InboundSalesLine."Discount Amount");
                SalesLine.MODIFY(TRUE);
            UNTIL InboundSalesLine.NEXT = 0;
        END;

        "Sales Order No." := SalesHeader."No.";
        Status := Status::Accepted;
        "Status Date" := TODAY;
        "Status Time" := TIME;
        MODIFY;
    end;

    var
        Customer: Record Customer;
        SalesHeader: Record "Sales Header";
        SalesLine: Record "Sales Line";
        InboundCustomer: Record "Inbound Customer";
        InboundSalesLine: Record "Inbound Sales Line";
        PaymentMethod: Record "Payment Method";
        SalesSetup: Record "Sales & Receivables Setup";

    procedure AcceptInboundCustomer(var InboundCustomer: Record "Inbound Customer")
    var
        TemplateHeader: Record "Config. Template Header";
        TemplateMgt: Codeunit "Config. Template Management";
        RecRef: RecordRef;
    begin
        IF InboundCustomer.Status = InboundCustomer.Status::Pending THEN BEGIN
            InboundCustomer.TESTFIELD("No.");
            InboundCustomer.TESTFIELD("E-Mail");
            Customer.RESET;
            Customer.SETCURRENTKEY("No.");
            Customer.SETRANGE("No.", InboundCustomer."No.");
            IF NOT Customer.FINDFIRST THEN BEGIN
                CLEAR(Customer);
                Customer.INIT;
                Customer."No." := '';
                Customer.INSERT(TRUE);
                Customer.VALIDATE(Customer.Name, InboundCustomer."First Name");
                Customer.VALIDATE("Name 2", InboundCustomer."Last Name");
                Customer.VALIDATE(Address, InboundCustomer.Address);
                Customer.VALIDATE("Address 2", InboundCustomer."Address 2");
                Customer.VALIDATE("Post Code", InboundCustomer."Post Code");
                Customer.City := InboundCustomer.City;
                Customer.VALIDATE(County, InboundCustomer.Country);
                Customer.VALIDATE("Phone No.", InboundCustomer."Mobile No.");
                Customer.VALIDATE("Fax No.", InboundCustomer."Fax No.");
                Customer.VALIDATE("E-Mail", InboundCustomer."E-Mail");
                //Customer.VALIDATE("Gen. Bus. Posting Group",SalesSetup."Default General Posting Group");
                //Customer.VALIDATE("Customer Posting Group",SalesSetup."Default Customer Posting Group") ;
                Customer."Bill-to Customer No." := Customer."No.";
                Customer."Tax Liable" := TRUE;
                Customer."Application Method" := Customer."Application Method"::"Apply to Oldest";
                Customer.MODIFY(TRUE);
            END
            ELSE BEGIN
                Customer.VALIDATE(Name, InboundCustomer."First Name");
                Customer.VALIDATE("Name 2", InboundCustomer."Last Name");
                Customer.VALIDATE(Address, InboundCustomer.Address);
                Customer.VALIDATE("Address 2", InboundCustomer."Address 2");
                Customer.VALIDATE("Post Code", InboundCustomer."Post Code");
                Customer.City := InboundCustomer.City;
                Customer.VALIDATE(County, InboundCustomer.Country);
                Customer.VALIDATE("Phone No.", InboundCustomer."Mobile No.");
                Customer.VALIDATE("Fax No.", InboundCustomer."Fax No.");
                Customer.VALIDATE("E-Mail", InboundCustomer."E-Mail");
                //Customer.VALIDATE("Gen. Bus. Posting Group",SalesSetup."Default General Posting Group");
                //Customer.VALIDATE("Customer Posting Group",SalesSetup."Default Customer Posting Group");
                Customer."Bill-to Customer No." := Customer."No.";
                Customer."Tax Liable" := TRUE;
                Customer."Application Method" := Customer."Application Method"::"Apply to Oldest";
                Customer.MODIFY(TRUE);
            END;
            InboundCustomer."Customer No." := Customer."No.";
            InboundCustomer.Status := InboundCustomer.Status::Accepted;
            InboundCustomer."Status Date" := TODAY;
            InboundCustomer."Status Time" := TIME;
            InboundCustomer.MODIFY;
        END;
    end;
}

