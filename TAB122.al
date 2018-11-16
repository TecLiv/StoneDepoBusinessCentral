tableextension 50125 tab122 extends "Purch. Inv. Header"
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {
        field(55555; "Demo Data"; Option)
        {
            OptionCaption = 'No,Yes';
            OptionMembers = No,Yes;
        }
        field(80006; "Free Supply"; Boolean)
        {
        }
        field(80007; "Container No."; Code[11])
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

