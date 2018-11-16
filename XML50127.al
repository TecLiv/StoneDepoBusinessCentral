xmlport 50127 SalesShipmentLine_Import
{
    Format = VariableText;
    Permissions = TableData 111 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Sales Shipment Line"; "Sales Shipment Line")
            {
                XmlName = 'SSL';
                fieldelement(a1; "Sales Shipment Line"."Sell-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Sales Shipment Line"."Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Sales Shipment Line"."Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Sales Shipment Line".Type)
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Sales Shipment Line"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Sales Shipment Line"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Sales Shipment Line"."Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Sales Shipment Line"."Shipment Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Sales Shipment Line".Description)
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Sales Shipment Line"."Description 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Sales Shipment Line"."Unit of Measure")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Sales Shipment Line".Quantity)
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Sales Shipment Line"."Unit Price")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Sales Shipment Line"."Unit Cost (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Sales Shipment Line"."VAT %")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Sales Shipment Line"."Line Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Sales Shipment Line"."Allow Invoice Disc.")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Sales Shipment Line"."Gross Weight")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Sales Shipment Line"."Net Weight")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Sales Shipment Line"."Units per Parcel")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Sales Shipment Line"."Unit Volume")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Sales Shipment Line"."Appl.-to Item Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Sales Shipment Line"."Item Shpt. Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Sales Shipment Line"."Shortcut Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Sales Shipment Line"."Shortcut Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Sales Shipment Line"."Customer Price Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Sales Shipment Line"."Job No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Sales Shipment Line"."Work Type Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Sales Shipment Line"."Qty. Shipped Not Invoiced")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Sales Shipment Line"."Quantity Invoiced")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Sales Shipment Line"."Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Sales Shipment Line"."Order Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Sales Shipment Line"."Bill-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Sales Shipment Line"."Purchase Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Sales Shipment Line"."Purch. Order Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Sales Shipment Line"."Drop Shipment")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Sales Shipment Line"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Sales Shipment Line"."Gen. Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Sales Shipment Line"."VAT Calculation Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Sales Shipment Line"."Transaction Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Sales Shipment Line"."Transport Method")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Sales Shipment Line"."Attached to Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Sales Shipment Line"."Exit Point")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Sales Shipment Line"."Area")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Sales Shipment Line"."Transaction Specification")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Sales Shipment Line"."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Sales Shipment Line"."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Sales Shipment Line"."Tax Group Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Sales Shipment Line"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Sales Shipment Line"."VAT Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Sales Shipment Line"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Sales Shipment Line"."Blanket Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Sales Shipment Line"."Blanket Order Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Sales Shipment Line"."VAT Base Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Sales Shipment Line"."Unit Cost")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Sales Shipment Line"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Sales Shipment Line"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Sales Shipment Line"."Authorized for Credit Card")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Sales Shipment Line"."Job Task No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Sales Shipment Line"."Job Contract Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Sales Shipment Line"."Variant Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Sales Shipment Line"."Bin Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Sales Shipment Line"."Qty. per Unit of Measure")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Sales Shipment Line"."Unit of Measure Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Sales Shipment Line"."Quantity (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Sales Shipment Line"."Qty. Invoiced (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Sales Shipment Line"."FA Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Sales Shipment Line"."Depreciation Book Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Sales Shipment Line"."Depr. until FA Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Sales Shipment Line"."Duplicate in Depreciation Book")
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Sales Shipment Line"."Use Duplication List")
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Sales Shipment Line"."Responsibility Center")
                {
                    FieldValidate = No;
                }
                fieldelement(a73; "Sales Shipment Line"."Cross-Reference No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a74; "Sales Shipment Line"."Unit of Measure (Cross Ref.)")
                {
                    FieldValidate = No;
                }
                fieldelement(a75; "Sales Shipment Line"."Cross-Reference Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a76; "Sales Shipment Line"."Cross-Reference Type No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a77; "Sales Shipment Line"."Item Category Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a78; "Sales Shipment Line".Nonstock)
                {
                    FieldValidate = No;
                }
                fieldelement(a79; "Sales Shipment Line"."Purchasing Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a81; "Sales Shipment Line"."Requested Delivery Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a82; "Sales Shipment Line"."Promised Delivery Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a83; "Sales Shipment Line"."Shipping Time")
                {
                    FieldValidate = No;
                }
                fieldelement(a84; "Sales Shipment Line"."Outbound Whse. Handling Time")
                {
                    FieldValidate = No;
                }
                fieldelement(a85; "Sales Shipment Line"."Planned Delivery Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a86; "Sales Shipment Line"."Planned Shipment Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a87; "Sales Shipment Line"."Appl.-from Item Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(a88; "Sales Shipment Line"."Item Charge Base Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a89; "Sales Shipment Line".Correction)
                {
                    FieldValidate = No;
                }
                fieldelement(a90; "Sales Shipment Line"."Return Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a91; "Sales Shipment Line"."Allow Line Disc.")
                {
                    FieldValidate = No;
                }
                fieldelement(a92; "Sales Shipment Line"."Customer Disc. Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a93; "Sales Shipment Line"."Length")
                {
                    FieldValidate = No;
                }
                fieldelement(a94; "Sales Shipment Line"."Width")
                {
                    FieldValidate = No;
                }
                fieldelement(a95; "Sales Shipment Line".Height)
                {
                    FieldValidate = No;
                }
                fieldelement(a96; "Sales Shipment Line"."SQM/Unit")
                {
                    FieldValidate = No;
                }
                fieldelement(a97; "Sales Shipment Line"."Thickness (mm)")
                {
                    FieldValidate = No;
                }
                fieldelement(a98; "Sales Shipment Line"."Category Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a99; "Sales Shipment Line"."Product Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a100; "Sales Shipment Line".Finish)
                {
                    FieldValidate = No;
                }
                fieldelement(a101; "Sales Shipment Line"."Product Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a102; "Sales Shipment Line".Crates)
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

