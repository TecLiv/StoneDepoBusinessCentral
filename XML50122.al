xmlport 50122 DimensionSetEntry_Import
{
    Format = VariableText;
    Permissions = TableData 480 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Dimension Set Entry"; "Dimension Set Entry")
            {
                XmlName = 'DSE';
                fieldelement(a1; "Dimension Set Entry"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Dimension Set Entry"."Dimension Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Dimension Set Entry"."Dimension Value Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Dimension Set Entry"."Dimension Value ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Dimension Set Entry"."Dimension Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Dimension Set Entry"."Dimension Value Name")
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

