xmlport 50135 SalesHeader_Import
{
    Format = VariableText;
    Permissions = TableData 36 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Sales Header"; "Sales Header")
            {
                XmlName = 'SH';
                fieldelement(a1; "Sales Header"."Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Sales Header"."Sell-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Sales Header"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Sales Header"."Bill-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Sales Header"."Bill-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Sales Header"."Bill-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Sales Header"."Bill-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Sales Header"."Bill-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Sales Header"."Bill-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Sales Header"."Bill-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Sales Header"."Your Reference")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Sales Header"."Ship-to Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Sales Header"."Ship-to Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Sales Header"."Ship-to Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Sales Header"."Ship-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Sales Header"."Ship-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Sales Header"."Ship-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Sales Header"."Ship-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Sales Header"."Order Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Sales Header"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Sales Header"."Shipment Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Sales Header"."Posting Description")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Sales Header"."Payment Terms Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Sales Header"."Due Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Sales Header"."Payment Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Sales Header"."Pmt. Discount Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Sales Header"."Shipment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Sales Header"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Sales Header"."Shortcut Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Sales Header"."Shortcut Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Sales Header"."Customer Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Sales Header"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Sales Header"."Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Sales Header"."Customer Price Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Sales Header"."Prices Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Sales Header"."Invoice Disc. Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Sales Header"."Customer Disc. Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Sales Header"."Language Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Sales Header"."Salesperson Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Sales Header"."Order Class")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Sales Header".Comment)
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Sales Header"."No. Printed")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Sales Header"."On Hold")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Sales Header"."Applies-to Doc. Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Sales Header"."Applies-to Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Sales Header"."Bal. Account No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Sales Header"."Recalculate Invoice Disc.")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Sales Header".Ship)
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Sales Header".Invoice)
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Sales Header"."Print Posted Documents")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Sales Header".Amount)
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Sales Header"."Amount Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Sales Header"."Shipping No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Sales Header"."Posting No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Sales Header"."Last Shipping No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Sales Header"."Last Posting No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Sales Header"."Prepayment No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Sales Header"."Last Prepayment No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Sales Header"."Prepmt. Cr. Memo No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Sales Header"."Last Prepmt. Cr. Memo No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Sales Header"."VAT Registration No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Sales Header"."Combine Shipments")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Sales Header"."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Sales Header"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Sales Header"."EU 3-Party Trade")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Sales Header"."Transaction Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Sales Header"."Transport Method")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Sales Header"."VAT Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Sales Header"."Sell-to Customer Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Sales Header"."Sell-to Customer Name 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Sales Header"."Sell-to Address")
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Sales Header"."Sell-to Address 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a73; "Sales Header"."Sell-to City")
                {
                    FieldValidate = No;
                }
                fieldelement(a74; "Sales Header"."Sell-to Contact")
                {
                    FieldValidate = No;
                }
                fieldelement(a75; "Sales Header"."Bill-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a76; "Sales Header"."Bill-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a77; "Sales Header"."Bill-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a78; "Sales Header"."Sell-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a79; "Sales Header"."Sell-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a80; "Sales Header"."Sell-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a81; "Sales Header"."Ship-to Post Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a82; "Sales Header"."Ship-to County")
                {
                    FieldValidate = No;
                }
                fieldelement(a83; "Sales Header"."Ship-to Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a84; "Sales Header"."Bal. Account Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a85; "Sales Header"."Exit Point")
                {
                    FieldValidate = No;
                }
                fieldelement(a86; "Sales Header".Correction)
                {
                    FieldValidate = No;
                }
                fieldelement(a87; "Sales Header"."Document Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a88; "Sales Header"."External Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a89; "Sales Header"."Area")
                {
                    FieldValidate = No;
                }
                fieldelement(a90; "Sales Header"."Transaction Specification")
                {
                    FieldValidate = No;
                }
                fieldelement(a91; "Sales Header"."Payment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a92; "Sales Header"."Shipping Agent Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a93; "Sales Header"."Package Tracking No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a94; "Sales Header"."No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a95; "Sales Header"."Posting No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a96; "Sales Header"."Shipping No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a97; "Sales Header"."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a98; "Sales Header"."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a99; "Sales Header"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a100; "Sales Header".Reserve)
                {
                    FieldValidate = No;
                }
                fieldelement(a101; "Sales Header"."Applies-to ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a102; "Sales Header"."VAT Base Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a103; "Sales Header".Status)
                {
                    FieldValidate = No;
                }
                fieldelement(a104; "Sales Header"."Invoice Discount Calculation")
                {
                    FieldValidate = No;
                }
                fieldelement(a105; "Sales Header"."Invoice Discount Value")
                {
                    FieldValidate = No;
                }
                fieldelement(a106; "Sales Header"."Send IC Document")
                {
                    FieldValidate = No;
                }
                fieldelement(a107; "Sales Header"."IC Status")
                {
                    FieldValidate = No;
                }
                fieldelement(a108; "Sales Header"."Sell-to IC Partner Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a109; "Sales Header"."Bill-to IC Partner Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a110; "Sales Header"."IC Direction")
                {
                    FieldValidate = No;
                }
                fieldelement(a111; "Sales Header"."Prepayment %")
                {
                    FieldValidate = No;
                }
                fieldelement(a112; "Sales Header"."Prepayment No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a113; "Sales Header"."Compress Prepayment")
                {
                    FieldValidate = No;
                }
                fieldelement(a114; "Sales Header"."Prepayment Due Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a115; "Sales Header"."Prepmt. Cr. Memo No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a116; "Sales Header"."Prepmt. Posting Description")
                {
                    FieldValidate = No;
                }
                fieldelement(a117; "Sales Header"."Prepmt. Pmt. Discount Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a118; "Sales Header"."Prepmt. Payment Terms Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a119; "Sales Header"."Prepmt. Payment Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a120; "Sales Header"."Quote No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a121; "Sales Header"."Quote Valid Until Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a122; "Sales Header"."Quote Sent to Customer")
                {
                    FieldValidate = No;
                }
                fieldelement(a123; "Sales Header"."Quote Accepted")
                {
                    FieldValidate = No;
                }
                fieldelement(a124; "Sales Header"."Quote Accepted Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a125; "Sales Header"."Job Queue Status")
                {
                    FieldValidate = No;
                }
                fieldelement(a126; "Sales Header"."Job Queue Entry ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a127; "Sales Header"."Incoming Document Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a128; "Sales Header"."Last Email Sent Time")
                {
                    FieldValidate = No;
                }
                fieldelement(a129; "Sales Header"."Last Email Sent Status")
                {
                    FieldValidate = No;
                }
                fieldelement(a130; "Sales Header"."Sent as Email")
                {
                    FieldValidate = No;
                }
                fieldelement(a131; "Sales Header"."Last Email Notif Cleared")
                {
                    FieldValidate = No;
                }
                fieldelement(a133; "Sales Header"."Amt. Ship. Not Inv. (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a134; "Sales Header"."Amt. Ship. Not Inv. (LCY) Base")
                {
                    FieldValidate = No;
                }
                fieldelement(a135; "Sales Header"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a136; "Sales Header"."Payment Service Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a137; "Sales Header"."Direct Debit Mandate ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a138; "Sales Header"."Invoice Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a139; "Sales Header"."No. of Archived Versions")
                {
                    FieldValidate = No;
                }
                fieldelement(a140; "Sales Header"."Doc. No. Occurrence")
                {
                    FieldValidate = No;
                }
                fieldelement(a141; "Sales Header"."Campaign No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a142; "Sales Header"."Sell-to Customer Template Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a143; "Sales Header"."Sell-to Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a144; "Sales Header"."Bill-to Contact No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a145; "Sales Header"."Bill-to Customer Template Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a146; "Sales Header"."Opportunity No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a147; "Sales Header"."Responsibility Center")
                {
                    FieldValidate = No;
                }
                fieldelement(a148; "Sales Header"."Shipping Advice")
                {
                    FieldValidate = No;
                }
                fieldelement(a149; "Sales Header"."Shipped Not Invoiced")
                {
                    FieldValidate = No;
                }
                fieldelement(a150; "Sales Header"."Completely Shipped")
                {
                    FieldValidate = No;
                }
                fieldelement(a151; "Sales Header"."Posting from Whse. Ref.")
                {
                    FieldValidate = No;
                }
                fieldelement(a152; "Sales Header"."Location Filter")
                {
                    FieldValidate = No;
                }
                fieldelement(a153; "Sales Header".Shipped)
                {
                    FieldValidate = No;
                }
                fieldelement(a154; "Sales Header"."Requested Delivery Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a155; "Sales Header"."Promised Delivery Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a156; "Sales Header"."Shipping Time")
                {
                    FieldValidate = No;
                }
                fieldelement(a157; "Sales Header"."Outbound Whse. Handling Time")
                {
                    FieldValidate = No;
                }
                fieldelement(a158; "Sales Header"."Shipping Agent Service Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a159; "Sales Header"."Late Order Shipping")
                {
                    FieldValidate = No;
                }
                fieldelement(a160; "Sales Header"."Date Filter")
                {
                    FieldValidate = No;
                }
                fieldelement(a161; "Sales Header".Receive)
                {
                    FieldValidate = No;
                }
                fieldelement(a162; "Sales Header"."Return Receipt No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a163; "Sales Header"."Return Receipt No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a164; "Sales Header"."Last Return Receipt No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a165; "Sales Header"."Allow Line Disc.")
                {
                    FieldValidate = No;
                }
                fieldelement(a166; "Sales Header"."Get Shipment Used")
                {
                    FieldValidate = No;
                }
                fieldelement(a167; "Sales Header".Id)
                {
                    FieldValidate = No;
                }
                fieldelement(a168; "Sales Header"."Assigned User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a169; "Sales Header".Adjustment)
                {
                    FieldValidate = No;
                }
                fieldelement(a170; "Sales Header"."BAS Adjustment")
                {
                    FieldValidate = No;
                }
                fieldelement(a171; "Sales Header"."Adjustment Applies-to")
                {
                    FieldValidate = No;
                }
                fieldelement(a172; "Sales Header"."WHT Business Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a173; "Sales Header"."Tax Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a174; "Sales Header"."Printed Tax Document")
                {
                    FieldValidate = No;
                }
                fieldelement(a175; "Sales Header"."Posted Tax Document")
                {
                    FieldValidate = No;
                }
                fieldelement(a176; "Sales Header"."Tax Document Marked")
                {
                    FieldValidate = No;
                }
                fieldelement(a177; "Sales Header"."Current Status")
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

