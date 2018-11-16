pageextension 50102 Pag30 extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(Assembly)
        {
            field(Category; Category)
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
            field("Product Name"; "Product Name")
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
            field("Piece SQM"; "Piece SQM")
            {
                ApplicationArea = All;
            }
            field("Piece CBM"; "Piece CBM")
            {
                ApplicationArea = All;
            }
            field(InventoryInSQM; InventoryInSQM)
            {
                ApplicationArea = All;
            }


        }
    }

    actions
    {
        // Add changes to page actions here
        addlast(Item)
        {
            action("Generate Item Code")
            {
                ApplicationArea = All;
                CaptionML = ENA = 'Generate Item Code', ENU = 'Generate Item Code';
                //CaptionML=[ENU="Generate Item Code", ENA="Generate Item Code"];
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
                CaptionML = ENU = 'Stock-Ledger', ENA = 'Stock-Ledger';
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
        //DS-START
        CALCFIELDS("Qty. on Sales Order", Inventory);
        "Stock On Hand" := Inventory - "Qty. on Sales Order";
        InventoryInSQM := 0;
        InventoryInSQM := ROUND((Inventory * "Piece SQM"), 0.01, '=');
        //DS-END
    end;
}