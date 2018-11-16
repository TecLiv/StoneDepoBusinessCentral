xmlport 50101 "Test Customer"
{
    FormatEvaluate = Xml;
    UseDefaultNamespace = true;

    schema
    {
        textelement(CustomerXML)
        {
            MaxOccurs = Once;
            MinOccurs = Once;
            tableelement(Customer; Customer)
            {
                MaxOccurs = Once;
                XmlName = 'Customer';
                textelement(CustomerName)
                {
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

