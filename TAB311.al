tableextension 50133 tab311 extends "Sales & Receivables Setup"
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {
        field(80000; "Default Location"; Code[20])
        {
            TableRelation = Location;
        }
        field(80001; "Default General Posting Group"; Code[10])
        {
            TableRelation = "Gen. Business Posting Group";
        }
        field(80002; "Default Customer Posting Group"; Code[10])
        {
            TableRelation = "Customer Posting Group";
        }
        field(80003; "Stock Availability Email"; Text[80])
        {
        }
    }
}

