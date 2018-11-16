xmlport 50133 PurchInvHeader_Import
{
    Format = VariableText;
    Permissions = TableData 122 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Purch. Inv. Header"; "Purch. Inv. Header")
            {
                XmlName = 'PIH';
                fieldelement(a1; "Purch. Inv. Header"."Buy-from Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Purch. Inv. Header"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Purch. Inv. Header"."Pay-to Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Purch. Inv. Header"."Pay-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Purch. Inv. Header"."Pay-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Purch. Inv. Header"."Pay-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Purch. Inv. Header"."Pay-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Purch. Inv. Header"."Pay-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Purch. Inv. Header"."Pay-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Purch. Inv. Header"."Your Reference")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Purch. Inv. Header"."Ship-to Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Purch. Inv. Header"."Ship-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Purch. Inv. Header"."Ship-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Purch. Inv. Header"."Ship-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Purch. Inv. Header"."Ship-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Purch. Inv. Header"."Ship-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Purch. Inv. Header"."Ship-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Purch. Inv. Header"."Order Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Purch. Inv. Header"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Purch. Inv. Header"."Expected Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Purch. Inv. Header"."Posting Description")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Purch. Inv. Header"."Payment Terms Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Purch. Inv. Header"."Due Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Purch. Inv. Header"."Payment Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Purch. Inv. Header"."Pmt. Discount Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Purch. Inv. Header"."Shipment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Purch. Inv. Header"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Purch. Inv. Header"."Shortcut Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Purch. Inv. Header"."Shortcut Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Purch. Inv. Header"."Vendor Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Purch. Inv. Header"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Purch. Inv. Header"."Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Purch. Inv. Header"."Prices Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Purch. Inv. Header"."Invoice Disc. Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Purch. Inv. Header"."Language Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Purch. Inv. Header"."Purchaser Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Purch. Inv. Header"."Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Purch. Inv. Header".Comment)
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Purch. Inv. Header"."No. Printed")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Purch. Inv. Header"."On Hold")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Purch. Inv. Header"."Applies-to Doc. Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Purch. Inv. Header"."Applies-to Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Purch. Inv. Header"."Bal. Account No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Purch. Inv. Header".Amount)
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Purch. Inv. Header"."Amount Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Purch. Inv. Header"."Vendor Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Purch. Inv. Header"."Vendor Invoice No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Purch. Inv. Header"."VAT Registration No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Purch. Inv. Header"."Sell-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Purch. Inv. Header"."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Purch. Inv. Header"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Purch. Inv. Header"."Transaction Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Purch. Inv. Header"."Transport Method")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Purch. Inv. Header"."VAT Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Purch. Inv. Header"."Buy-from Vendor Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Purch. Inv. Header"."Buy-from Vendor Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Purch. Inv. Header"."Buy-from Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Purch. Inv. Header"."Buy-from Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Purch. Inv. Header"."Buy-from City")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Purch. Inv. Header"."Buy-from Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Purch. Inv. Header"."Pay-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Purch. Inv. Header"."Pay-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Purch. Inv. Header"."Pay-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Purch. Inv. Header"."Buy-from Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Purch. Inv. Header"."Buy-from County")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Purch. Inv. Header"."Buy-from Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Purch. Inv. Header"."Ship-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Purch. Inv. Header"."Ship-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Purch. Inv. Header"."Ship-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Purch. Inv. Header"."Bal. Account Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Purch. Inv. Header"."Order Address Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Purch. Inv. Header"."Entry Point")
                {
                    FieldValidate = No;
                }
                fieldelement(a73; "Purch. Inv. Header".Correction)
                {
                    FieldValidate = No;
                }
                fieldelement(a74; "Purch. Inv. Header"."Document Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a75; "Purch. Inv. Header"."Area")
                {
                    FieldValidate = No;
                }
                fieldelement(a76; "Purch. Inv. Header"."Transaction Specification")
                {
                    FieldValidate = No;
                }
                fieldelement(a77; "Purch. Inv. Header"."Payment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a78; "Purch. Inv. Header"."Pre-Assigned No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a79; "Purch. Inv. Header"."No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a80; "Purch. Inv. Header"."Order No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a81; "Purch. Inv. Header"."Pre-Assigned No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a82; "Purch. Inv. Header"."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a83; "Purch. Inv. Header"."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a84; "Purch. Inv. Header"."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a85; "Purch. Inv. Header"."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a86; "Purch. Inv. Header"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a87; "Purch. Inv. Header"."VAT Base Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a88; "Purch. Inv. Header"."Prepayment No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a89; "Purch. Inv. Header"."Prepayment Invoice")
                {
                    FieldValidate = No;
                }
                fieldelement(a90; "Purch. Inv. Header"."Prepayment Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a91; "Purch. Inv. Header"."Quote No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a92; "Purch. Inv. Header"."Creditor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a93; "Purch. Inv. Header"."Payment Reference")
                {
                    FieldValidate = No;
                }
                fieldelement(a94; "Purch. Inv. Header"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a95; "Purch. Inv. Header".Closed)
                {
                    FieldValidate = No;
                }
                fieldelement(a96; "Purch. Inv. Header"."Remaining Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a97; "Purch. Inv. Header"."Vendor Ledger Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a98; "Purch. Inv. Header"."Invoice Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a99; "Purch. Inv. Header".Cancelled)
                {
                    FieldValidate = No;
                }
                fieldelement(a100; "Purch. Inv. Header".Corrective)
                {
                    FieldValidate = No;
                }
                fieldelement(a101; "Purch. Inv. Header"."Campaign No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a102; "Purch. Inv. Header"."Buy-from Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a103; "Purch. Inv. Header"."Pay-to Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a104; "Purch. Inv. Header"."Responsibility Center")
                {
                    FieldValidate = No;
                }
                fieldelement(a105; "Purch. Inv. Header".Id)
                {
                    FieldValidate = No;
                }
                fieldelement(a106; "Purch. Inv. Header".ABN)
                {
                    FieldValidate = No;
                }
                fieldelement(a107; "Purch. Inv. Header"."ABN Division Part No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a108; "Purch. Inv. Header"."WHT Business Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a109; "Purch. Inv. Header"."Rem. WHT Prepaid Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a110; "Purch. Inv. Header"."Paid WHT Prepaid Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a111; "Purch. Inv. Header"."Total WHT Prepaid Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a112; "Purch. Inv. Header"."Actual Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a113; "Purch. Inv. Header"."Printed Tax Document")
                {
                    FieldValidate = No;
                }
                fieldelement(a114; "Purch. Inv. Header"."Posted Tax Document")
                {
                    FieldValidate = No;
                }
                fieldelement(a115; "Purch. Inv. Header"."Tax Date Filter")
                {
                    FieldValidate = No;
                }
                fieldelement(a116; "Purch. Inv. Header"."Tax Document Marked")
                {
                    FieldValidate = No;
                }
                fieldelement(a117; "Purch. Inv. Header"."Invoice Print Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a118; "Purch. Inv. Header"."Container No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a119; "Purch. Inv. Header"."Containeer Status")
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

