pageextension 50106 Pag46 extends "Sales Order Subform"
{
    layout
    {
        modify("No.")
        {
            CaptionML = ENA = 'Item No.', ENU = 'Item No.';
            ApplicationArea = All;
        }
        addafter(Type)
        {
            field(Finish; Finish)
            {
                ApplicationArea = All;
            }
            field("Thickness (mm)"; "Thickness (mm)")
            {
                ApplicationArea = All;
            }
            field("Length (mm)"; "Length (mm)")
            {
                ApplicationArea = All;
            }
            field("Width (mm)"; "Width (mm)")
            {
                ApplicationArea = All;
            }

        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Type := type::Item;
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        Type := Type::Item;

    end;

}