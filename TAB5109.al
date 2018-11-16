tableextension 50139 tab5109 extends "Purchase Header Archive"
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {
        field(80007; "Containeer No."; Code[11])
        {
            Editable = false;
        }
        field(80008; "Containeer Status"; Option)
        {
            OptionCaption = 'Open,In-Transist,Received,Ready To Post';
            OptionMembers = Open,"In-Transist",Received,"Ready To Post";
            Editable = false;
        }
    }
}

