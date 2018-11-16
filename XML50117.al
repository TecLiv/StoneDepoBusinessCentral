xmlport 50117 ItemRegister_Import
{
    Format = VariableText;
    Permissions = TableData 46 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Item Register"; "Item Register")
            {
                XmlName = 'IR';
                fieldelement(a1; "Item Register"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Item Register"."From Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Item Register"."To Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Item Register"."Creation Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Item Register"."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Item Register"."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Item Register"."Journal Batch Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Item Register"."From Phys. Inventory Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Item Register"."To Phys. Inventory Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Item Register"."From Value Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Item Register"."To Value Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Item Register"."From Capacity Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Item Register"."To Capacity Entry No.")
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

