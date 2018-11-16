tableextension 50101 tab27 extends Item
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {
        modify(Description)
        {
            Caption = 'Print Name';
        }
        modify("Description 2")
        {
            Caption = 'Print Size';
        }
        modify("Created From Nonstock Item")
        {
            Caption = 'Created From Nonstock Item';
        }

        field(50000; "Country Purchase Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(50001; "Country of Origin Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(50003; "Stock On Hand"; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50004; "Product Type"; Code[25])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Process Master".code WHERE ("Document Type" = FILTER ("Product Type"),
                                                         "Document Sub Type" = FILTER ("Product Type"));
        }
        field(50005; "Product Name"; Code[25])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Process Master".Code WHERE ("Document Type" = FILTER ("Product Name"),
                                                         "Document Sub Type" = FILTER ("Product Name"));
        }
        field(50006; Finish; Code[25])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Process Master".Code WHERE ("Document Type" = FILTER (Finish),
                                                         "Document Sub Type" = FILTER (Finish));
        }
        field(50007; "Group Code 4"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Process Master".Code WHERE ("Document Type" = FILTER (Colour),
                                                         "Document Sub Type" = FILTER (Colour));
        }
        field(50008; Category; Code[25])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Process Master".Code WHERE ("Document Type" = FILTER (Category),
                                                         "Document Sub Type" = FILTER (Category));
        }
        field(50009; "Dimension Mandatory"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50010; "Add. Base UOM Mandatory"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50011; "Add. Base Unit of Measure"; Code[10])
        {
            Caption = 'Base Unit of Measure';
            DataClassification = ToBeClassified;
            TableRelation = IF ("Add. Base UOM Mandatory" = FILTER (true)) "Unit of Measure".Code;
        }
        field(50012; "Piece SQM"; Decimal)
        {
            Caption = 'Piece SQM';
            DataClassification = ToBeClassified;
            DecimalPlaces = 3 : 3;

            trigger OnValidate()
            begin
                TESTFIELD("Add. Base Unit of Measure");
            end;
        }
        field(50014; "Dim. UOM Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = IF ("Add. Base UOM Mandatory" = FILTER (true)) "Unit of Measure".Code;
        }
        field(50015; "Length (mm)"; Decimal)
        {
            Caption = 'Length (mm)';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 0;

            trigger OnValidate()
            begin
                IF (("Length (mm)" <> 0) AND ("Width (mm)" <> 0)) THEN
                    "Piece SQM" := ROUND((("Length (mm)" * "Width (mm)") / 1000000), 0.00001, '=');

                IF (("Length (mm)" <> 0) AND ("Width (mm)" <> 0) AND ("Thickness (mm)" <> 0)) THEN
                    "Piece CBM" := ROUND((("Length (mm)" * "Width (mm)" * "Thickness (mm)") / 1000000000), 0.00001, '=');
            end;
        }
        field(50016; "Width (mm)"; Decimal)
        {
            Caption = 'Width (mm)';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 0;

            trigger OnValidate()
            begin
                IF (("Length (mm)" <> 0) AND ("Width (mm)" <> 0)) THEN
                    "Piece SQM" := ROUND((("Length (mm)" * "Width (mm)") / 1000000), 0.00001, '=');

                IF (("Length (mm)" <> 0) AND ("Width (mm)" <> 0) AND ("Thickness (mm)" <> 0)) THEN
                    "Piece CBM" := ROUND((("Length (mm)" * "Width (mm)" * "Thickness (mm)") / 1000000000), 0.00001, '=');
            end;
        }
        field(50017; "Item Inventory"; Integer)
        {
            CalcFormula = Count ("Item Ledger Entry" WHERE ("Item No." = FIELD ("No."),
                                                           "Remaining Quantity" = FILTER (> 0),
                                                           "Location Code" = FIELD ("Location Filter"),
                                                           "Posting Date" = FIELD ("Date Filter"),
                                                           "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                           "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter")));
            FieldClass = FlowField;
        }
        field(50018; "Thickness (mm)"; Decimal)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                IF (("Length (mm)" <> 0) AND ("Width (mm)" <> 0) AND ("Thickness (mm)" <> 0)) THEN
                    "Piece CBM" := ROUND((("Length (mm)" * "Width (mm)" * "Thickness (mm)") / 1000000000), 0.00001, '=');
            end;
        }
        field(50019; "Piece CBM"; Decimal)
        {
            Caption = 'Piece CBM';
            DataClassification = ToBeClassified;
            DecimalPlaces = 5 : 5;
            Editable = false;
        }
        field(50020; "Product Origin"; Code[10])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50021; "Select Items"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50022; "Item Not Use In Report"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50031; "Purchase Invoice Qty."; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50032; "Sales Invoice Qty."; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50033; "Item Customized Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(55555; "Demo Data"; Option)
        {
            DataClassification = ToBeClassified;
            OptionCaption = 'No,Yes';
            OptionMembers = No,Yes;
        }
    }
    keys
    {

        //Unsupported feature: Deletion (KeyCollection) on "Description(Key)".
        key(Key10; Finish)
        {

        }


    }

    //Unsupported feature: Property Modification (Name) on "DropDown(FieldGroup 1)".


    //Unsupported feature: Property Modification (Fields) on "DropDown(FieldGroup 1)".


    //Unsupported feature: Deletion (FieldGroupCollection) on "Brick(FieldGroup 2)".

}

