xmlport 50132 PurchRcptHeader_Import
{
    Format = VariableText;
    Permissions = TableData 120 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Purch. Rcpt. Header"; "Purch. Rcpt. Header")
            {
                XmlName = 'PRH';
                fieldelement(a1; "Purch. Rcpt. Header"."Buy-from Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Purch. Rcpt. Header"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Purch. Rcpt. Header"."Pay-to Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Purch. Rcpt. Header"."Pay-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Purch. Rcpt. Header"."Pay-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Purch. Rcpt. Header"."Pay-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Purch. Rcpt. Header"."Pay-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Purch. Rcpt. Header"."Pay-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Purch. Rcpt. Header"."Pay-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Purch. Rcpt. Header"."Your Reference")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Purch. Rcpt. Header"."Ship-to Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Purch. Rcpt. Header"."Ship-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Purch. Rcpt. Header"."Ship-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Purch. Rcpt. Header"."Ship-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Purch. Rcpt. Header"."Ship-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Purch. Rcpt. Header"."Ship-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Purch. Rcpt. Header"."Ship-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Purch. Rcpt. Header"."Order Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Purch. Rcpt. Header"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Purch. Rcpt. Header"."Expected Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Purch. Rcpt. Header"."Posting Description")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Purch. Rcpt. Header"."Payment Terms Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Purch. Rcpt. Header"."Due Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Purch. Rcpt. Header"."Payment Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Purch. Rcpt. Header"."Pmt. Discount Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Purch. Rcpt. Header"."Shipment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Purch. Rcpt. Header"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Purch. Rcpt. Header"."Shortcut Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Purch. Rcpt. Header"."Shortcut Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Purch. Rcpt. Header"."Vendor Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Purch. Rcpt. Header"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Purch. Rcpt. Header"."Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Purch. Rcpt. Header"."Invoice Disc. Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Purch. Rcpt. Header"."Language Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Purch. Rcpt. Header"."Purchaser Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Purch. Rcpt. Header"."Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Purch. Rcpt. Header".Comment)
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Purch. Rcpt. Header"."No. Printed")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Purch. Rcpt. Header"."On Hold")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Purch. Rcpt. Header"."Applies-to Doc. Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Purch. Rcpt. Header"."Applies-to Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Purch. Rcpt. Header"."Bal. Account No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Purch. Rcpt. Header"."Vendor Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Purch. Rcpt. Header"."Vendor Shipment No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Purch. Rcpt. Header"."VAT Registration No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Purch. Rcpt. Header"."Sell-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Purch. Rcpt. Header"."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Purch. Rcpt. Header"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Purch. Rcpt. Header"."Transaction Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Purch. Rcpt. Header"."Transport Method")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Purch. Rcpt. Header"."VAT Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Purch. Rcpt. Header"."Buy-from Vendor Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Purch. Rcpt. Header"."Buy-from Vendor Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Purch. Rcpt. Header"."Buy-from Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Purch. Rcpt. Header"."Buy-from Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Purch. Rcpt. Header"."Buy-from City")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Purch. Rcpt. Header"."Buy-from Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Purch. Rcpt. Header"."Pay-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Purch. Rcpt. Header"."Pay-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Purch. Rcpt. Header"."Pay-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Purch. Rcpt. Header"."Buy-from Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Purch. Rcpt. Header"."Buy-from County")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Purch. Rcpt. Header"."Buy-from Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Purch. Rcpt. Header"."Ship-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Purch. Rcpt. Header"."Ship-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Purch. Rcpt. Header"."Ship-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Purch. Rcpt. Header"."Bal. Account Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Purch. Rcpt. Header"."Order Address Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Purch. Rcpt. Header"."Entry Point")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Purch. Rcpt. Header".Correction)
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Purch. Rcpt. Header"."Document Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Purch. Rcpt. Header"."Area")
                {
                    FieldValidate = No;
                }
                fieldelement(a73; "Purch. Rcpt. Header"."Transaction Specification")
                {
                    FieldValidate = No;
                }
                fieldelement(a74; "Purch. Rcpt. Header"."Payment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a75; "Purch. Rcpt. Header"."No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a76; "Purch. Rcpt. Header"."Order No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a77; "Purch. Rcpt. Header"."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a78; "Purch. Rcpt. Header"."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a79; "Purch. Rcpt. Header"."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a80; "Purch. Rcpt. Header"."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a81; "Purch. Rcpt. Header"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a82; "Purch. Rcpt. Header"."VAT Base Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a83; "Purch. Rcpt. Header"."Quote No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a84; "Purch. Rcpt. Header"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a85; "Purch. Rcpt. Header"."Campaign No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a86; "Purch. Rcpt. Header"."Buy-from Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a87; "Purch. Rcpt. Header"."Pay-to Contact no.")
                {
                    FieldValidate = No;
                }
                fieldelement(a88; "Purch. Rcpt. Header"."Responsibility Center")
                {
                    FieldValidate = No;
                }
                fieldelement(a89; "Purch. Rcpt. Header"."Requested Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a90; "Purch. Rcpt. Header"."Promised Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a91; "Purch. Rcpt. Header"."Lead Time Calculation")
                {
                    FieldValidate = No;
                }
                fieldelement(a92; "Purch. Rcpt. Header"."Inbound Whse. Handling Time")
                {
                    FieldValidate = No;
                }
                fieldelement(a93; "Purch. Rcpt. Header".Adjustment)
                {
                    FieldValidate = No;
                }
                fieldelement(a94; "Purch. Rcpt. Header"."BAS Adjustment")
                {
                    FieldValidate = No;
                }
                fieldelement(a95; "Purch. Rcpt. Header"."Adjustment Applies-to")
                {
                    FieldValidate = No;
                }
                fieldelement(a96; "Purch. Rcpt. Header".ABN)
                {
                    FieldValidate = No;
                }
                fieldelement(a97; "Purch. Rcpt. Header"."ABN Division Part No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a98; "Purch. Rcpt. Header"."WHT Business Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a99; "Purch. Rcpt. Header"."Actual Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a100; "Purch. Rcpt. Header"."Containeer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a101; "Purch. Rcpt. Header"."Containeer Status")
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

