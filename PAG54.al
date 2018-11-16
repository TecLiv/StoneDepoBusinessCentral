pageextension 50111 Pag54 extends "Purchase Order Subform"
{
    layout
    {
        modify("No.")
        {
            CaptionML = ENA = 'Item No.', ENU = 'Item No.';
            ApplicationArea = All;
        }
        modify(Description)
        {
            CaptionML = ENA = 'Product Name', ENU = 'Product Name';
            ApplicationArea = All;
        }
        modify("Unit of Measure Code")
        {
            CaptionML = ENA = 'UOM', ENU = 'UOM';
            ApplicationArea = All;
        }
        modify("Line Amount")
        {
            CaptionML = ENA = 'Amount', ENU = 'Amount';
            ApplicationArea = All;
        }
        modify("Direct Unit Cost")
        {
            CaptionML = ENA = 'Unit Cost', ENU = 'Unit Cost';
            ApplicationArea = All;
        }
        addafter(Description)
        {
            field("Description 2"; "Description 2")
            {
                CaptionML = ENA = 'Product Size', ENU = 'Product Size';
                ApplicationArea = All;
            }
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
            field("Qty. in SQM"; "Qty. in SQM")
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
        Type := Type::Item;
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        Type := Type::Item
    end;

}