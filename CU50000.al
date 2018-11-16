codeunit 50100 "Integration with Magento"
{
    // version DS
    trigger OnRun()
    begin
    end;

    procedure SalesOrderImport(var SalesOrder: XMLport "Sales Order Creat (Mag to Nav)"): Text
    begin
        SalesOrder.IMPORT;
        EXIT('Successfully Imported');
    end;

    procedure TestCustImport(var TestCustomer: XMLport "Test Customer"): Text
    begin
        TestCustomer.IMPORT;
        EXIT('Done');
    end;

    procedure GenerateItemCode(CategoryCode: Code[25]; ProductType: Code[25]; FinishCode: Code[25]; ProductNameCode: Code[25]; Length: Decimal; Width: Decimal; Thickness: Decimal; UOMCode: Code[10]; ProductOrigin: Code[10]; PCSSqm: Decimal; SalesUOMCode: Code[10]; PurchUOMCode: Code[10])
    var
        ItemRec: Record Item;
        NewItemRec: Record Item;
        ItemCode: Code[20];
        ProcessMaster: Record "Process Master";
        ItemUnitofMeasure: Record "Item Unit of Measure";
        DeffDim: Record "Default Dimension";
        DeffDim2: Record "Default Dimension";
        ProcessMaster1: Record "Process Master";
        CategoryCode1: Code[25];
        ProductType1: Code[25];
        FinishCode1: Code[25];
        ProductNameCode1: Code[25];
        DimValue: Record "Dimension Value";
        CountryRegion: Record "Country/Region";
        ItemCard: Page "Item Card";
    begin
        IF ProductOrigin = '' THEN
            ERROR('Product Origin must have a value');
        IF CategoryCode = '' THEN
            ERROR('Category must have a value');
        IF ProductType = '' THEN
            ERROR('Product Tyep must have a value');
        IF FinishCode = '' THEN
            ERROR('Finish must have a value');
        IF ProductNameCode = '' THEN
            ERROR('Product Name must have a value');
        IF Length = 0 THEN
            ERROR('Length must have a value');
        IF Width = 0 THEN
            ERROR('Width must have a value');
        IF Thickness = 0 THEN
            ERROR('Thickness must have a value');
        IF UOMCode = '' THEN
            ERROR('Unit of Measure must have a value');

        ERROR('Sales Unit of Measure must have a value');
        IF PurchUOMCode = '' THEN


            IF NOT CONFIRM('Do you want to generate item code', FALSE) THEN
                EXIT;

        IF ProcessMaster1.GET(ProcessMaster1."Document Type"::Category, ProcessMaster1."Document Sub Type"::Category, CategoryCode) THEN
            CategoryCode1 := ProcessMaster1."Item Code";
        IF ProcessMaster1.GET(ProcessMaster1."Document Type"::"Product Type", ProcessMaster1."Document Sub Type"::"Product Type", ProductType) THEN
            ProductType1 := ProcessMaster1."Item Code";

        //ItemCode := CategoryCode +'-'+ ProductType +'-'+ FinishCode +'-'+ ProductNameCode +'-'+
        //COPYSTR(FORMAT(Length),1,2) + COPYSTR(FORMAT(Width),1,2) + COPYSTR(FORMAT(Thickness),1,2);


        //ItemCode := CategoryCode +'-'+ ProductType +'-'+ FinishCode +'-'+ ProductNameCode +'-'+
        //COPYSTR(FORMAT(Length),1,2) + COPYSTR(FORMAT(Width),1,2) + COPYSTR(FORMAT(Thickness),1,2);

        ItemCode := CategoryCode1 + '-' + ProductType1 + '-' + FinishCode1 + '-' + ProductNameCode1 + '-' +
          COPYSTR(FORMAT(Length), 1, 2) + COPYSTR(FORMAT(Width), 1, 2) + COPYSTR(FORMAT(Thickness), 1, 2);

        ItemRec.RESET;
        ItemRec.SETRANGE("No.", ItemCode);
        IF NOT ItemRec.FINDFIRST THEN BEGIN
            NewItemRec.INIT;
            NewItemRec."No." := ItemCode;
            NewItemRec.INSERT(TRUE);
            NewItemRec.Category := CategoryCode;
            NewItemRec."Product Type" := ProductType;
            NewItemRec.Finish := FinishCode;
            NewItemRec."Product Name" := ProductNameCode;
            NewItemRec.VALIDATE("Length (mm)", Length);
            NewItemRec.VALIDATE("Width (mm)", Width);
            NewItemRec.VALIDATE("Thickness (mm)", Thickness);
            ProcessMaster.RESET;
            ProcessMaster.SETRANGE("Document Type", ProcessMaster."Document Type"::"Product Name");
            ProcessMaster.SETRANGE("Document Sub Type", ProcessMaster."Document Sub Type"::"Product Name");
            ProcessMaster.SETFILTER(Code, ProductNameCode);
            IF ProcessMaster.FINDFIRST THEN
                NewItemRec.VALIDATE(Description, ProcessMaster.Description);
            IF UOMCode <> '' THEN BEGIN
                ItemUnitofMeasure.INIT;
                ItemUnitofMeasure.Code := UOMCode;
                ItemUnitofMeasure."Item No." := ItemCode;
                ItemUnitofMeasure.INSERT(TRUE);


                ItemUnitofMeasure.INIT;
                ItemUnitofMeasure.Code := 'SQM';
                ItemUnitofMeasure."Item No." := ItemCode;
                ItemUnitofMeasure."Qty. per Unit of Measure" := PCSSqm;
                ItemUnitofMeasure.INSERT(TRUE);
            END;

            DimValue.RESET;
            DimValue.SETRANGE("Dimension Code", 'PROD. CATEGORY');
            DimValue.SETRANGE(Code, CategoryCode1);
            IF NOT DimValue.FINDFIRST THEN BEGIN
                DimValue.INIT;
                DimValue."Dimension Code" := 'PROD. CATEGORY';
                DimValue.Code := CategoryCode1;
                DimValue.Name := CategoryCode;
                DimValue.INSERT;
            END;

            DimValue.RESET;
            DimValue.SETRANGE("Dimension Code", 'PROD. TYPE');
            DimValue.SETRANGE(Code, ProductType1);
            IF NOT DimValue.FINDFIRST THEN BEGIN
                DimValue.INIT;
                DimValue."Dimension Code" := 'PROD. TYPE';
                DimValue.Code := ProductType1;
                DimValue.Name := ProductType;
                DimValue.INSERT;
            END;

            DimValue.RESET;
            DimValue.SETRANGE("Dimension Code", 'PROD. ORIGIN');
            DimValue.SETRANGE(Code, ProductOrigin);
            IF NOT DimValue.FINDFIRST THEN BEGIN
                DimValue.INIT;
                DimValue."Dimension Code" := 'PROD. ORIGIN';
                DimValue.Code := ProductOrigin;
                IF CountryRegion.GET(ProductOrigin) THEN
                    DimValue.Name := CountryRegion.Name;
                DimValue.INSERT;
            END;

            //Insert Default dimension
            DeffDim.RESET;
            DeffDim.SETRANGE("Table ID", 27);
            DeffDim.SETRANGE("No.", ItemCode);
            DeffDim.SETRANGE("Dimension Code", 'PROD. ORIGIN');
            IF NOT DeffDim.FINDFIRST THEN BEGIN
                DeffDim2.INIT;
                DeffDim2."Table ID" := 27;
                DeffDim2."No." := ItemCode;
                DeffDim2."Dimension Code" := 'PROD. ORIGIN';
                DeffDim2."Dimension Value Code" := ProductOrigin;
                DeffDim2.INSERT;
            END;

            DeffDim.RESET;
            DeffDim.SETRANGE("Table ID", 27);
            DeffDim.SETRANGE("No.", ItemCode);
            DeffDim.SETRANGE("Dimension Code", 'PROD. TYPE');
            IF NOT DeffDim.FINDFIRST THEN BEGIN
                DeffDim2.INIT;
                DeffDim2."Table ID" := 27;
                DeffDim2."No." := ItemCode;
                DeffDim2."Dimension Code" := 'PROD. TYPE';
                DeffDim2."Dimension Value Code" := ProductType1;
                DeffDim2.INSERT;
            END;

            DeffDim.RESET;
            DeffDim.SETRANGE("Table ID", 27);
            DeffDim.SETRANGE("No.", ItemCode);
            DeffDim.SETRANGE("Dimension Code", 'PROD. CATEGORY');
            IF NOT DeffDim.FINDFIRST THEN BEGIN
                DeffDim2.INIT;
                DeffDim2."Table ID" := 27;
                DeffDim2."No." := ItemCode;
                DeffDim2."Dimension Code" := 'PROD. CATEGORY';
                DeffDim2."Dimension Value Code" := CategoryCode1;
                DeffDim2.INSERT;
            END;

            NewItemRec.VALIDATE("Base Unit of Measure", UOMCode);
            //NewItemRec.VALIDATE("Sales Unit of Measure",UOMCode);
            //NewItemRec.VALIDATE("Purch. Unit of Measure",UOMCode);
            NewItemRec.VALIDATE("Sales Unit of Measure", SalesUOMCode);
            NewItemRec.VALIDATE("Purch. Unit of Measure", PurchUOMCode);
            NewItemRec.VALIDATE("Costing Method", NewItemRec."Costing Method"::Average);
            NewItemRec.VALIDATE("Gen. Prod. Posting Group", 'RETAIL');
            NewItemRec.VALIDATE("Inventory Posting Group", 'FINISHED');
            NewItemRec."Country/Region Purchased Code" := ProductOrigin;
            //NewItemRec.VALIDATE("Global Dimension 1 Code",ProductOrigin);
            //NewItemRec.VALIDATE("Global Dimension 2 Code",CategoryCode1);
            NewItemRec.MODIFY;
            MESSAGE('Item  No. %1 generated Successfully.', ItemCode);
            /*
            CLEAR(ItemCard);
            ItemCard.SETTABLEVIEW(NewItemRec);
            ItemCard.RUN;
            */
        END ELSE
            MESSAGE('.Item  No. already generated.%1', ItemRec."No.");

    end;
}

