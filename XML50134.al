xmlport 50134 PurchHeader_Import
{
    Format = VariableText;
    Permissions = TableData 38 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Purchase Header"; "Purchase Header")
            {
                XmlName = 'PH';
                fieldelement(a1; "Purchase Header"."Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Purchase Header"."Buy-from Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Purchase Header"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Purchase Header"."Pay-to Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Purchase Header"."Pay-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Purchase Header"."Pay-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Purchase Header"."Pay-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Purchase Header"."Pay-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Purchase Header"."Pay-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Purchase Header"."Pay-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Purchase Header"."Your Reference")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Purchase Header"."Ship-to Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Purchase Header"."Ship-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Purchase Header"."Ship-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Purchase Header"."Ship-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Purchase Header"."Ship-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Purchase Header"."Ship-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Purchase Header"."Ship-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Purchase Header"."Order Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Purchase Header"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Purchase Header"."Expected Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Purchase Header"."Posting Description")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Purchase Header"."Payment Terms Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Purchase Header"."Due Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Purchase Header"."Payment Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Purchase Header"."Pmt. Discount Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Purchase Header"."Shipment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Purchase Header"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Purchase Header"."Shortcut Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Purchase Header"."Shortcut Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Purchase Header"."Vendor Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Purchase Header"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Purchase Header"."Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Purchase Header"."Prices Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Purchase Header"."Invoice Disc. Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Purchase Header"."Language Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Purchase Header"."Purchaser Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Purchase Header"."Order Class")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Purchase Header".Comment)
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Purchase Header"."No. Printed")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Purchase Header"."On Hold")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Purchase Header"."Applies-to Doc. Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Purchase Header"."Applies-to Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Purchase Header"."Bal. Account No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Purchase Header"."Recalculate Invoice Disc.")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Purchase Header".Receive)
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Purchase Header".Invoice)
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Purchase Header"."Print Posted Documents")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Purchase Header".Amount)
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Purchase Header"."Amount Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Purchase Header"."Receiving No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Purchase Header"."Posting No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Purchase Header"."Last Receiving No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Purchase Header"."Last Posting No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Purchase Header"."Vendor Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Purchase Header"."Vendor Shipment No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Purchase Header"."Vendor Invoice No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Purchase Header"."Vendor Cr. Memo No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Purchase Header"."VAT Registration No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Purchase Header"."Sell-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Purchase Header"."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Purchase Header"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Purchase Header"."Transaction Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Purchase Header"."Transport Method")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Purchase Header"."VAT Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Purchase Header"."Buy-from Vendor Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Purchase Header"."Buy-from Vendor Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Purchase Header"."Buy-from Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Purchase Header"."Buy-from Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Purchase Header"."Buy-from City")
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Purchase Header"."Buy-from Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Purchase Header"."Pay-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a73; "Purchase Header"."Pay-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a74; "Purchase Header"."Pay-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a75; "Purchase Header"."Buy-from Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a76; "Purchase Header"."Buy-from County")
                {
                    FieldValidate = No;
                }
                fieldelement(a77; "Purchase Header"."Buy-from Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a78; "Purchase Header"."Ship-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a79; "Purchase Header"."Ship-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a80; "Purchase Header"."Ship-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a81; "Purchase Header"."Bal. Account Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a82; "Purchase Header"."Order Address Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a83; "Purchase Header"."Entry Point")
                {
                    FieldValidate = No;
                }
                fieldelement(a84; "Purchase Header".Correction)
                {
                    FieldValidate = No;
                }
                fieldelement(a85; "Purchase Header"."Document Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a86; "Purchase Header"."Area")
                {
                    FieldValidate = No;
                }
                fieldelement(a87; "Purchase Header"."Transaction Specification")
                {
                    FieldValidate = No;
                }
                fieldelement(a88; "Purchase Header"."Payment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a89; "Purchase Header"."No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a90; "Purchase Header"."Posting No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a91; "Purchase Header"."Receiving No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a92; "Purchase Header"."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a93; "Purchase Header"."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a94; "Purchase Header"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a95; "Purchase Header"."Applies-to ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a96; "Purchase Header"."VAT Base Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a97; "Purchase Header".Status)
                {
                    FieldValidate = No;
                }
                fieldelement(a98; "Purchase Header"."Invoice Discount Calculation")
                {
                    FieldValidate = No;
                }
                fieldelement(a99; "Purchase Header"."Invoice Discount Value")
                {
                    FieldValidate = No;
                }
                fieldelement(a100; "Purchase Header"."Send IC Document")
                {
                    FieldValidate = No;
                }
                fieldelement(a101; "Purchase Header"."IC Status")
                {
                    FieldValidate = No;
                }
                fieldelement(a102; "Purchase Header"."Buy-from IC Partner Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a103; "Purchase Header"."Pay-to IC Partner Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a104; "Purchase Header"."IC Direction")
                {
                    FieldValidate = No;
                }
                fieldelement(a105; "Purchase Header"."Prepayment No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a106; "Purchase Header"."Last Prepayment No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a107; "Purchase Header"."Prepmt. Cr. Memo No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a108; "Purchase Header"."Last Prepmt. Cr. Memo No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a109; "Purchase Header"."Prepayment %")
                {
                    FieldValidate = No;
                }
                fieldelement(a110; "Purchase Header"."Prepayment No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a111; "Purchase Header"."Compress Prepayment")
                {
                    FieldValidate = No;
                }
                fieldelement(a112; "Purchase Header"."Prepayment Due Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a113; "Purchase Header"."Prepmt. Cr. Memo No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a114; "Purchase Header"."Prepmt. Posting Description")
                {
                    FieldValidate = No;
                }
                fieldelement(a115; "Purchase Header"."Prepmt. Pmt. Discount Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a116; "Purchase Header"."Prepmt. Payment Terms Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a117; "Purchase Header"."Prepmt. Payment Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a118; "Purchase Header"."Quote No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a119; "Purchase Header"."Job Queue Status")
                {
                    FieldValidate = No;
                }
                fieldelement(a120; "Purchase Header"."Job Queue Entry ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a121; "Purchase Header"."Incoming Document Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a122; "Purchase Header"."Creditor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a123; "Purchase Header"."Payment Reference")
                {
                    FieldValidate = No;
                }
                fieldelement(a124; "Purchase Header"."A. Rcd. Not Inv. Ex. VAT (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a125; "Purchase Header"."Amt. Rcd. Not Invoiced (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a126; "Purchase Header"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a127; "Purchase Header"."Invoice Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a128; "Purchase Header"."No. of Archived Versions")
                {
                    FieldValidate = No;
                }
                fieldelement(a129; "Purchase Header"."Doc. No. Occurrence")
                {
                    FieldValidate = No;
                }
                fieldelement(a130; "Purchase Header"."Campaign No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a131; "Purchase Header"."Buy-from Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a132; "Purchase Header"."Pay-to Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a133; "Purchase Header"."Responsibility Center")
                {
                    FieldValidate = No;
                }
                fieldelement(a134; "Purchase Header"."Completely Received")
                {
                    FieldValidate = No;
                }
                fieldelement(a135; "Purchase Header"."Posting from Whse. Ref.")
                {
                    FieldValidate = No;
                }
                fieldelement(a136; "Purchase Header"."Location Filter")
                {
                    FieldValidate = No;
                }
                fieldelement(a137; "Purchase Header"."Requested Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a138; "Purchase Header"."Promised Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a139; "Purchase Header"."Lead Time Calculation")
                {
                    FieldValidate = No;
                }
                fieldelement(a140; "Purchase Header"."Inbound Whse. Handling Time")
                {
                    FieldValidate = No;
                }
                fieldelement(a141; "Purchase Header"."Date Filter")
                {
                    FieldValidate = No;
                }
                fieldelement(a142; "Purchase Header"."Vendor Authorization No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a143; "Purchase Header"."Return Shipment No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a144; "Purchase Header"."Return Shipment No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a145; "Purchase Header".Ship)
                {
                    FieldValidate = No;
                }
                fieldelement(a146; "Purchase Header"."Last Return Shipment No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a147; "Purchase Header".Id)
                {
                    FieldValidate = No;
                }
                fieldelement(a148; "Purchase Header"."Assigned User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a149; "Purchase Header"."Pending Approvals")
                {
                    FieldValidate = No;
                }
                fieldelement(a150; "Purchase Header".Adjustment)
                {
                    FieldValidate = No;
                }
                fieldelement(a151; "Purchase Header"."BAS Adjustment")
                {
                    FieldValidate = No;
                }
                fieldelement(a152; "Purchase Header"."Adjustment Applies-to")
                {
                    FieldValidate = No;
                }
                fieldelement(a153; "Purchase Header".ABN)
                {
                    FieldValidate = No;
                }
                fieldelement(a154; "Purchase Header"."ABN Division Part No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a155; "Purchase Header"."WHT Business Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a156; "Purchase Header"."Actual Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a157; "Purchase Header"."Printed Tax Document")
                {
                    FieldValidate = No;
                }
                fieldelement(a158; "Purchase Header"."Posted Tax Document")
                {
                    FieldValidate = No;
                }
                fieldelement(a159; "Purchase Header"."Tax Document Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a160; "Purchase Header"."Vendor Exchange Rate (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a161; "Purchase Header"."Container No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a162; "Purchase Header"."Container Status")
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

