xmlport 50129 SalesInvoiceHeader_Import
{
    Format = VariableText;
    Permissions = TableData 112 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Sales Invoice Header"; "Sales Invoice Header")
            {
                XmlName = 'SIH';
                fieldelement(a1; "Sales Invoice Header"."Sell-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Sales Invoice Header"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Sales Invoice Header"."Bill-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Sales Invoice Header"."Bill-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Sales Invoice Header"."Bill-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Sales Invoice Header"."Bill-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Sales Invoice Header"."Bill-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Sales Invoice Header"."Bill-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Sales Invoice Header"."Bill-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Sales Invoice Header"."Your Reference")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Sales Invoice Header"."Ship-to Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Sales Invoice Header"."Ship-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Sales Invoice Header"."Ship-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Sales Invoice Header"."Ship-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Sales Invoice Header"."Ship-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Sales Invoice Header"."Ship-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Sales Invoice Header"."Ship-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Sales Invoice Header"."Order Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Sales Invoice Header"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Sales Invoice Header"."Shipment Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Sales Invoice Header"."Posting Description")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Sales Invoice Header"."Payment Terms Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Sales Invoice Header"."Due Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Sales Invoice Header"."Payment Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Sales Invoice Header"."Pmt. Discount Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Sales Invoice Header"."Shipment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Sales Invoice Header"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Sales Invoice Header"."Shortcut Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Sales Invoice Header"."Shortcut Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Sales Invoice Header"."Customer Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Sales Invoice Header"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Sales Invoice Header"."Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Sales Invoice Header"."Customer Price Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Sales Invoice Header"."Prices Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Sales Invoice Header"."Invoice Disc. Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Sales Invoice Header"."Customer Disc. Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Sales Invoice Header"."Language Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Sales Invoice Header"."Salesperson Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Sales Invoice Header"."Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Sales Invoice Header".Comment)
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Sales Invoice Header"."No. Printed")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Sales Invoice Header"."On Hold")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Sales Invoice Header"."Applies-to Doc. Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Sales Invoice Header"."Applies-to Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Sales Invoice Header"."Bal. Account No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Sales Invoice Header".Amount)
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Sales Invoice Header"."Amount Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Sales Invoice Header"."VAT Registration No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Sales Invoice Header"."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Sales Invoice Header"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Sales Invoice Header"."EU 3-Party Trade")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Sales Invoice Header"."Transaction Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Sales Invoice Header"."Transport Method")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Sales Invoice Header"."VAT Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Sales Invoice Header"."Sell-to Customer Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Sales Invoice Header"."Sell-to Customer Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Sales Invoice Header"."Sell-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Sales Invoice Header"."Sell-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Sales Invoice Header"."Sell-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Sales Invoice Header"."Sell-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Sales Invoice Header"."Bill-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Sales Invoice Header"."Bill-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Sales Invoice Header"."Bill-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Sales Invoice Header"."Sell-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Sales Invoice Header"."Sell-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Sales Invoice Header"."Sell-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Sales Invoice Header"."Ship-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Sales Invoice Header"."Ship-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Sales Invoice Header"."Ship-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Sales Invoice Header"."Bal. Account Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Sales Invoice Header"."Exit Point")
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Sales Invoice Header".Correction)
                {
                    FieldValidate = No;
                }
                fieldelement(a73; "Sales Invoice Header"."Document Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a74; "Sales Invoice Header"."External Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a75; "Sales Invoice Header"."Area")
                {
                    FieldValidate = No;
                }
                fieldelement(a76; "Sales Invoice Header"."Transaction Specification")
                {
                    FieldValidate = No;
                }
                fieldelement(a77; "Sales Invoice Header"."Payment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a78; "Sales Invoice Header"."Shipping Agent Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a79; "Sales Invoice Header"."Package Tracking No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a80; "Sales Invoice Header"."Pre-Assigned No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a81; "Sales Invoice Header"."No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a82; "Sales Invoice Header"."Order No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a83; "Sales Invoice Header"."Pre-Assigned No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a84; "Sales Invoice Header"."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a85; "Sales Invoice Header"."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a86; "Sales Invoice Header"."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a87; "Sales Invoice Header"."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a88; "Sales Invoice Header"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a89; "Sales Invoice Header"."Invoice Discount Calculation")
                {
                    FieldValidate = No;
                }
                fieldelement(a90; "Sales Invoice Header"."Invoice Discount Value")
                {
                    FieldValidate = No;
                }
                fieldelement(a91; "Sales Invoice Header"."Prepayment No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a92; "Sales Invoice Header"."Prepayment Invoice")
                {
                    FieldValidate = No;
                }
                fieldelement(a93; "Sales Invoice Header"."Prepayment Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a94; "Sales Invoice Header"."Last Email Sent Time")
                {
                    FieldValidate = No;
                }
                fieldelement(a95; "Sales Invoice Header"."Last Email Sent Status")
                {
                    FieldValidate = No;
                }
                fieldelement(a96; "Sales Invoice Header"."Sent as Email")
                {
                    FieldValidate = No;
                }
                fieldelement(a97; "Sales Invoice Header"."Last Email Notif Cleared")
                {
                    FieldValidate = No;
                }
                fieldelement(a99; "Sales Invoice Header"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a100; "Sales Invoice Header"."Payment Service Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a101; "Sales Invoice Header"."Document Exchange Identifier")
                {
                    FieldValidate = No;
                }
                fieldelement(a102; "Sales Invoice Header"."Document Exchange Status")
                {
                    FieldValidate = No;
                }
                fieldelement(a103; "Sales Invoice Header"."Doc. Exch. Original Identifier")
                {
                    FieldValidate = No;
                }
                fieldelement(a104; "Sales Invoice Header"."Coupled to CRM")
                {
                    FieldValidate = No;
                }
                fieldelement(a105; "Sales Invoice Header"."Direct Debit Mandate ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a106; "Sales Invoice Header".Closed)
                {
                    FieldValidate = No;
                }
                fieldelement(a107; "Sales Invoice Header"."Remaining Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a108; "Sales Invoice Header"."Cust. Ledger Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a109; "Sales Invoice Header"."Invoice Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a110; "Sales Invoice Header".Cancelled)
                {
                    FieldValidate = No;
                }
                fieldelement(a111; "Sales Invoice Header".Corrective)
                {
                    FieldValidate = No;
                }
                fieldelement(a112; "Sales Invoice Header"."Campaign No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a113; "Sales Invoice Header"."Sell-to Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a114; "Sales Invoice Header"."Bill-to Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a115; "Sales Invoice Header"."Opportunity No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a116; "Sales Invoice Header"."Responsibility Center")
                {
                    FieldValidate = No;
                }
                fieldelement(a117; "Sales Invoice Header"."Allow Line Disc.")
                {
                    FieldValidate = No;
                }
                fieldelement(a118; "Sales Invoice Header"."Get Shipment Used")
                {
                    FieldValidate = No;
                }
                fieldelement(a119; "Sales Invoice Header".Id)
                {
                    FieldValidate = No;
                }
                fieldelement(a120; "Sales Invoice Header"."S/T Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a121; "Sales Invoice Header"."S/T Expiry Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a122; "Sales Invoice Header"."WHT Business Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a123; "Sales Invoice Header"."Rem. WHT Prepaid Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a124; "Sales Invoice Header"."Paid WHT Prepaid Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a125; "Sales Invoice Header"."Total WHT Prepaid Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a126; "Sales Invoice Header"."Tax Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a127; "Sales Invoice Header"."Printed Tax Document")
                {
                    FieldValidate = No;
                }
                fieldelement(a128; "Sales Invoice Header"."Posted Tax Document")
                {
                    FieldValidate = No;
                }
                fieldelement(a129; "Sales Invoice Header"."Tax Document Marked")
                {
                    FieldValidate = No;
                }
                fieldelement(a130; "Sales Invoice Header"."Tax Date Filter")
                {
                    FieldValidate = No;
                }
                fieldelement(a131; "Sales Invoice Header"."Invoice Print Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a132; "Sales Invoice Header"."Current Status")
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

