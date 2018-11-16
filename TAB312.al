tableextension 50134 tab312 extends "Purchases & Payables Setup"
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {
        field(50000; "Purchase Order Location"; Code[10])
        {
            TableRelation = Location.Code WHERE ("Use As In-Transit" = FILTER (false));
        }
    }
}

