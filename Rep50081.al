report 50115 "Replace Item Code"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Replace Item Code.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {

            trigger OnAfterGetRecord()
            begin
                NewItemCode := INCSTR(NewItemCode);
                Item.RENAME(NewItemCode);
            end;
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

    labels
    {
    }

    trigger OnPreReport()
    begin
        NewItemCode := '1000';
    end;

    var
        NewItemCode: Code[20];
}

