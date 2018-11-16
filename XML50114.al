xmlport 50114 DetVendorLedger_Import
{
    Format = VariableText;
    Permissions = TableData 380 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Detailed Vendor Ledg. Entry"; "Detailed Vendor Ledg. Entry")
            {
                XmlName = 'DVLE';
                fieldelement(a1; "Detailed Vendor Ledg. Entry"."Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Detailed Vendor Ledg. Entry"."Vendor Ledger Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Detailed Vendor Ledg. Entry"."Entry Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Detailed Vendor Ledg. Entry"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Detailed Vendor Ledg. Entry"."Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Detailed Vendor Ledg. Entry"."Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Detailed Vendor Ledg. Entry".Amount)
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Detailed Vendor Ledg. Entry"."Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Detailed Vendor Ledg. Entry"."Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Detailed Vendor Ledg. Entry"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Detailed Vendor Ledg. Entry"."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Detailed Vendor Ledg. Entry"."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Detailed Vendor Ledg. Entry"."Transaction No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Detailed Vendor Ledg. Entry"."Journal Batch Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Detailed Vendor Ledg. Entry"."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Detailed Vendor Ledg. Entry"."Debit Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Detailed Vendor Ledg. Entry"."Credit Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Detailed Vendor Ledg. Entry"."Debit Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Detailed Vendor Ledg. Entry"."Credit Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Detailed Vendor Ledg. Entry"."Initial Entry Due Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Detailed Vendor Ledg. Entry"."Initial Entry Global Dim. 1")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Detailed Vendor Ledg. Entry"."Initial Entry Global Dim. 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Detailed Vendor Ledg. Entry"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Detailed Vendor Ledg. Entry"."Gen. Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Detailed Vendor Ledg. Entry"."Use Tax")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Detailed Vendor Ledg. Entry"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Detailed Vendor Ledg. Entry"."VAT Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Detailed Vendor Ledg. Entry"."Initial Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Detailed Vendor Ledg. Entry"."Applied Vend. Ledger Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Detailed Vendor Ledg. Entry".Unapplied)
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Detailed Vendor Ledg. Entry"."Unapplied by Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Detailed Vendor Ledg. Entry"."Remaining Pmt. Disc. Possible")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Detailed Vendor Ledg. Entry"."Max. Payment Tolerance")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Detailed Vendor Ledg. Entry"."Tax Jurisdiction Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Detailed Vendor Ledg. Entry"."Application No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Detailed Vendor Ledg. Entry"."Ledger Entry Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Detailed Vendor Ledg. Entry"."Document Date")
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

