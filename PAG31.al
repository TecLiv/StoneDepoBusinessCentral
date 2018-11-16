pageextension 50104 Pag31 extends "Item List"

{
    layout
    {
        modify(Description)
        {
            CaptionML = ENA = 'Product Name', ENU = 'Product Name';
            ApplicationArea = All;
        }
        modify("Sales Unit of Measure")
        {
            CaptionML = ENA = 'Specifies the unit of measure code used when you sell the item.',
                        ENU = 'Specifies the unit of measure code used when you sell the item.';
            ApplicationArea = All;
        }
        modify("Purch. Unit of Measure")
        {
            CaptionML = ENA = 'Specifies the unit of measure code used when you purchase the item.',
                        ENU = 'Specifies the unit of measure code used when you purchase the item.';
            ApplicationArea = All;
        }
        modify(Inventory)
        {
            CaptionML = ENU = 'Specifies how many units, such as pieces, boxes, or cans, of the item are in inventory.',
                        ENA = 'Specifies how many units, such as pieces, boxes, or cans, of the item are in inventory.';
            ApplicationArea = All;
        }
        addlast(Item)
        {
            field("Item Customized Code"; "Item Customized Code")
            {
                ApplicationArea = All;
            }
            field("Description 2"; "Description 2")
            {
                CaptionML = ENA = 'Product Name', ENU = 'Product Name';
                ApplicationArea = All;
            }
            field(InventoryInSQM; InventoryInSQM)
            {
                CaptionML = ENA = 'Inventory in SQM', ENU = 'Inventory in SQM';
                ApplicationArea = All;
            }
            field("Qty. on Purch. Order"; "Qty. on Purch. Order")
            {
                ApplicationArea = All;
            }
            field("Qty. on Sales Order"; "Qty. on Sales Order")
            {
                ApplicationArea = All;
            }
            field(Reserve; Reserve)
            {
                ApplicationArea = All;
            }
            field("Reserved Qty. on Inventory"; "Reserved Qty. on Inventory")
            {
                ApplicationArea = All;
            }
            field("Reserved Qty. on Purch. Orders"; "Reserved Qty. on Purch. Orders")
            {
                ApplicationArea = All;
            }
            field("Reserved Qty. on Sales Orders"; "Reserved Qty. on Sales Orders")
            {
                ApplicationArea = All;
            }
            field("Product Type"; "Product Type")
            {
                ApplicationArea = All;
            }
            field(Finish; Finish)
            {
                ApplicationArea = All;
            }
            field(Category; Category)
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
            field("Thickness (mm)"; "Thickness (mm)")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        addlast(Item)
        {
            action("Generate Item Code")
            {
                ApplicationArea = All;
                CaptionML = ENU = 'Generate Item Code', ENA = 'Generate Item Code';
                RunObject = Page "Item Code Generation";
                Promoted = true;
                Image = CreateSKU;
                PromotedCategory = Process;

            }
            action("Stock Availability")
            {
                ApplicationArea = All;
                CaptionML = ENA = 'Stock Availability', ENU = 'Stock Availability';
                RunObject = Report "Stock Availability";
                Promoted = true;
                Image = ItemAvailabilitybyPeriod;
                PromotedCategory = Process;
            }
            action("Stock-Ledger")
            {
                ApplicationArea = All;
                CaptionML = ENA = 'Stock-Ledger', ENU = 'Stock-Ledger';
                RunObject = report "Inventory-Sales-Purch-Details";
                Promoted = true;
                Image = LedgerBook;
                PromotedCategory = Process;
            }
        }
    }

    var
        InventoryInSQM: Decimal;

    trigger OnAfterGetRecord()
    begin
        CALCFIELDS("Qty. on Sales Order", Inventory);
        "Stock On Hand" := Inventory - "Qty. on Sales Order";
        InventoryInSQM := ROUND((Inventory * "Piece SQM"), 0.01, '=');
    end;
}