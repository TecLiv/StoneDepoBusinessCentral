xmlport 50121 DimensionSetTree_Import
{
    Format = VariableText;
    Permissions = TableData 481 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Dimension Set Tree Node"; "Dimension Set Tree Node")
            {
                XmlName = 'DST';
                fieldelement(a1; "Dimension Set Tree Node"."Parent Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Dimension Set Tree Node"."Dimension Value ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Dimension Set Tree Node"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Dimension Set Tree Node"."In Use")
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

