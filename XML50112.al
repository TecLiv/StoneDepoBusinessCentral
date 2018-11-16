xmlport 50112 DetCustLedger_Import
{
    Format = VariableText;
    Permissions = TableData 379 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Detailed Cust. Ledg. Entry"; "Detailed Cust. Ledg. Entry")
            {
                XmlName = 'DCLE';
                fieldelement(a1; "Detailed Cust. Ledg. Entry"."Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Detailed Cust. Ledg. Entry"."Cust. Ledger Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Detailed Cust. Ledg. Entry"."Entry Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Detailed Cust. Ledg. Entry"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Detailed Cust. Ledg. Entry"."Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Detailed Cust. Ledg. Entry"."Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Detailed Cust. Ledg. Entry".Amount)
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Detailed Cust. Ledg. Entry"."Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Detailed Cust. Ledg. Entry"."Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Detailed Cust. Ledg. Entry"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Detailed Cust. Ledg. Entry"."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Detailed Cust. Ledg. Entry"."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Detailed Cust. Ledg. Entry"."Transaction No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Detailed Cust. Ledg. Entry"."Journal Batch Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Detailed Cust. Ledg. Entry"."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Detailed Cust. Ledg. Entry"."Debit Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Detailed Cust. Ledg. Entry"."Credit Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Detailed Cust. Ledg. Entry"."Debit Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Detailed Cust. Ledg. Entry"."Credit Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Detailed Cust. Ledg. Entry"."Initial Entry Due Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Detailed Cust. Ledg. Entry"."Initial Entry Global Dim. 1")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Detailed Cust. Ledg. Entry"."Initial Entry Global Dim. 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Detailed Cust. Ledg. Entry"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Detailed Cust. Ledg. Entry"."Gen. Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Detailed Cust. Ledg. Entry"."Use Tax")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Detailed Cust. Ledg. Entry"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Detailed Cust. Ledg. Entry"."VAT Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Detailed Cust. Ledg. Entry"."Initial Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Detailed Cust. Ledg. Entry"."Applied Cust. Ledger Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Detailed Cust. Ledg. Entry".Unapplied)
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Detailed Cust. Ledg. Entry"."Unapplied by Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Detailed Cust. Ledg. Entry"."Remaining Pmt. Disc. Possible")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Detailed Cust. Ledg. Entry"."Max. Payment Tolerance")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Detailed Cust. Ledg. Entry"."Tax Jurisdiction Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Detailed Cust. Ledg. Entry"."Application No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Detailed Cust. Ledg. Entry"."Ledger Entry Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Detailed Cust. Ledg. Entry"."Document Date")
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

