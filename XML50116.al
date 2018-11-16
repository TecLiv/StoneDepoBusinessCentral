xmlport 50116 GlRegister_Import
{
    Format = VariableText;
    Permissions = TableData 45 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("G/L Register"; "G/L Register")
            {
                XmlName = 'GLR';
                fieldelement(a1; "G/L Register"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "G/L Register"."From Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "G/L Register"."To Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "G/L Register"."Creation Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "G/L Register"."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "G/L Register"."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "G/L Register"."Journal Batch Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "G/L Register"."From VAT Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "G/L Register"."To VAT Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "G/L Register".Reversed)
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "G/L Register"."From WHT Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "G/L Register"."To WHT Entry No.")
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

