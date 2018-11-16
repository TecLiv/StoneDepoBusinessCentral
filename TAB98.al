tableextension 50118 tab98 extends "General Ledger Setup"
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {
        field(50000; "Default Customer Location"; Code[10])
        {
            TableRelation = Location.Code WHERE ("Use As In-Transit" = FILTER (false));
        }
        field(50001; "Default Vendor Location"; Code[10])
        {
            TableRelation = Location.Code WHERE ("Use As In-Transit" = FILTER (false));
        }
    }
}

