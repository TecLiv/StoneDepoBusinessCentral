xmlport 50119 VATEntry_Import
{
    Format = VariableText;
    Permissions = TableData 254 = rimd;
    Direction = Import;
    UseRequestPage = false;

    schema
    {
        textelement(Root)
        {
            tableelement("VAT Entry"; "VAT Entry")
            {
                XmlName = 'VatEntry';
                fieldelement(a1; "VAT Entry"."Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "VAT Entry"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "VAT Entry"."Gen. Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "VAT Entry"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "VAT Entry"."Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "VAT Entry"."Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "VAT Entry".Type)
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "VAT Entry".Base)
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "VAT Entry".Amount)
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "VAT Entry"."VAT Calculation Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "VAT Entry"."Bill-to/Pay-to No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "VAT Entry"."EU 3-Party Trade")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "VAT Entry"."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "VAT Entry"."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "VAT Entry"."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "VAT Entry"."Closed by Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "VAT Entry".Closed)
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "VAT Entry"."Country/Region Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "VAT Entry"."Internal Ref. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "VAT Entry"."Transaction No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "VAT Entry"."Unrealized Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "VAT Entry"."Unrealized Base")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "VAT Entry"."Remaining Unrealized Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "VAT Entry"."Remaining Unrealized Base")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "VAT Entry"."External Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "VAT Entry"."No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "VAT Entry"."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "VAT Entry"."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "VAT Entry"."Tax Group Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "VAT Entry"."Use Tax")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "VAT Entry"."Tax Jurisdiction Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "VAT Entry"."Tax Group Used")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "VAT Entry"."Tax Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "VAT Entry"."Tax on Tax")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "VAT Entry"."Sales Tax Connection No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "VAT Entry"."Unrealized VAT Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "VAT Entry"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "VAT Entry"."VAT Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "VAT Entry"."Additional-Currency Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "VAT Entry"."Additional-Currency Base")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "VAT Entry"."Add.-Currency Unrealized Amt.")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "VAT Entry"."Add.-Currency Unrealized Base")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "VAT Entry"."VAT Base Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "VAT Entry"."Add.-Curr. Rem. Unreal. Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "VAT Entry"."Add.-Curr. Rem. Unreal. Base")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "VAT Entry"."VAT Difference")
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "VAT Entry"."Add.-Curr. VAT Difference")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "VAT Entry"."Ship-to/Order Address Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "VAT Entry"."Document Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "VAT Entry"."VAT Registration No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "VAT Entry".Reversed)
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "VAT Entry"."Reversed by Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "VAT Entry"."Reversed Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "VAT Entry"."EU Service")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "VAT Entry".Adjustment)
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "VAT Entry"."BAS Adjustment")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "VAT Entry"."BAS Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "VAT Entry"."BAS Version")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "VAT Entry"."Consol. BAS Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "VAT Entry"."Consol. Version No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "VAT Entry"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "VAT Entry"."Sett. Unrealised Amount (FCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "VAT Entry"."Sett. Unrealised Base (FCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "VAT Entry"."Sett. Unrealized Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "VAT Entry"."Sett. Unrealized Base")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "VAT Entry"."Sett. Rem. Unrealized Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "VAT Entry"."Sett. Rem. Unrealized Base")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "VAT Entry"."Settlement Adjustment")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "VAT Entry"."Sett. Payment Entry No.")
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

