xmlport 50124 AvgCostAdjust_Import
{
    Format = VariableText;
    Permissions = TableData 5804 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Avg. Cost Adjmt. Entry Point"; "Avg. Cost Adjmt. Entry Point")
            {
                XmlName = 'AvgCostAdjust';
                fieldelement(a1; "Avg. Cost Adjmt. Entry Point"."Item No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Avg. Cost Adjmt. Entry Point"."Variant Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Avg. Cost Adjmt. Entry Point"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Avg. Cost Adjmt. Entry Point"."Valuation Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Avg. Cost Adjmt. Entry Point"."Cost Is Adjusted")
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

