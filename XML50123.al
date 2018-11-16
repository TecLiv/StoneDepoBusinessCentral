xmlport 50123 ValueEntry_Import
{
    Format = VariableText;
    Permissions = TableData 5802 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Value Entry"; "Value Entry")
            {
                XmlName = 'ValueEntry';
                fieldelement(a1; "Value Entry"."Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Value Entry"."Item No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Value Entry"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Value Entry"."Item Ledger Entry Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Value Entry"."Source No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Value Entry"."Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Value Entry".Description)
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Value Entry"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Value Entry"."Inventory Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Value Entry"."Source Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Value Entry"."Item Ledger Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Value Entry"."Valued Quantity")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Value Entry"."Item Ledger Entry Quantity")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Value Entry"."Invoiced Quantity")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Value Entry"."Cost per Unit")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Value Entry"."Sales Amount (Actual)")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Value Entry"."Salespers./Purch. Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Value Entry"."Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Value Entry"."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Value Entry"."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Value Entry"."Applies-to Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Value Entry"."Global Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Value Entry"."Global Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Value Entry"."Source Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Value Entry"."Cost Amount (Actual)")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Value Entry"."Cost Posted to G/L")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Value Entry"."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Value Entry"."Drop Shipment")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Value Entry"."Journal Batch Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Value Entry"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Value Entry"."Gen. Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Value Entry"."Document Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Value Entry"."External Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Value Entry"."Cost Amount (Actual) (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Value Entry"."Cost Posted to G/L (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Value Entry"."Cost per Unit (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Value Entry"."Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Value Entry"."Document Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Value Entry"."Order Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Value Entry"."Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Value Entry"."Order Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Value Entry"."Expected Cost")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Value Entry"."Item Charge No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Value Entry"."Valued By Average Cost")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Value Entry"."Partial Revaluation")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Value Entry".Inventoriable)
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Value Entry"."Valuation Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Value Entry"."Entry Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Value Entry"."Variance Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Value Entry"."Purchase Amount (Actual)")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Value Entry"."Purchase Amount (Expected)")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Value Entry"."Sales Amount (Expected)")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Value Entry"."Cost Amount (Expected)")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Value Entry"."Cost Amount (Non-Invtbl.)")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Value Entry"."Cost Amount (Expected) (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Value Entry"."Cost Amount (Non-Invtbl.)(ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Value Entry"."Expected Cost Posted to G/L")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Value Entry"."Exp. Cost Posted to G/L (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Value Entry"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Value Entry"."Job No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Value Entry"."Job Task No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Value Entry"."Job Ledger Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Value Entry"."Variant Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Value Entry".Adjustment)
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Value Entry"."Average Cost Exception")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Value Entry"."Capacity Ledger Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Value Entry".Type)
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Value Entry"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Value Entry"."Return Reason Code")
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

