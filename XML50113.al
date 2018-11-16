xmlport 50113 VendorLedger_Import
{
    Format = VariableText;
    Permissions = TableData 25 = rimd;
    Direction = Import;
    UseRequestPage = false;


    schema
    {
        textelement(Root)
        {
            tableelement("Vendor Ledger Entry"; "Vendor Ledger Entry")
            {
                XmlName = 'VLE';
                fieldelement(a1; "Vendor Ledger Entry"."Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Vendor Ledger Entry"."Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Vendor Ledger Entry"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Vendor Ledger Entry"."Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Vendor Ledger Entry"."Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Vendor Ledger Entry".Description)
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Vendor Ledger Entry"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Vendor Ledger Entry".Amount)
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Vendor Ledger Entry"."Remaining Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Vendor Ledger Entry"."Original Amt. (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Vendor Ledger Entry"."Remaining Amt. (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Vendor Ledger Entry"."Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Vendor Ledger Entry"."Purchase (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Vendor Ledger Entry"."Inv. Discount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Vendor Ledger Entry"."Buy-from Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Vendor Ledger Entry"."Vendor Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Vendor Ledger Entry"."Global Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Vendor Ledger Entry"."Global Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Vendor Ledger Entry"."Purchaser Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Vendor Ledger Entry"."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Vendor Ledger Entry"."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Vendor Ledger Entry"."On Hold")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Vendor Ledger Entry"."Applies-to Doc. Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Vendor Ledger Entry"."Applies-to Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Vendor Ledger Entry".Open)
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Vendor Ledger Entry"."Due Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Vendor Ledger Entry"."Pmt. Discount Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Vendor Ledger Entry"."Original Pmt. Disc. Possible")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Vendor Ledger Entry"."Pmt. Disc. Rcd.(LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Vendor Ledger Entry".Positive)
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Vendor Ledger Entry"."Closed by Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Vendor Ledger Entry"."Closed at Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Vendor Ledger Entry"."Closed by Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Vendor Ledger Entry"."Applies-to ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Vendor Ledger Entry"."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Vendor Ledger Entry"."Bal. Account Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Vendor Ledger Entry"."Transaction No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Vendor Ledger Entry"."Closed by Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Vendor Ledger Entry"."Debit Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Vendor Ledger Entry"."Credit Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Vendor Ledger Entry"."Debit Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Vendor Ledger Entry"."Credit Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Vendor Ledger Entry"."Document Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Vendor Ledger Entry"."External Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Vendor Ledger Entry"."No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Vendor Ledger Entry"."Closed by Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Vendor Ledger Entry"."Closed by Currency Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Vendor Ledger Entry"."Adjusted Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Vendor Ledger Entry"."Original Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Vendor Ledger Entry"."Original Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Vendor Ledger Entry"."Date Filter")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Vendor Ledger Entry"."Remaining Pmt. Disc. Possible")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Vendor Ledger Entry"."Pmt. Disc. Tolerance Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Vendor Ledger Entry"."Max. Payment Tolerance")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Vendor Ledger Entry"."Accepted Payment Tolerance")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Vendor Ledger Entry"."Accepted Pmt. Disc. Tolerance")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Vendor Ledger Entry"."Pmt. Tolerance (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Vendor Ledger Entry"."Amount to Apply")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Vendor Ledger Entry"."IC Partner Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Vendor Ledger Entry"."Applying Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Vendor Ledger Entry".Reversed)
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Vendor Ledger Entry"."Reversed by Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Vendor Ledger Entry".Prepayment)
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Vendor Ledger Entry"."Creditor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Vendor Ledger Entry"."Payment Reference")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Vendor Ledger Entry"."Payment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Vendor Ledger Entry"."Applies-to Ext. Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Vendor Ledger Entry"."Recipient Bank Account")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Vendor Ledger Entry"."Message to Recipient")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Vendor Ledger Entry"."Exported to Payment File")
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Vendor Ledger Entry"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Vendor Ledger Entry".Adjustment)
                {
                    FieldValidate = No;
                }
                fieldelement(a73; "Vendor Ledger Entry"."BAS Adjustment")
                {
                    FieldValidate = No;
                }
                fieldelement(a74; "Vendor Ledger Entry"."Adjustment Applies-to")
                {
                    FieldValidate = No;
                }
                fieldelement(a75; "Vendor Ledger Entry"."Pre Adjmt. Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a76; "Vendor Ledger Entry"."Financially Voided Cheque")
                {
                    FieldValidate = No;
                }
                fieldelement(a77; "Vendor Ledger Entry"."EFT Register No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a78; "Vendor Ledger Entry"."EFT Amount Transferred")
                {
                    FieldValidate = No;
                }
                fieldelement(a79; "Vendor Ledger Entry"."EFT Bank Account No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a80; "Vendor Ledger Entry"."Rem. Amt for WHT")
                {
                    FieldValidate = No;
                }
                fieldelement(a81; "Vendor Ledger Entry"."Rem. Amt")
                {
                    FieldValidate = No;
                }
                fieldelement(a82; "Vendor Ledger Entry"."WHT Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a83; "Vendor Ledger Entry"."WHT Amount (LCY)")
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

