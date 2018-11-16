xmlport 50130 SalesShipmentHeader_Import
{
    Format = VariableText;
    Permissions = TableData 110 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Sales Shipment Header"; "Sales Shipment Header")
            {
                XmlName = 'SSH';
                fieldelement(a1; "Sales Shipment Header"."Sell-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Sales Shipment Header"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Sales Shipment Header"."Bill-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Sales Shipment Header"."Bill-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Sales Shipment Header"."Bill-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Sales Shipment Header"."Bill-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Sales Shipment Header"."Bill-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Sales Shipment Header"."Bill-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Sales Shipment Header"."Bill-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Sales Shipment Header"."Your Reference")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Sales Shipment Header"."Ship-to Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Sales Shipment Header"."Ship-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Sales Shipment Header"."Ship-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Sales Shipment Header"."Ship-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Sales Shipment Header"."Ship-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Sales Shipment Header"."Ship-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Sales Shipment Header"."Ship-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Sales Shipment Header"."Order Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Sales Shipment Header"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Sales Shipment Header"."Shipment Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Sales Shipment Header"."Posting Description")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Sales Shipment Header"."Payment Terms Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Sales Shipment Header"."Due Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Sales Shipment Header"."Payment Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Sales Shipment Header"."Pmt. Discount Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Sales Shipment Header"."Shipment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Sales Shipment Header"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Sales Shipment Header"."Shortcut Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Sales Shipment Header"."Shortcut Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Sales Shipment Header"."Customer Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Sales Shipment Header"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Sales Shipment Header"."Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Sales Shipment Header"."Customer Price Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Sales Shipment Header"."Prices Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Sales Shipment Header"."Invoice Disc. Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Sales Shipment Header"."Customer Disc. Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Sales Shipment Header"."Language Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Sales Shipment Header"."Salesperson Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Sales Shipment Header"."Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Sales Shipment Header".Comment)
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Sales Shipment Header"."No. Printed")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Sales Shipment Header"."On Hold")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Sales Shipment Header"."Applies-to Doc. Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Sales Shipment Header"."Applies-to Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Sales Shipment Header"."Bal. Account No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Sales Shipment Header"."VAT Registration No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Sales Shipment Header"."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Sales Shipment Header"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Sales Shipment Header"."EU 3-Party Trade")
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Sales Shipment Header"."Transaction Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Sales Shipment Header"."Transport Method")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Sales Shipment Header"."VAT Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Sales Shipment Header"."Sell-to Customer Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Sales Shipment Header"."Sell-to Customer Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Sales Shipment Header"."Sell-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Sales Shipment Header"."Sell-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Sales Shipment Header"."Sell-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Sales Shipment Header"."Sell-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Sales Shipment Header"."Bill-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Sales Shipment Header"."Bill-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Sales Shipment Header"."Bill-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Sales Shipment Header"."Sell-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Sales Shipment Header"."Sell-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Sales Shipment Header"."Sell-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Sales Shipment Header"."Ship-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Sales Shipment Header"."Ship-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Sales Shipment Header"."Ship-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Sales Shipment Header"."Bal. Account Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Sales Shipment Header"."Exit Point")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Sales Shipment Header".Correction)
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Sales Shipment Header"."Document Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Sales Shipment Header"."External Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a73; "Sales Shipment Header"."Area")
                {
                    FieldValidate = No;
                }
                fieldelement(a74; "Sales Shipment Header"."Transaction Specification")
                {
                    FieldValidate = No;
                }
                fieldelement(a75; "Sales Shipment Header"."Payment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a76; "Sales Shipment Header"."Shipping Agent Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a77; "Sales Shipment Header"."Package Tracking No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a78; "Sales Shipment Header"."No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a79; "Sales Shipment Header"."Order No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a80; "Sales Shipment Header"."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a81; "Sales Shipment Header"."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a82; "Sales Shipment Header"."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a83; "Sales Shipment Header"."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a84; "Sales Shipment Header"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a85; "Sales Shipment Header"."VAT Base Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a86; "Sales Shipment Header"."Quote No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a87; "Sales Shipment Header"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a88; "Sales Shipment Header"."Campaign No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a89; "Sales Shipment Header"."Sell-to Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a90; "Sales Shipment Header"."Bill-to Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a91; "Sales Shipment Header"."Opportunity No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a92; "Sales Shipment Header"."Responsibility Center")
                {
                    FieldValidate = No;
                }
                fieldelement(a93; "Sales Shipment Header"."Requested Delivery Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a94; "Sales Shipment Header"."Promised Delivery Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a95; "Sales Shipment Header"."Shipping Time")
                {
                    FieldValidate = No;
                }
                fieldelement(a96; "Sales Shipment Header"."Outbound Whse. Handling Time")
                {
                    FieldValidate = No;
                }
                fieldelement(a97; "Sales Shipment Header"."Shipping Agent Service Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a98; "Sales Shipment Header"."Allow Line Disc.")
                {
                    FieldValidate = No;
                }
                fieldelement(a99; "Sales Shipment Header"."Current Status")
                {
                    FieldValidate = No;
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
}

