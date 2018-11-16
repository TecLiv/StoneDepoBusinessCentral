page 50102 "Item Code Generation"
{
    PageType = Card;
    SaveValues = true;
    UsageCategory = Tasks;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(ProductOrigin; ProductOrigin)
                {
                    Caption = 'Origin';
                    TableRelation = "Country/Region".Code;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        IF ProductOrigin <> '' THEN BEGIN
                            IF CountryOrigin.GET(ProductOrigin) THEN
                                ProductOriginName := CountryOrigin.Name;
                        END ELSE
                            ProductOriginName := '';
                    end;
                }
                field(ProductOriginName; ProductOriginName)
                {
                    Caption = 'Country';
                    Editable = false;
                    ApplicationArea = All;
                }
                field(CategoryCode; CategoryCode)
                {
                    Caption = 'Category';
                    Lookup = true;
                    ShowMandatory = true;
                    ApplicationArea = All;
                    TableRelation = "Process Master".Code WHERE ("Document Type" = FILTER (Category),
                                                                 "Document Sub Type" = FILTER (Category));
                }
                field(ProductType; ProductType)
                {
                    Caption = 'Product Type';
                    Lookup = true;
                    ShowMandatory = true;
                    ApplicationArea = All;
                    TableRelation = "Process Master".Code WHERE ("Document Type" = FILTER ("Product Type"),
                                                                 "Document Sub Type" = FILTER ("Product Type"));
                }
                field(FinishCode; FinishCode)
                {
                    Caption = 'Finish';
                    Lookup = true;
                    ShowMandatory = true;
                    ApplicationArea = All;
                    TableRelation = "Process Master".Code WHERE ("Document Type" = FILTER (Finish),
                                                                 "Document Sub Type" = FILTER (Finish));
                }
                field(ProductNameCode; ProductNameCode)
                {
                    Caption = 'Product Name';
                    Lookup = true;
                    ShowMandatory = true;
                    ApplicationArea = All;
                    TableRelation = "Process Master".Code WHERE ("Document Type" = FILTER ("Product Name"),
                                                                 "Document Sub Type" = FILTER ("Product Name"));
                }
                field(Length; Length)
                {
                    BlankZero = true;
                    Caption = 'Length';
                    ShowMandatory = true;
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        IF ((Length <> 0) AND (Width <> 0)) THEN
                            PCSSqm := ROUND(((Length * Width) / 1000000), 0.00001, '=');
                    end;
                }
                field(Width; Width)
                {
                    BlankZero = true;
                    Caption = 'Width';
                    ShowMandatory = true;
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        IF ((Length <> 0) AND (Width <> 0)) THEN
                            PCSSqm := ROUND(((Length * Width) / 1000000), 0.00001, '=');
                    end;
                }
                field(Thickness; Thickness)
                {
                    BlankZero = true;
                    Caption = 'Thickness';
                    ShowMandatory = true;
                    ApplicationArea = All;
                }
                field(UOMCode; UOMCode)
                {
                    Caption = 'Base Unit Of Measure';
                    Lookup = true;
                    ShowMandatory = true;
                    TableRelation = "Unit of Measure".Code;
                    ApplicationArea = All;
                }
                field(PurchUOMCode; PurchUOMCode)
                {
                    Caption = 'Purchase Unit Of Measure';
                    ShowMandatory = true;
                    TableRelation = "Unit of Measure".Code;
                    ApplicationArea = All;
                }
                field(SalesUOMCode; SalesUOMCode)
                {
                    Caption = 'Sales Unit Of Measure';
                    Lookup = true;
                    ShowMandatory = true;
                    TableRelation = "Unit of Measure".Code;
                    ApplicationArea = All;
                }
                field(PCSSqm; PCSSqm)
                {
                    Caption = 'SQM';
                    Editable = false;
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(creation)
        {
            action("Generate Item Code")
            {
                Image = CreateSKU;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    IntegrationwithMagento.GenerateItemCode(CategoryCode, ProductType, FinishCode, ProductNameCode, Length, Width, Thickness, UOMCode, ProductOrigin, PCSSqm, SalesUOMCode, PurchUOMCode);
                    /*
                    CategoryCode := '';
                    ProductType := '';
                    FinishCode := '';
                    ProductNameCode := '';
                    Length := 0;
                    Width := 0;
                    Thickness := 0;
                    UOMCode := '';
                    SalesUOMCode := '';
                    PurchUOMCode := '';
                    PCSSqm := 0;
                    ProductOrigin := '';
                    ProductOriginName := '';
                    */

                end;
            }
        }
    }

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        //IntegrationwithMagento.GenerateItemCode(CategoryCode,ProductType,FinishCode,ProductNameCode,Length,Width,Thickness,'');
    end;

    var
        CategoryCode: Code[25];
        ProductType: Code[25];
        FinishCode: Code[25];
        ProductNameCode: Code[25];
        Length: Decimal;
        Width: Decimal;
        Thickness: Decimal;
        UOMCode: Code[10];
        IntegrationwithMagento: Codeunit "Integration with Magento";
        ProductOrigin: Code[10];
        ProductOriginName: Text[50];
        CountryOrigin: Record "Country/Region";
        SalesUOMCode: Code[10];
        PurchUOMCode: Code[10];
        PCSSqm: Decimal;
}

