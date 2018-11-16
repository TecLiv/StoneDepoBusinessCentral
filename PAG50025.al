page 50116 "Purchase Packing List"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Purchase Packing List";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document No."; "Document No.")
                {
                    Editable = false;
                    Enabled = false;
                    ApplicationArea = All;
                }
                field("Document Line No."; "Document Line No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor No."; "Vendor No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                    Enabled = false;
                }
                field("Item No."; "Item No.")
                {
                    Editable = false;
                    ApplicationArea = All;
                    Enabled = false;
                }
                field("Item Description"; "Item Description")
                {
                    Editable = false;
                    ApplicationArea = All;
                    Enabled = false;
                }
                field("Packing Description"; "Packing Description")
                {
                    ApplicationArea = All;
                }
                field("Order Quantity"; "Order Quantity")
                {
                    Editable = false;
                    ApplicationArea = All;
                    Enabled = false;
                    Visible = false;
                }
                field("Outstanding Quantity"; "Outstanding Quantity")
                {
                    Caption = 'PO Quantity';
                    ApplicationArea = All;
                    Editable = false;
                    Enabled = false;
                }
                field("From Parcel No."; "From Parcel No.")
                {
                    ApplicationArea = All;
                }
                field("To Parcel No."; "To Parcel No.")
                {
                    ApplicationArea = All;
                }
                field("No. Of Parcel"; "No. Of Parcel")
                {
                    Editable = false;
                    ApplicationArea = All;
                    Enabled = false;
                }
                field("Quantity Per Parcel"; "Quantity Per Parcel")
                {
                    ApplicationArea = All;
                }
                field("Total Packed Quantity"; "Total Packed Quantity")
                {
                    Caption = 'Total Received Quantity';
                    ApplicationArea = All;
                    Editable = false;
                    Enabled = false;
                }
            }
        }
    }

    actions
    {
    }
}

