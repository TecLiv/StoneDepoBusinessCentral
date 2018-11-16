xmlport 50138 ReturnShipmentHeader_Import
{
    Format = VariableText;
    Permissions = TableData 6650 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Return Shipment Header"; "Return Shipment Header")
            {
                XmlName = 'RSH';
                fieldelement(a1; "Return Shipment Header"."Buy-from Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Return Shipment Header"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Return Shipment Header"."Pay-to Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Return Shipment Header"."Pay-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Return Shipment Header"."Pay-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Return Shipment Header"."Pay-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Return Shipment Header"."Pay-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Return Shipment Header"."Pay-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Return Shipment Header"."Pay-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Return Shipment Header"."Your Reference")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Return Shipment Header"."Ship-to Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Return Shipment Header"."Ship-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Return Shipment Header"."Ship-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Return Shipment Header"."Ship-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Return Shipment Header"."Ship-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Return Shipment Header"."Ship-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Return Shipment Header"."Ship-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Return Shipment Header"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Return Shipment Header"."Expected Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Return Shipment Header"."Posting Description")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Return Shipment Header"."Payment Terms Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Return Shipment Header"."Due Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Return Shipment Header"."Payment Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Return Shipment Header"."Pmt. Discount Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Return Shipment Header"."Shipment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Return Shipment Header"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Return Shipment Header"."Shortcut Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Return Shipment Header"."Shortcut Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Return Shipment Header"."Vendor Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Return Shipment Header"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Return Shipment Header"."Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Return Shipment Header"."Invoice Disc. Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Return Shipment Header"."Language Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Return Shipment Header"."Purchaser Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Return Shipment Header".Comment)
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Return Shipment Header"."No. Printed")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Return Shipment Header"."On Hold")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Return Shipment Header"."Applies-to Doc. Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Return Shipment Header"."Applies-to Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Return Shipment Header"."Bal. Account No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Return Shipment Header"."VAT Registration No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Return Shipment Header"."Sell-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Return Shipment Header"."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Return Shipment Header"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Return Shipment Header"."Transaction Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Return Shipment Header"."Transport Method")
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Return Shipment Header"."VAT Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Return Shipment Header"."Buy-from Vendor Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Return Shipment Header"."Buy-from Vendor Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Return Shipment Header"."Buy-from Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Return Shipment Header"."Buy-from Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Return Shipment Header"."Buy-from City")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Return Shipment Header"."Buy-from Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Return Shipment Header"."Pay-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Return Shipment Header"."Pay-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Return Shipment Header"."Pay-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Return Shipment Header"."Buy-from Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Return Shipment Header"."Buy-from County")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Return Shipment Header"."Buy-from Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Return Shipment Header"."Ship-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Return Shipment Header"."Ship-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Return Shipment Header"."Bal. Account Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Return Shipment Header"."Order Address Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Return Shipment Header"."Entry Point")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Return Shipment Header".Correction)
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Return Shipment Header"."Document Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Return Shipment Header"."Area")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Return Shipment Header"."Transaction Specification")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Return Shipment Header"."Payment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Return Shipment Header"."No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Return Shipment Header"."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Return Shipment Header"."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a73; "Return Shipment Header"."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a74; "Return Shipment Header"."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a75; "Return Shipment Header"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a76; "Return Shipment Header"."VAT Base Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a77; "Return Shipment Header"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a78; "Return Shipment Header"."Campaign No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a79; "Return Shipment Header"."Buy-from Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a80; "Return Shipment Header"."Pay-to Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a81; "Return Shipment Header"."Responsibility Center")
                {
                    FieldValidate = No;
                }
                fieldelement(a82; "Return Shipment Header"."Vendor Authorization No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a83; "Return Shipment Header"."Return Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a84; "Return Shipment Header"."Return Order No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a85; "Return Shipment Header".Adjustment)
                {
                    FieldValidate = No;
                }
                fieldelement(a86; "Return Shipment Header"."BAS Adjustment")
                {
                    FieldValidate = No;
                }
                fieldelement(a87; "Return Shipment Header"."Adjustment Applies-to")
                {
                    FieldValidate = No;
                }
                fieldelement(a88; "Return Shipment Header"."WHT Business Posting Group")
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

