report 50108 "CHECK ILE"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CHECK ILE.rdlc';
    EnableExternalImages = false;
    EnableHyperlinks = false;
    Permissions = TableData 32 = rm;
    ProcessingOnly = false;
    ShowPrintStatus = false;
    UseRequestPage = false;
    UseSystemPrinter = false;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {

            trigger OnAfterGetRecord()
            begin
                IF ItemRec.GET("Item Ledger Entry"."Item No.") THEN BEGIN
                    "Item Ledger Entry"."Thickness (mm)" := ItemRec."Thickness (mm)";
                    "Item Ledger Entry".MODIFY;
                END;
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

    trigger OnPostReport()
    begin
        MESSAGE('Done......');
    end;

    var
        ItemRec: Record Item;
}

