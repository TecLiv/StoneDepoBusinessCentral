pageextension 50114 Pag47 extends "Sales Invoice Subform"
{
    layout
    {
        modify("No.")
        {
            Caption = 'Item No.';
            ApplicationArea = All;
        }
        modify(Description)
        {
            Caption = 'Product Name';
            ApplicationArea = All;
        }
        modify("Unit of Measure Code")
        {
            Caption = 'UOM';
            ApplicationArea = All;
        }
        addafter(Description)
        {
            field("Description 2"; "Description 2")
            {
                Caption = 'Product Size';
                ApplicationArea = All;
            }
        }
        addbefore("No.")
        {
            field(Finish; Finish)
            {
                Caption = 'Finish';
                ApplicationArea = All;
            }
        }
    }
}