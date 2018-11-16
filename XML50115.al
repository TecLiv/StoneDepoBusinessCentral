xmlport 50115 ItemLedger_Import
{
    Format = VariableText;
    Permissions = TableData 32 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Item Ledger Entry"; "Item Ledger Entry")
            {
                XmlName = 'ILE';
                fieldelement(a1; "Item Ledger Entry"."Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Item Ledger Entry"."Item No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Item Ledger Entry"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Item Ledger Entry"."Entry Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Item Ledger Entry"."Source No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Item Ledger Entry"."Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Item Ledger Entry".Description)
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Item Ledger Entry"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Item Ledger Entry".Quantity)
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Item Ledger Entry"."Remaining Quantity")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Item Ledger Entry"."Invoiced Quantity")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Item Ledger Entry"."Applies-to Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Item Ledger Entry".Open)
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Item Ledger Entry"."Global Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Item Ledger Entry"."Global Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Item Ledger Entry".Positive)
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Item Ledger Entry"."Source Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Item Ledger Entry"."Drop Shipment")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Item Ledger Entry"."Transaction Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Item Ledger Entry"."Transport Method")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Item Ledger Entry"."Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Item Ledger Entry"."Entry/Exit Point")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Item Ledger Entry"."Document Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Item Ledger Entry"."External Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Item Ledger Entry"."Area")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Item Ledger Entry"."Transaction Specification")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Item Ledger Entry"."No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Item Ledger Entry"."Reserved Quantity")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Item Ledger Entry"."Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Item Ledger Entry"."Document Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Item Ledger Entry"."Order Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Item Ledger Entry"."Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Item Ledger Entry"."Order Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Item Ledger Entry"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Item Ledger Entry"."Assemble to Order")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Item Ledger Entry"."Job No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Item Ledger Entry"."Job Task No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Item Ledger Entry"."Job Purchase")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Item Ledger Entry"."Variant Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Item Ledger Entry"."Qty. per Unit of Measure")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Item Ledger Entry"."Unit of Measure Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Item Ledger Entry"."Derived from Blanket Order")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Item Ledger Entry"."Cross-Reference No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Item Ledger Entry"."Originally Ordered No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Item Ledger Entry"."Originally Ordered Var. Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Item Ledger Entry"."Out-of-Stock Substitution")
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Item Ledger Entry"."Item Category Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Item Ledger Entry".Nonstock)
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Item Ledger Entry"."Purchasing Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Item Ledger Entry"."Completely Invoiced")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Item Ledger Entry"."Last Invoice Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Item Ledger Entry"."Applied Entry to Adjust")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Item Ledger Entry"."Cost Amount (Expected)")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Item Ledger Entry"."Cost Amount (Actual)")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Item Ledger Entry"."Cost Amount (Non-Invtbl.)")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Item Ledger Entry"."Cost Amount (Expected) (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Item Ledger Entry"."Cost Amount (Actual) (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Item Ledger Entry"."Cost Amount (Non-Invtbl.)(ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Item Ledger Entry"."Purchase Amount (Expected)")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Item Ledger Entry"."Purchase Amount (Actual)")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Item Ledger Entry"."Sales Amount (Expected)")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Item Ledger Entry"."Sales Amount (Actual)")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Item Ledger Entry".Correction)
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Item Ledger Entry"."Shipped Qty. Not Returned")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Item Ledger Entry"."Prod. Order Comp. Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Item Ledger Entry"."Serial No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Item Ledger Entry"."Lot No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Item Ledger Entry"."Warranty Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Item Ledger Entry"."Expiration Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Item Ledger Entry"."Item Tracking")
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Item Ledger Entry"."Return Reason Code")
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

