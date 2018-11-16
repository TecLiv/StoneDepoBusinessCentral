xmlport 50139 ReturnRcptHeader_Import
{
    Format = VariableText;
    Permissions = TableData 6660 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Return Receipt Header"; "Return Receipt Header")
            {
                XmlName = 'RRH';
                fieldelement(a1; "Return Receipt Header"."Sell-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Return Receipt Header"."No.")
                {
                }
                fieldelement(a3; "Return Receipt Header"."Bill-to Customer No.")
                {
                }
                fieldelement(a4; "Return Receipt Header"."Bill-to Name")
                {
                }
                fieldelement(a5; "Return Receipt Header"."Bill-to Name 2")
                {
                }
                fieldelement(a6; "Return Receipt Header"."Bill-to Address")
                {
                }
                fieldelement(a7; "Return Receipt Header"."Bill-to Address 2")
                {
                }
                fieldelement(a8; "Return Receipt Header"."Bill-to City")
                {
                }
                fieldelement(a9; "Return Receipt Header"."Bill-to Contact")
                {
                }
                fieldelement(a10; "Return Receipt Header"."Your Reference")
                {
                }
                fieldelement(a11; "Return Receipt Header"."Ship-to Code")
                {
                }
                fieldelement(a12; "Return Receipt Header"."Ship-to Name")
                {
                }
                fieldelement(a13; "Return Receipt Header"."Ship-to Name 2")
                {
                }
                fieldelement(a14; "Return Receipt Header"."Ship-to Address")
                {
                }
                fieldelement(a15; "Return Receipt Header"."Ship-to Address 2")
                {
                }
                fieldelement(a16; "Return Receipt Header"."Ship-to City")
                {
                }
                fieldelement(a17; "Return Receipt Header"."Ship-to Contact")
                {
                }
                fieldelement(a18; "Return Receipt Header"."Order Date")
                {
                }
                fieldelement(a19; "Return Receipt Header"."Posting Date")
                {
                }
                fieldelement(a20; "Return Receipt Header"."Shipment Date")
                {
                }
                fieldelement(a21; "Return Receipt Header"."Posting Description")
                {
                }
                fieldelement(a22; "Return Receipt Header"."Payment Terms Code")
                {
                }
                fieldelement(a23; "Return Receipt Header"."Due Date")
                {
                }
                fieldelement(a24; "Return Receipt Header"."Payment Discount %")
                {
                }
                fieldelement(a25; "Return Receipt Header"."Pmt. Discount Date")
                {
                }
                fieldelement(a26; "Return Receipt Header"."Shipment Method Code")
                {
                }
                fieldelement(a27; "Return Receipt Header"."Location Code")
                {
                }
                fieldelement(a28; "Return Receipt Header"."Shortcut Dimension 1 Code")
                {
                }
                fieldelement(a29; "Return Receipt Header"."Shortcut Dimension 2 Code")
                {
                }
                fieldelement(a30; "Return Receipt Header"."Customer Posting Group")
                {
                }
                fieldelement(a31; "Return Receipt Header"."Currency Code")
                {
                }
                fieldelement(a32; "Return Receipt Header"."Currency Factor")
                {
                }
                fieldelement(a33; "Return Receipt Header"."Customer Price Group")
                {
                }
                fieldelement(a34; "Return Receipt Header"."Prices Including VAT")
                {
                }
                fieldelement(a35; "Return Receipt Header"."Invoice Disc. Code")
                {
                }
                fieldelement(a36; "Return Receipt Header"."Customer Disc. Group")
                {
                }
                fieldelement(a37; "Return Receipt Header"."Language Code")
                {
                }
                fieldelement(a38; "Return Receipt Header"."Salesperson Code")
                {
                }
                fieldelement(a39; "Return Receipt Header".Comment)
                {
                }
                fieldelement(a40; "Return Receipt Header"."No. Printed")
                {
                }
                fieldelement(a41; "Return Receipt Header"."On Hold")
                {
                }
                fieldelement(a42; "Return Receipt Header"."Applies-to Doc. Type")
                {
                }
                fieldelement(a43; "Return Receipt Header"."Applies-to Doc. No.")
                {
                }
                fieldelement(a44; "Return Receipt Header"."Bal. Account No.")
                {
                }
                fieldelement(a45; "Return Receipt Header"."VAT Registration No.")
                {
                }
                fieldelement(a46; "Return Receipt Header"."Reason Code")
                {
                }
                fieldelement(a47; "Return Receipt Header"."Gen. Bus. Posting Group")
                {
                }
                fieldelement(a48; "Return Receipt Header"."EU 3-Party Trade")
                {
                }
                fieldelement(a49; "Return Receipt Header"."Transaction Type")
                {
                }
                fieldelement(a50; "Return Receipt Header"."Transport Method")
                {
                }
                fieldelement(a51; "Return Receipt Header"."VAT Country/Region Code")
                {
                }
                fieldelement(a52; "Return Receipt Header"."Sell-to Customer Name")
                {
                }
                fieldelement(a53; "Return Receipt Header"."Sell-to Customer Name 2")
                {
                }
                fieldelement(a54; "Return Receipt Header"."Sell-to Address")
                {
                }
                fieldelement(a55; "Return Receipt Header"."Sell-to Address 2")
                {
                }
                fieldelement(a56; "Return Receipt Header"."Sell-to City")
                {
                }
                fieldelement(a57; "Return Receipt Header"."Sell-to Contact")
                {
                }
                fieldelement(a58; "Return Receipt Header"."Bill-to Post Code")
                {
                }
                fieldelement(a59; "Return Receipt Header"."Bill-to County")
                {
                }
                fieldelement(a60; "Return Receipt Header"."Bill-to Country/Region Code")
                {
                }
                fieldelement(a61; "Return Receipt Header"."Sell-to Post Code")
                {
                }
                fieldelement(a62; "Return Receipt Header"."Sell-to County")
                {
                }
                fieldelement(a63; "Return Receipt Header"."Sell-to Country/Region Code")
                {
                }
                fieldelement(a64; "Return Receipt Header"."Ship-to Post Code")
                {
                }
                fieldelement(a65; "Return Receipt Header"."Ship-to County")
                {
                }
                fieldelement(a66; "Return Receipt Header"."Ship-to Country/Region Code")
                {
                }
                fieldelement(a67; "Return Receipt Header"."Bal. Account Type")
                {
                }
                fieldelement(a68; "Return Receipt Header"."Exit Point")
                {
                }
                fieldelement(a69; "Return Receipt Header".Correction)
                {
                }
                fieldelement(a70; "Return Receipt Header"."Document Date")
                {
                }
                fieldelement(a71; "Return Receipt Header"."External Document No.")
                {
                }
                fieldelement(a72; "Return Receipt Header"."Area")
                {
                }
                fieldelement(a73; "Return Receipt Header"."Transaction Specification")
                {
                }
                fieldelement(a74; "Return Receipt Header"."Payment Method Code")
                {
                }
                fieldelement(a75; "Return Receipt Header"."Shipping Agent Code")
                {
                }
                fieldelement(a76; "Return Receipt Header"."Package Tracking No.")
                {
                }
                fieldelement(a77; "Return Receipt Header"."No. Series")
                {
                }
                fieldelement(a78; "Return Receipt Header"."User ID")
                {
                }
                fieldelement(a79; "Return Receipt Header"."Source Code")
                {
                }
                fieldelement(a80; "Return Receipt Header"."Tax Area Code")
                {
                }
                fieldelement(a81; "Return Receipt Header"."Tax Liable")
                {
                }
                fieldelement(a82; "Return Receipt Header"."VAT Bus. Posting Group")
                {
                }
                fieldelement(a83; "Return Receipt Header"."VAT Base Discount %")
                {
                }
                fieldelement(a84; "Return Receipt Header"."Dimension Set ID")
                {
                }
                fieldelement(a85; "Return Receipt Header"."Campaign No.")
                {
                }
                fieldelement(a86; "Return Receipt Header"."Sell-to Contact No.")
                {
                }
                fieldelement(a87; "Return Receipt Header"."Bill-to Contact No.")
                {
                }
                fieldelement(a88; "Return Receipt Header"."Opportunity No.")
                {
                }
                fieldelement(a89; "Return Receipt Header"."Responsibility Center")
                {
                }
                fieldelement(a90; "Return Receipt Header"."Requested Delivery Date")
                {
                }
                fieldelement(a91; "Return Receipt Header"."Promised Delivery Date")
                {
                }
                fieldelement(a92; "Return Receipt Header"."Shipping Time")
                {
                }
                fieldelement(a93; "Return Receipt Header"."Warehouse Handling Time")
                {
                }
                fieldelement(a94; "Return Receipt Header"."Late Order Shipping")
                {
                }
                fieldelement(a95; "Return Receipt Header"."Return Order No.")
                {
                }
                fieldelement(a96; "Return Receipt Header"."Return Order No. Series")
                {
                }
                fieldelement(a97; "Return Receipt Header"."Allow Line Disc.")
                {
                }
                fieldelement(a98; "Return Receipt Header".Adjustment)
                {
                }
                fieldelement(a99; "Return Receipt Header"."BAS Adjustment")
                {
                }
                fieldelement(a100; "Return Receipt Header"."Adjustment Applies-to")
                {
                }
                fieldelement(a101; "Return Receipt Header".ABN)
                {
                }
                fieldelement(a102; "Return Receipt Header"."ABN Division Part No.")
                {
                }
                fieldelement(a103; "Return Receipt Header"."WHT Business Posting Group")
                {
                }
                fieldelement(a104; "Return Receipt Header"."Actual Vendor No.")
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
}

