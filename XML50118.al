xmlport 50118 GLEntryLinkVat_Import
{
    Format = VariableText;
    Permissions = TableData 253 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("G/L Entry - VAT Entry Link"; "G/L Entry - VAT Entry Link")
            {
                XmlName = 'GLE';
                fieldelement(a1; "G/L Entry - VAT Entry Link"."G/L Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "G/L Entry - VAT Entry Link"."VAT Entry No.")
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

