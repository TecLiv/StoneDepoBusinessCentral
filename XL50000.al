xmlport 50100 "Sales Order Creat (Mag to Nav)"
{
    // version DS

    Caption = 'Sales Order Creat (Mag to Nav)';
    FormatEvaluate = Xml;
    UseDefaultNamespace = true;

    schema
    {
        textelement(salesOrderInsertXML)
        {
            MaxOccurs = Once;
            MinOccurs = Once;
            tableelement(tempcustomer; "Inbound Customer")
            {
                AutoSave = false;
                MaxOccurs = Once;
                MinOccurs = Zero;
                XmlName = 'Customer';
                UseTemporary = true;
                fieldelement(WebCustomerNo; TempCustomer."No.")
                {
                    MinOccurs = Zero;
                }
                fieldelement(FirstName; TempCustomer."First Name")
                {
                    MinOccurs = Zero;
                }
                fieldelement(LastName; TempCustomer."Last Name")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Address; TempCustomer.Address)
                {
                    MinOccurs = Zero;
                }
                fieldelement(Address2; TempCustomer."Address 2")
                {
                    MinOccurs = Zero;
                }
                fieldelement(PostCode; TempCustomer."Post Code")
                {
                    MinOccurs = Zero;
                }
                fieldelement(City; TempCustomer.City)
                {
                    MinOccurs = Zero;
                }
                fieldelement(State; TempCustomer.State)
                {
                    MinOccurs = Zero;
                }
                fieldelement(Country; TempCustomer.Country)
                {
                    MinOccurs = Zero;
                }
                fieldelement(MobileNo; TempCustomer."Mobile No.")
                {
                    MinOccurs = Zero;
                }
                fieldelement(FaxNo; TempCustomer."Fax No.")
                {
                    MinOccurs = Zero;
                }
                fieldelement(EMail; TempCustomer."E-Mail")
                {
                    MinOccurs = Zero;
                }

                trigger OnAfterInsertRecord()
                var
                    InboundCustomer: Record "Inbound Customer";
                begin
                    TempCustomer.TESTFIELD("No.");

                    CheckInboundCustomer.RESET;
                    CheckInboundCustomer.SETRANGE("No.", TempCustomer."No.");
                    IF NOT CheckInboundCustomer.FIND('-') THEN BEGIN
                        InboundCustomer.INIT;
                        InboundCustomer."No." := TempCustomer."No.";
                        InboundCustomer."First Name" := TempCustomer."First Name";
                        InboundCustomer."Last Name" := TempCustomer."Last Name";
                        InboundCustomer.Address := TempCustomer.Address;
                        InboundCustomer."Address 2" := TempCustomer."Address 2";
                        InboundCustomer."Post Code" := TempCustomer."Post Code";
                        InboundCustomer.City := TempCustomer.City;
                        InboundCustomer.State := TempCustomer.State;
                        InboundCustomer.Country := TempCustomer.Country;
                        InboundCustomer."Mobile No." := TempCustomer."Mobile No.";
                        InboundCustomer."Fax No." := TempCustomer."Fax No.";
                        InboundCustomer."E-Mail" := TempCustomer."E-Mail";
                        InboundCustomer.INSERT(TRUE);
                    END
                    ELSE BEGIN
                        InboundCustomer."No." := TempCustomer."No.";
                        InboundCustomer."First Name" := TempCustomer."First Name";
                        InboundCustomer."Last Name" := TempCustomer."Last Name";
                        InboundCustomer.Address := TempCustomer.Address;
                        InboundCustomer."Address 2" := TempCustomer."Address 2";
                        InboundCustomer."Post Code" := TempCustomer."Post Code";
                        InboundCustomer.City := TempCustomer.City;
                        InboundCustomer.State := TempCustomer.State;
                        InboundCustomer.Country := TempCustomer.Country;
                        InboundCustomer."Mobile No." := TempCustomer."Mobile No.";
                        InboundCustomer."Fax No." := TempCustomer."Fax No.";
                        InboundCustomer."E-Mail" := TempCustomer."E-Mail";
                        InboundCustomer.MODIFY;
                    END;

                    CustomerNo := TempCustomer."No.";
                end;
            }
            tableelement(tempsalesheader; "Inbound Sales Header")
            {
                AutoSave = false;
                MaxOccurs = Once;
                MinOccurs = Once;
                XmlName = 'SalesHeader';
                UseTemporary = true;
                fieldelement(WebOrderNo; TempSalesHeader."Order No.")
                {
                    MinOccurs = Zero;
                }
                fieldelement(ShiptoName; TempSalesHeader."Ship-to Name")
                {
                    MinOccurs = Zero;
                }
                fieldelement(ShiptoName2; TempSalesHeader."Ship-to Name 2")
                {
                    MinOccurs = Zero;
                }
                fieldelement(ShiptoAddress; TempSalesHeader."Ship-to Address")
                {
                    MinOccurs = Zero;
                }
                fieldelement(ShiptoAddress2; TempSalesHeader."Ship-to Address 2")
                {
                    MinOccurs = Zero;
                }
                fieldelement(ShiptoPostCode; TempSalesHeader."Ship-to Post Code")
                {
                    MinOccurs = Zero;
                }
                fieldelement(ShiptoCity; TempSalesHeader."Ship-to City")
                {
                    MinOccurs = Zero;
                }
                fieldelement(ShiptoState; TempSalesHeader."Ship-to State")
                {
                    MinOccurs = Zero;
                }
                fieldelement(ShiptoCountry; TempSalesHeader."Ship-to Country")
                {
                    MinOccurs = Zero;
                }
                fieldelement(ShiptoPhoneNo; TempSalesHeader."Ship-to Phone No.")
                {
                    MinOccurs = Zero;
                }
                fieldelement(ShiptoMobileNo; TempSalesHeader."Ship-to Mobile No.")
                {
                    MinOccurs = Zero;
                }
                fieldelement(ShiptoEMail; TempSalesHeader."Ship-to E-Mail")
                {
                    MinOccurs = Zero;
                }
                fieldelement(PaymentMethod; TempSalesHeader."Payment Method")
                {
                    MinOccurs = Zero;
                }
                fieldelement(OrderStatus; TempSalesHeader."Order Status")
                {
                    MinOccurs = Zero;
                }
                fieldelement(OrderDate; TempSalesHeader."Order Date")
                {
                    MinOccurs = Zero;
                }
                fieldelement(OrderTime; TempSalesHeader."Order Time")
                {
                    MinOccurs = Zero;
                }
                fieldelement(OrderValue; TempSalesHeader."Order Value")
                {
                    MinOccurs = Zero;
                }

                trigger OnAfterInsertRecord()
                var
                    InboundSalesHeader: Record "Inbound Sales Header";
                begin
                    InboundSalesHeader.INIT;
                    InboundSalesHeader."Order No." := TempSalesHeader."Order No.";
                    InboundSalesHeader."Customer No." := CustomerNo;
                    InboundSalesHeader."Customer Name" := TempSalesHeader."Ship-to Name";
                    InboundSalesHeader."Customer Address" := TempSalesHeader."Ship-to Address";
                    InboundSalesHeader."Customer Address 2" := TempSalesHeader."Ship-to Address 2";
                    InboundSalesHeader."Customer City" := TempSalesHeader."Ship-to City";
                    InboundSalesHeader."Customer Post Code" := TempSalesHeader."Ship-to Post Code";
                    InboundSalesHeader."Ship-to Name" := TempSalesHeader."Ship-to Name";
                    InboundSalesHeader."Ship-to Name 2" := TempSalesHeader."Ship-to Name 2";
                    InboundSalesHeader."Ship-to Address" := TempSalesHeader."Ship-to Address";
                    InboundSalesHeader."Ship-to Address 2" := TempSalesHeader."Ship-to Address 2";
                    InboundSalesHeader."Ship-to Post Code" := TempSalesHeader."Ship-to Post Code";
                    InboundSalesHeader."Ship-to City" := TempSalesHeader."Ship-to City";
                    InboundSalesHeader."Ship-to State" := TempSalesHeader."Ship-to State";
                    InboundSalesHeader."Ship-to Country" := TempSalesHeader."Ship-to Country";
                    InboundSalesHeader."Ship-to Phone No." := TempSalesHeader."Ship-to Phone No.";
                    InboundSalesHeader."Ship-to Mobile No." := TempSalesHeader."Ship-to Mobile No.";
                    InboundSalesHeader."Ship-to E-Mail" := TempSalesHeader."Ship-to E-Mail";
                    InboundSalesHeader."Payment Method" := TempSalesHeader."Payment Method";
                    InboundSalesHeader.VALIDATE("Order Status", TempSalesHeader."Order Status");
                    InboundSalesHeader."Order Date" := TempSalesHeader."Order Date";
                    InboundSalesHeader."Order Time" := TempSalesHeader."Order Time";
                    InboundSalesHeader."Order Value" := TempSalesHeader."Order Value";
                    InboundSalesHeader."Customer No." := CustomerNo;
                    InboundSalesHeader."Bill-to Customer No." := CustomerNo;
                    InboundSalesHeader."Bill-to Name" := TempSalesHeader."Ship-to Name";
                    InboundSalesHeader."Bill-to Address" := TempSalesHeader."Ship-to Address";
                    InboundSalesHeader."Bill-to Address 2" := TempSalesHeader."Ship-to City";
                    InboundSalesHeader."Bill-to Post Code" := TempSalesHeader."Ship-to Post Code";
                    InboundSalesHeader."Bill-to Country" := TempSalesHeader."Ship-to Post Code";
                    InboundSalesHeader."Bill-to Country" := TempSalesHeader."Ship-to Country";
                    InboundSalesHeader.INSERT(TRUE);
                    DocNo := TempSalesHeader."Order No.";
                    OrderDate := TempSalesHeader."Order Date";
                    OrderTime := TempSalesHeader."Order Time";
                    OrderStatus1 := TempSalesHeader."Order Status";
                end;
            }
            tableelement(tempwebsalesline; "Inbound Sales Line")
            {
                AutoSave = false;
                XmlName = 'SalesLine';
                UseTemporary = true;
                fieldelement(LineNo; TempWebSalesLine."Line No.")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Type; TempWebSalesLine."Item Type")
                {
                    MinOccurs = Zero;
                }
                fieldelement(ItemNo; TempWebSalesLine."Item No.")
                {
                    MinOccurs = Zero;
                }
                fieldelement(Description; TempWebSalesLine.Description)
                {
                    MinOccurs = Zero;
                }
                fieldelement(Quantity; TempWebSalesLine.Quantity)
                {
                    MinOccurs = Zero;
                }
                fieldelement(UnitPriceInclTax; TempWebSalesLine."Unit Amount")
                {
                    MinOccurs = Zero;
                }
                fieldelement(LineDiscountAmount; TempWebSalesLine."Discount Amount")
                {
                    MinOccurs = Zero;
                }

                trigger OnAfterInsertRecord()
                var
                    InboundSalesLine: Record "Inbound Sales Line";
                begin
                    InboundSalesLine.INIT;
                    InboundSalesLine."Order No." := DocNo;
                    InboundSalesLine."Line No." := TempWebSalesLine."Line No.";
                    InboundSalesLine."Item Type" := TempWebSalesLine."Item Type";
                    InboundSalesLine."Item No." := TempWebSalesLine."Item No.";
                    InboundSalesLine.Description := TempWebSalesLine.Description;
                    InboundSalesLine.Quantity := TempWebSalesLine.Quantity;
                    InboundSalesLine."Unit Amount" := TempWebSalesLine."Unit Amount";
                    InboundSalesLine."Discount Amount" := TempWebSalesLine."Discount Amount";
                    InboundSalesLine."Order Status" := OrderStatus1;
                    InboundSalesLine.INSERT(TRUE);
                end;
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

    var
        DocNo: Code[20];
        CustomerNo: Code[20];
        OrderDate: Date;
        OrderTime: Time;
        CheckInboundCustomer: Record "Inbound Customer";
        OrderStatus1: Option COD,Prepaid;

    procedure GetDocNo(): Code[100]
    begin
        COMMIT;
        EXIT(DocNo);
    end;
}

