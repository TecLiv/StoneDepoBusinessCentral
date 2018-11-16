xmlport 50126 SalesInvoiceLine_Import
{
    Format = VariableText;
    Permissions = TableData 113 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Sales Invoice Line"; "Sales Invoice Line")
            {
                XmlName = 'SIL';
                fieldelement(a1; "Sales Invoice Line"."Sell-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Sales Invoice Line"."Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Sales Invoice Line"."Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Sales Invoice Line".Type)
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Sales Invoice Line"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Sales Invoice Line"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Sales Invoice Line"."Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Sales Invoice Line"."Shipment Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Sales Invoice Line".Description)
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Sales Invoice Line"."Description 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Sales Invoice Line"."Unit of Measure")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Sales Invoice Line".Quantity)
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Sales Invoice Line"."Unit Price")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Sales Invoice Line"."Unit Cost (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Sales Invoice Line"."VAT %")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Sales Invoice Line"."Line Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Sales Invoice Line"."Line Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Sales Invoice Line".Amount)
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Sales Invoice Line"."Amount Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Sales Invoice Line"."Allow Invoice Disc.")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Sales Invoice Line"."Gross Weight")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Sales Invoice Line"."Net Weight")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Sales Invoice Line"."Units per Parcel")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Sales Invoice Line"."Unit Volume")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Sales Invoice Line"."Appl.-to Item Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Sales Invoice Line"."Shortcut Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Sales Invoice Line"."Shortcut Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Sales Invoice Line"."Customer Price Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Sales Invoice Line"."Job No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Sales Invoice Line"."Work Type Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Sales Invoice Line"."Shipment No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Sales Invoice Line"."Shipment Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Sales Invoice Line"."Bill-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Sales Invoice Line"."Inv. Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Sales Invoice Line"."Drop Shipment")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Sales Invoice Line"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Sales Invoice Line"."Gen. Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Sales Invoice Line"."VAT Calculation Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Sales Invoice Line"."Transaction Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Sales Invoice Line"."Transport Method")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Sales Invoice Line"."Attached to Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Sales Invoice Line"."Exit Point")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Sales Invoice Line"."Area")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Sales Invoice Line"."Transaction Specification")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Sales Invoice Line"."Tax Category")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Sales Invoice Line"."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Sales Invoice Line"."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Sales Invoice Line"."Tax Group Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Sales Invoice Line"."VAT Clause Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Sales Invoice Line"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Sales Invoice Line"."VAT Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Sales Invoice Line"."Blanket Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Sales Invoice Line"."Blanket Order Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Sales Invoice Line"."VAT Base Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Sales Invoice Line"."Unit Cost")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Sales Invoice Line"."System-Created Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Sales Invoice Line"."Line Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Sales Invoice Line"."VAT Difference")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Sales Invoice Line"."VAT Identifier")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Sales Invoice Line"."IC Partner Ref. Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Sales Invoice Line"."IC Partner Reference")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Sales Invoice Line"."Prepayment Line")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Sales Invoice Line"."IC Partner Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Sales Invoice Line"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Sales Invoice Line"."Line Discount Calculation")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Sales Invoice Line"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Sales Invoice Line"."Job Task No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Sales Invoice Line"."Job Contract Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Sales Invoice Line"."Deferral Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Sales Invoice Line"."Variant Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Sales Invoice Line"."Bin Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Sales Invoice Line"."Qty. per Unit of Measure")
                {
                    FieldValidate = No;
                }
                fieldelement(a73; "Sales Invoice Line"."Unit of Measure Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a74; "Sales Invoice Line"."Quantity (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a75; "Sales Invoice Line"."FA Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a76; "Sales Invoice Line"."Depreciation Book Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a77; "Sales Invoice Line"."Depr. until FA Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a78; "Sales Invoice Line"."Duplicate in Depreciation Book")
                {
                    FieldValidate = No;
                }
                fieldelement(a79; "Sales Invoice Line"."Use Duplication List")
                {
                    FieldValidate = No;
                }
                fieldelement(a80; "Sales Invoice Line"."Responsibility Center")
                {
                    FieldValidate = No;
                }
                fieldelement(a81; "Sales Invoice Line"."Cross-Reference No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a82; "Sales Invoice Line"."Unit of Measure (Cross Ref.)")
                {
                    FieldValidate = No;
                }
                fieldelement(a83; "Sales Invoice Line"."Cross-Reference Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a84; "Sales Invoice Line"."Cross-Reference Type No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a85; "Sales Invoice Line"."Item Category Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a86; "Sales Invoice Line".Nonstock)
                {
                    FieldValidate = No;
                }
                fieldelement(a87; "Sales Invoice Line"."Purchasing Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a89; "Sales Invoice Line"."Appl.-from Item Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(a90; "Sales Invoice Line"."Return Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a91; "Sales Invoice Line"."Allow Line Disc.")
                {
                    FieldValidate = No;
                }
                fieldelement(a92; "Sales Invoice Line"."Customer Disc. Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a93; "Sales Invoice Line"."Price description")
                {
                    FieldValidate = No;
                }
                fieldelement(a94; "Sales Invoice Line"."S/T Exempt")
                {
                    FieldValidate = No;
                }
                fieldelement(a95; "Sales Invoice Line"."WHT Business Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a96; "Sales Invoice Line"."WHT Product Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a97; "Sales Invoice Line"."WHT Absorb Base")
                {
                    FieldValidate = No;
                }
                fieldelement(a98; "Sales Invoice Line"."Prepayment %")
                {
                    FieldValidate = No;
                }
                fieldelement(a99; "Sales Invoice Line"."Length (mm)")
                {
                    FieldValidate = No;
                }
                fieldelement(a100; "Sales Invoice Line".Height)
                {
                    FieldValidate = No;
                }
                fieldelement(a101; "Sales Invoice Line"."SQM/Unit")
                {
                    FieldValidate = No;
                }
                fieldelement(a102; "Sales Invoice Line"."Thickness (mm)")
                {
                    FieldValidate = No;
                }
                fieldelement(a103; "Sales Invoice Line"."Category Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a104; "Sales Invoice Line"."Product Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a105; "Sales Invoice Line".Finish)
                {
                    FieldValidate = No;
                }
                fieldelement(a106; "Sales Invoice Line"."Product Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a107; "Sales Invoice Line".Crates)
                {
                    FieldValidate = No;
                }
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }
}

