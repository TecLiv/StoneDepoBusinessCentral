codeunit 50106 Subs_CodeUnit
{

    trigger OnRun()
    begin
    end;

    [EventSubscriber(ObjectType::Codeunit, 22, 'OnBeforeInsertTransferEntry', '', false, false)]
    local procedure OnBeforeInsertTransferEntry1(var NewItemLedgerEntry: Record "Item Ledger Entry"; var OldItemLedgerEntry: Record "Item Ledger Entry"; var ItemJournalLine: Record "Item Ledger Entry")
    begin
        WITH ItemJournalLine DO BEGIN
            //DSJS-Start
            NewItemLedgerEntry."Quantity (Add. Base) (SLABS)" := "Quantity (Add. Base) (SLABS)";
            NewItemLedgerEntry."Qty. in SQM" := "Qty. in SQM";
            NewItemLedgerEntry."Length (mm)" := "Length (mm)";
            NewItemLedgerEntry."Width (mm)" := "Width (mm)";
            NewItemLedgerEntry."Warehouse Document No." := "Warehouse Document No.";
            NewItemLedgerEntry."Warehouse Document Line No." := "Warehouse Document Line No.";
            NewItemLedgerEntry."Tracking Lot No." := "Tracking Lot No.";
            NewItemLedgerEntry."Colour Shade" := "Colour Shade";
            NewItemLedgerEntry."Bar Code" := "Bar Code";
            NewItemLedgerEntry."Thickness (mm)" := "Thickness (mm)";
            NewItemLedgerEntry."Category Code" := "Category Code";
            NewItemLedgerEntry."Product Type" := "Product Type";
            NewItemLedgerEntry.Finish := Finish;
            NewItemLedgerEntry."Product Name" := "Product Name";
            //DSJS-End
        END;
    end;
}

