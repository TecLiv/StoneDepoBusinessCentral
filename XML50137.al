xmlport 50137 PurchCrMemoHeader_Import
{
    Format = VariableText;
    Permissions = TableData 124 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Purch. Cr. Memo Hdr."; "Purch. Cr. Memo Hdr.")
            {
                XmlName = 'PCMH';
                fieldelement(a1; "Purch. Cr. Memo Hdr."."Buy-from Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Purch. Cr. Memo Hdr."."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Purch. Cr. Memo Hdr."."Pay-to Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Purch. Cr. Memo Hdr."."Pay-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Purch. Cr. Memo Hdr."."Pay-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Purch. Cr. Memo Hdr."."Pay-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Purch. Cr. Memo Hdr."."Pay-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Purch. Cr. Memo Hdr."."Pay-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Purch. Cr. Memo Hdr."."Pay-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Purch. Cr. Memo Hdr."."Your Reference")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Purch. Cr. Memo Hdr."."Ship-to Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Purch. Cr. Memo Hdr."."Ship-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Purch. Cr. Memo Hdr."."Ship-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Purch. Cr. Memo Hdr."."Ship-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Purch. Cr. Memo Hdr."."Ship-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Purch. Cr. Memo Hdr."."Ship-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Purch. Cr. Memo Hdr."."Ship-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Purch. Cr. Memo Hdr."."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Purch. Cr. Memo Hdr."."Expected Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Purch. Cr. Memo Hdr."."Posting Description")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Purch. Cr. Memo Hdr."."Posting Description")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Purch. Cr. Memo Hdr."."Payment Terms Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Purch. Cr. Memo Hdr."."Due Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Purch. Cr. Memo Hdr."."Payment Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Purch. Cr. Memo Hdr."."Pmt. Discount Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Purch. Cr. Memo Hdr."."Shipment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Purch. Cr. Memo Hdr."."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Purch. Cr. Memo Hdr."."Shortcut Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Purch. Cr. Memo Hdr."."Shortcut Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Purch. Cr. Memo Hdr."."Vendor Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Purch. Cr. Memo Hdr."."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Purch. Cr. Memo Hdr."."Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Purch. Cr. Memo Hdr."."Prices Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Purch. Cr. Memo Hdr."."Invoice Disc. Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Purch. Cr. Memo Hdr."."Language Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Purch. Cr. Memo Hdr."."Purchaser Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Purch. Cr. Memo Hdr.".Comment)
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Purch. Cr. Memo Hdr."."No. Printed")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Purch. Cr. Memo Hdr."."On Hold")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Purch. Cr. Memo Hdr."."Applies-to Doc. Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Purch. Cr. Memo Hdr."."Applies-to Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Purch. Cr. Memo Hdr."."Bal. Account No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Purch. Cr. Memo Hdr.".Amount)
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Purch. Cr. Memo Hdr."."Amount Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Purch. Cr. Memo Hdr."."Vendor Cr. Memo No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Purch. Cr. Memo Hdr."."VAT Registration No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Purch. Cr. Memo Hdr."."Sell-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Purch. Cr. Memo Hdr."."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Purch. Cr. Memo Hdr."."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Purch. Cr. Memo Hdr."."Transaction Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Purch. Cr. Memo Hdr."."Transport Method")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Purch. Cr. Memo Hdr."."VAT Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Purch. Cr. Memo Hdr."."Buy-from Vendor Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Purch. Cr. Memo Hdr."."Buy-from Vendor Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Purch. Cr. Memo Hdr."."Buy-from Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Purch. Cr. Memo Hdr."."Buy-from Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Purch. Cr. Memo Hdr."."Buy-from City")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Purch. Cr. Memo Hdr."."Buy-from Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Purch. Cr. Memo Hdr."."Pay-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Purch. Cr. Memo Hdr."."Pay-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Purch. Cr. Memo Hdr."."Pay-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Purch. Cr. Memo Hdr."."Buy-from Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Purch. Cr. Memo Hdr."."Buy-from County")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Purch. Cr. Memo Hdr."."Buy-from Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Purch. Cr. Memo Hdr."."Ship-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Purch. Cr. Memo Hdr."."Ship-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Purch. Cr. Memo Hdr."."Ship-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Purch. Cr. Memo Hdr."."Bal. Account Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Purch. Cr. Memo Hdr."."Order Address Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Purch. Cr. Memo Hdr."."Entry Point")
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Purch. Cr. Memo Hdr.".Correction)
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Purch. Cr. Memo Hdr."."Document Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a73; "Purch. Cr. Memo Hdr."."Area")
                {
                    FieldValidate = No;
                }
                fieldelement(a74; "Purch. Cr. Memo Hdr."."Transaction Specification")
                {
                    FieldValidate = No;
                }
                fieldelement(a75; "Purch. Cr. Memo Hdr."."Payment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a76; "Purch. Cr. Memo Hdr."."Pre-Assigned No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a77; "Purch. Cr. Memo Hdr."."No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a78; "Purch. Cr. Memo Hdr."."Pre-Assigned No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a79; "Purch. Cr. Memo Hdr."."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a80; "Purch. Cr. Memo Hdr."."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a81; "Purch. Cr. Memo Hdr."."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a82; "Purch. Cr. Memo Hdr."."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a83; "Purch. Cr. Memo Hdr."."VAT Base Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a84; "Purch. Cr. Memo Hdr."."Prepmt. Cr. Memo No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a85; "Purch. Cr. Memo Hdr."."Prepayment Credit Memo")
                {
                    FieldValidate = No;
                }
                fieldelement(a86; "Purch. Cr. Memo Hdr."."Prepayment Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a87; "Purch. Cr. Memo Hdr."."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a88; "Purch. Cr. Memo Hdr.".Paid)
                {
                    FieldValidate = No;
                }
                fieldelement(a89; "Purch. Cr. Memo Hdr."."Remaining Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a90; "Purch. Cr. Memo Hdr."."Vendor Ledger Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a91; "Purch. Cr. Memo Hdr."."Invoice Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a92; "Purch. Cr. Memo Hdr.".Cancelled)
                {
                    FieldValidate = No;
                }
                fieldelement(a93; "Purch. Cr. Memo Hdr.".Corrective)
                {
                    FieldValidate = No;
                }
                fieldelement(a94; "Purch. Cr. Memo Hdr."."Campaign No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a95; "Purch. Cr. Memo Hdr."."Buy-from Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a96; "Purch. Cr. Memo Hdr."."Pay-to Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a97; "Purch. Cr. Memo Hdr."."Responsibility Center")
                {
                    FieldValidate = No;
                }
                fieldelement(a98; "Purch. Cr. Memo Hdr."."Return Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a99; "Purch. Cr. Memo Hdr."."Return Order No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a100; "Purch. Cr. Memo Hdr.".Adjustment)
                {
                    FieldValidate = No;
                }
                fieldelement(a101; "Purch. Cr. Memo Hdr."."BAS Adjustment")
                {
                    FieldValidate = No;
                }
                fieldelement(a102; "Purch. Cr. Memo Hdr."."Adjustment Applies-to")
                {
                    FieldValidate = No;
                }
                fieldelement(a103; "Purch. Cr. Memo Hdr.".ABN)
                {
                    FieldValidate = No;
                }
                fieldelement(a104; "Purch. Cr. Memo Hdr."."ABN Division Part No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a105; "Purch. Cr. Memo Hdr."."WHT Business Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a106; "Purch. Cr. Memo Hdr."."Rem. WHT Prepaid Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a107; "Purch. Cr. Memo Hdr."."Paid WHT Prepaid Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a108; "Purch. Cr. Memo Hdr."."Total WHT Prepaid Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a109; "Purch. Cr. Memo Hdr."."Actual Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a110; "Purch. Cr. Memo Hdr."."Printed Tax Document")
                {
                    FieldValidate = No;
                }
                fieldelement(a111; "Purch. Cr. Memo Hdr."."Posted Tax Document")
                {
                    FieldValidate = No;
                }
                fieldelement(a112; "Purch. Cr. Memo Hdr."."Tax Date Filter")
                {
                    FieldValidate = No;
                }
                fieldelement(a113; "Purch. Cr. Memo Hdr."."Tax Document Marked")
                {
                    FieldValidate = No;
                }
                fieldelement(a114; "Purch. Cr. Memo Hdr."."Invoice Print Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a115; "Purch. Cr. Memo Hdr."."Containeer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a116; "Purch. Cr. Memo Hdr."."Containeer Status")
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

