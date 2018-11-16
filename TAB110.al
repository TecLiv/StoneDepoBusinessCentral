tableextension 50119 tab110 extends "Sales Shipment Header"
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
        field(55556; "Current Status"; option)
        {
            OptionCaption = 'Open,Sales Approval,Warehouse,Partial Shipped,Shipped';
            OptionMembers = Open,"Sales Approval",Warehouse,"Partial Shipped",Shipped;
            Editable = false;
        }
    }
}

