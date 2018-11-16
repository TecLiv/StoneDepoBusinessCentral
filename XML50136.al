xmlport 50136 SalesCrMemoHeader_Import
{
    Format = VariableText;
    Permissions = TableData 114 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Sales Cr.Memo Header"; "Sales Cr.Memo Header")
            {
                XmlName = 'SCMH';
                fieldelement(a1; "Sales Cr.Memo Header"."Sell-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Sales Cr.Memo Header"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Sales Cr.Memo Header"."Bill-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Sales Cr.Memo Header"."Bill-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Sales Cr.Memo Header"."Bill-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Sales Cr.Memo Header"."Bill-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Sales Cr.Memo Header"."Bill-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Sales Cr.Memo Header"."Bill-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Sales Cr.Memo Header"."Bill-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Sales Cr.Memo Header"."Your Reference")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Sales Cr.Memo Header"."Ship-to Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Sales Cr.Memo Header"."Ship-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Sales Cr.Memo Header"."Ship-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Sales Cr.Memo Header"."Ship-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Sales Cr.Memo Header"."Ship-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Sales Cr.Memo Header"."Ship-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Sales Cr.Memo Header"."Ship-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Sales Cr.Memo Header"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Sales Cr.Memo Header"."Shipment Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Sales Cr.Memo Header"."Posting Description")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Sales Cr.Memo Header"."Payment Terms Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Sales Cr.Memo Header"."Due Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Sales Cr.Memo Header"."Payment Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Sales Cr.Memo Header"."Pmt. Discount Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Sales Cr.Memo Header"."Shipment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Sales Cr.Memo Header"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Sales Cr.Memo Header"."Shortcut Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Sales Cr.Memo Header"."Shortcut Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Sales Cr.Memo Header"."Customer Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Sales Cr.Memo Header"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Sales Cr.Memo Header"."Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Sales Cr.Memo Header"."Customer Price Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Sales Cr.Memo Header"."Prices Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Sales Cr.Memo Header"."Invoice Disc. Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Sales Cr.Memo Header"."Customer Disc. Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Sales Cr.Memo Header"."Language Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Sales Cr.Memo Header"."Salesperson Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Sales Cr.Memo Header".Comment)
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Sales Cr.Memo Header"."No. Printed")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Sales Cr.Memo Header"."On Hold")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Sales Cr.Memo Header"."Applies-to Doc. Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Sales Cr.Memo Header"."Applies-to Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Sales Cr.Memo Header"."Bal. Account No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Sales Cr.Memo Header".Amount)
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Sales Cr.Memo Header"."Amount Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Sales Cr.Memo Header"."VAT Registration No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Sales Cr.Memo Header"."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Sales Cr.Memo Header"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Sales Cr.Memo Header"."EU 3-Party Trade")
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Sales Cr.Memo Header"."Transaction Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Sales Cr.Memo Header"."Transport Method")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Sales Cr.Memo Header"."VAT Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Sales Cr.Memo Header"."Sell-to Customer Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Sales Cr.Memo Header"."Sell-to Customer Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Sales Cr.Memo Header"."Sell-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Sales Cr.Memo Header"."Sell-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Sales Cr.Memo Header"."Sell-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Sales Cr.Memo Header"."Sell-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Sales Cr.Memo Header"."Bill-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Sales Cr.Memo Header"."Bill-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Sales Cr.Memo Header"."Bill-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Sales Cr.Memo Header"."Sell-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Sales Cr.Memo Header"."Sell-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Sales Cr.Memo Header"."Sell-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Sales Cr.Memo Header"."Ship-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Sales Cr.Memo Header"."Ship-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Sales Cr.Memo Header"."Ship-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Sales Cr.Memo Header"."Bal. Account Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Sales Cr.Memo Header"."Exit Point")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Sales Cr.Memo Header".Correction)
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Sales Cr.Memo Header"."Document Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Sales Cr.Memo Header"."External Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a73; "Sales Cr.Memo Header"."Area")
                {
                    FieldValidate = No;
                }
                fieldelement(a74; "Sales Cr.Memo Header"."Transaction Specification")
                {
                    FieldValidate = No;
                }
                fieldelement(a75; "Sales Cr.Memo Header"."Payment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a76; "Sales Cr.Memo Header"."Pre-Assigned No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a77; "Sales Cr.Memo Header"."No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a78; "Sales Cr.Memo Header"."Pre-Assigned No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a79; "Sales Cr.Memo Header"."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a80; "Sales Cr.Memo Header"."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a81; "Sales Cr.Memo Header"."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a82; "Sales Cr.Memo Header"."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a83; "Sales Cr.Memo Header"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a84; "Sales Cr.Memo Header"."VAT Base Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a85; "Sales Cr.Memo Header"."Prepmt. Cr. Memo No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a86; "Sales Cr.Memo Header"."Prepayment Credit Memo")
                {
                    FieldValidate = No;
                }
                fieldelement(a87; "Sales Cr.Memo Header"."Prepayment Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a88; "Sales Cr.Memo Header"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a89; "Sales Cr.Memo Header"."Document Exchange Identifier")
                {
                    FieldValidate = No;
                }
                fieldelement(a90; "Sales Cr.Memo Header"."Document Exchange Status")
                {
                    FieldValidate = No;
                }
                fieldelement(a91; "Sales Cr.Memo Header"."Doc. Exch. Original Identifier")
                {
                    FieldValidate = No;
                }
                fieldelement(a92; "Sales Cr.Memo Header".Paid)
                {
                    FieldValidate = No;
                }
                fieldelement(a93; "Sales Cr.Memo Header"."Remaining Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a94; "Sales Cr.Memo Header"."Cust. Ledger Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a95; "Sales Cr.Memo Header"."Invoice Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a96; "Sales Cr.Memo Header".Cancelled)
                {
                    FieldValidate = No;
                }
                fieldelement(a97; "Sales Cr.Memo Header".Corrective)
                {
                    FieldValidate = No;
                }
                fieldelement(a98; "Sales Cr.Memo Header"."Campaign No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a99; "Sales Cr.Memo Header"."Sell-to Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a100; "Sales Cr.Memo Header"."Bill-to Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a101; "Sales Cr.Memo Header"."Opportunity No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a102; "Sales Cr.Memo Header"."Responsibility Center")
                {
                    FieldValidate = No;
                }
                fieldelement(a103; "Sales Cr.Memo Header"."Return Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a104; "Sales Cr.Memo Header"."Return Order No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a105; "Sales Cr.Memo Header"."Allow Line Disc.")
                {
                    FieldValidate = No;
                }
                fieldelement(a106; "Sales Cr.Memo Header"."Get Return Receipt Used")
                {
                    FieldValidate = No;
                }
                fieldelement(a107; "Sales Cr.Memo Header".Id)
                {
                    FieldValidate = No;
                }
                fieldelement(a108; "Sales Cr.Memo Header".Adjustment)
                {
                    FieldValidate = No;
                }
                fieldelement(a109; "Sales Cr.Memo Header"."BAS Adjustment")
                {
                    FieldValidate = No;
                }
                fieldelement(a110; "Sales Cr.Memo Header"."Adjustment Applies-to")
                {
                    FieldValidate = No;
                }
                fieldelement(a111; "Sales Cr.Memo Header"."S/T Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a112; "Sales Cr.Memo Header"."S/T Expiry Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a113; "Sales Cr.Memo Header"."WHT Business Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a114; "Sales Cr.Memo Header"."Rem. WHT Prepaid Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a115; "Sales Cr.Memo Header"."Paid WHT Prepaid Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a116; "Sales Cr.Memo Header"."Total WHT Prepaid Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a117; "Sales Cr.Memo Header"."Tax Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a118; "Sales Cr.Memo Header"."Printed Tax Document")
                {
                    FieldValidate = No;
                }
                fieldelement(a119; "Sales Cr.Memo Header"."Posted Tax Document")
                {
                    FieldValidate = No;
                }
                fieldelement(a120; "Sales Cr.Memo Header"."Tax Document Marked")
                {
                    FieldValidate = No;
                }
                fieldelement(a121; "Sales Cr.Memo Header"."Tax Date Filter")
                {
                    FieldValidate = No;
                }
                fieldelement(a122; "Sales Cr.Memo Header"."Invoice Print Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a123; "Sales Cr.Memo Header"."Current Status")
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

