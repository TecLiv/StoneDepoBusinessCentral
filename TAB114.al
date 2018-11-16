tableextension 50112 Tab114 extends "Sales Cr.Memo Header"
{
    fields
    {
        field(55556; "Current Status"; Option)
        {
            OptionCaption = 'Open,Sales Approval,Warehouse,Partial Shipped,Shipped';
            OptionMembers = Open,"Sales Approval",Warehouse,"Partial Shipped",Shipped;
            Editable = false;
        }
    }

    var
        myInt: Integer;
}