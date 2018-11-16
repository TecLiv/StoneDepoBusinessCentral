tableextension 50120 tab112 extends "Sales Invoice Header"
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
        field(55556; "Current Status"; Option)
        {
            OptionCaption = 'Open,Sales Approval,Warehouse,Partial Shipped,Shipped';
            OptionMembers = Open,"Sales Approval",Warehouse,"Partial Shipped",Shipped;
            Editable = false;
        }
    }


    //Unsupported feature: Code Modification on "GetWorkDescriptionWorkDescriptionCalculated(PROCEDURE 7)".

    //procedure GetWorkDescriptionWorkDescriptionCalculated();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IF NOT "Work Description".HASVALUE THEN
      EXIT('');

    CR[1] := 10;
    TempBlob.Blob := "Work Description";
    EXIT(TempBlob.ReadAsText(CR,TEXTENCODING::Windows));
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    CALCFIELDS("Work Description");
    #1..6
    */
    //end;
}

