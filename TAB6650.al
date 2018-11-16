tableextension 50141 tab6650 extends "Return Shipment Header"
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {
        field(80007; "Containeer No."; Code[11])
        {
        }
        field(80008; "Containeer Status"; Option)
        {
            OptionCaption = 'Open,In-Transist,Received,Ready To Post';
            OptionMembers = Open,"In-Transist",Received,"Ready To Post";
        }
    }
}

