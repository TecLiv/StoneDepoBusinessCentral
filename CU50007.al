codeunit 50103 "test routing entries"
{
    // D:\Test Folder


    trigger OnRun()
    begin
        FileName := 'D:\Test Folder\Test.xlsx';
        IF SalesInvoiceHeader.FINDFIRST THEN;
        //IF REPORT.SAVEASEXCEL(REPORT::"Sales - Invoice",FileName,SalesInvoiceHeader) THEN;
        IF SalesCrMemoHeader.FINDFIRST THEN;
        //IF REPORT.SAVEASEXCEL(REPORT::"Sales - Credit Memo",FileName,SalesCrMemoHeader) THEN;
    end;

    var
        FileName: Text;
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
}

