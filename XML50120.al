xmlport 50120 ItemApplicationEntry_Import
{
    Format = VariableText;
    Permissions = TableData 339 = rimd;
    Direction = Import;
    UseRequestPage = false;

    schema
    {
        textelement(Root)
        {
            tableelement("Item Application Entry"; "Item Application Entry")
            {
                XmlName = 'IAENTRY';
                fieldelement(a1; "Item Application Entry"."Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Item Application Entry"."Item Ledger Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Item Application Entry"."Inbound Item Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Item Application Entry"."Outbound Item Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Item Application Entry".Quantity)
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Item Application Entry"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Item Application Entry"."Transferred-from Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Item Application Entry"."Creation Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Item Application Entry"."Created By User")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Item Application Entry"."Last Modified Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Item Application Entry"."Last Modified By User")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Item Application Entry"."Cost Application")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Item Application Entry"."Output Completely Invd. Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Item Application Entry"."Outbound Entry is Updated")
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

