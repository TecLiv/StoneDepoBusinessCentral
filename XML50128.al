xmlport 50128 PurchInvoiceLine_Import
{
    Format = VariableText;
    Permissions = TableData 123 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Purch. Inv. Line"; "Purch. Inv. Line")
            {
                XmlName = 'PIL';
                fieldelement(a1; "Purch. Inv. Line"."Buy-from Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Purch. Inv. Line"."Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Purch. Inv. Line"."Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Purch. Inv. Line".Type)
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Purch. Inv. Line"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Purch. Inv. Line"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Purch. Inv. Line"."Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Purch. Inv. Line"."Expected Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Purch. Inv. Line".Description)
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Purch. Inv. Line"."Description 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Purch. Inv. Line"."Unit of Measure")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Purch. Inv. Line".Quantity)
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Purch. Inv. Line"."Direct Unit Cost")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Purch. Inv. Line"."Unit Cost (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Purch. Inv. Line"."Line Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Purch. Inv. Line"."Line Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Purch. Inv. Line".Amount)
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Purch. Inv. Line"."Amount Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Purch. Inv. Line"."Unit Price (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Purch. Inv. Line"."Allow Invoice Disc.")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Purch. Inv. Line"."Gross Weight")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Purch. Inv. Line"."Net Weight")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Purch. Inv. Line"."Units per Parcel")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Purch. Inv. Line"."Unit Volume")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Purch. Inv. Line"."Appl.-to Item Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Purch. Inv. Line"."Shortcut Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Purch. Inv. Line"."Shortcut Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Purch. Inv. Line"."Job No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Purch. Inv. Line"."Indirect Cost %")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Purch. Inv. Line"."Receipt No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Purch. Inv. Line"."Receipt Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Purch. Inv. Line"."Pay-to Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Purch. Inv. Line"."Inv. Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Purch. Inv. Line"."Vendor Item No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Purch. Inv. Line"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Purch. Inv. Line"."Gen. Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Purch. Inv. Line"."VAT Calculation Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Purch. Inv. Line"."Transaction Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Purch. Inv. Line"."Transport Method")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Purch. Inv. Line"."Attached to Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Purch. Inv. Line"."Entry Point")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Purch. Inv. Line"."Area")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Purch. Inv. Line"."Transaction Specification")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Purch. Inv. Line"."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Purch. Inv. Line"."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Purch. Inv. Line"."Tax Group Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Purch. Inv. Line"."Use Tax")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Purch. Inv. Line"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Purch. Inv. Line"."VAT Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Purch. Inv. Line"."Blanket Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Purch. Inv. Line"."Blanket Order Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Purch. Inv. Line"."VAT Base Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Purch. Inv. Line"."Unit Cost")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Purch. Inv. Line"."System-Created Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Purch. Inv. Line"."Line Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Purch. Inv. Line"."VAT Difference")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Purch. Inv. Line"."VAT Identifier")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Purch. Inv. Line"."IC Partner Ref. Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Purch. Inv. Line"."Prepayment Line")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Purch. Inv. Line"."IC Partner Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Purch. Inv. Line"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Purch. Inv. Line"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Purch. Inv. Line"."Job Task No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Purch. Inv. Line"."Job Line Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Purch. Inv. Line"."Job Unit Price")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Purch. Inv. Line"."Job Line Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Purch. Inv. Line"."Job Line Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Purch. Inv. Line"."Job Line Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Purch. Inv. Line"."Job Unit Price (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Purch. Inv. Line"."Job Total Price (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Purch. Inv. Line"."Job Line Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Purch. Inv. Line"."Job Line Disc. Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a73; "Purch. Inv. Line"."Job Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(a74; "Purch. Inv. Line"."Job Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a75; "Purch. Inv. Line"."Deferral Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a76; "Purch. Inv. Line"."Prod. Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a77; "Purch. Inv. Line"."Variant Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a78; "Purch. Inv. Line"."Bin Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a79; "Purch. Inv. Line"."Qty. per Unit of Measure")
                {
                    FieldValidate = No;
                }
                fieldelement(a80; "Purch. Inv. Line"."Unit of Measure Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a81; "Purch. Inv. Line"."Quantity (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a82; "Purch. Inv. Line"."FA Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a83; "Purch. Inv. Line"."FA Posting Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a84; "Purch. Inv. Line"."Depreciation Book Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a85; "Purch. Inv. Line"."Salvage Value")
                {
                    FieldValidate = No;
                }
                fieldelement(a86; "Purch. Inv. Line"."Depr. until FA Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a87; "Purch. Inv. Line"."Depr. Acquisition Cost")
                {
                    FieldValidate = No;
                }
                fieldelement(a88; "Purch. Inv. Line"."Maintenance Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a89; "Purch. Inv. Line"."Insurance No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a90; "Purch. Inv. Line"."Budgeted FA No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a91; "Purch. Inv. Line"."Use Duplication List")
                {
                    FieldValidate = No;
                }
                fieldelement(a92; "Purch. Inv. Line"."Responsibility Center")
                {
                    FieldValidate = No;
                }
                fieldelement(a93; "Purch. Inv. Line"."Cross-Reference No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a94; "Purch. Inv. Line"."Unit of Measure (Cross Ref.)")
                {
                    FieldValidate = No;
                }
                fieldelement(a95; "Purch. Inv. Line"."Cross-Reference Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a96; "Purch. Inv. Line"."Cross-Reference Type No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a97; "Purch. Inv. Line"."Item Category Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a98; "Purch. Inv. Line".Nonstock)
                {
                    FieldValidate = No;
                }
                fieldelement(a99; "Purch. Inv. Line"."Purchasing Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a101; "Purch. Inv. Line"."Return Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a102; "Purch. Inv. Line"."WHT Business Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a103; "Purch. Inv. Line"."WHT Product Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a104; "Purch. Inv. Line"."WHT Absorb Base")
                {
                    FieldValidate = No;
                }
                fieldelement(a105; "Purch. Inv. Line"."VAT Base (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a106; "Purch. Inv. Line"."Amount Including VAT (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a107; "Purch. Inv. Line"."Amount (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a108; "Purch. Inv. Line"."VAT Difference (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a109; "Purch. Inv. Line"."Prepayment %")
                {
                    FieldValidate = No;
                }
                fieldelement(a110; "Purch. Inv. Line"."Length")
                {
                    FieldValidate = No;
                }
                fieldelement(a111; "Purch. Inv. Line"."Width")
                {
                    FieldValidate = No;
                }
                fieldelement(a112; "Purch. Inv. Line"."SQM/Unit")
                {
                    FieldValidate = No;
                }
                fieldelement(a113; "Purch. Inv. Line"."Thickness (mm)")
                {
                    FieldValidate = No;
                }
                fieldelement(a114; "Purch. Inv. Line"."Piece CBM")
                {
                    FieldValidate = No;
                }
                fieldelement(a115; "Purch. Inv. Line".CBM)
                {
                    FieldValidate = No;
                }
                fieldelement(a116; "Purch. Inv. Line"."Containeer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a117; "Purch. Inv. Line"."Containeer Status")
                {
                    FieldValidate = No;
                }
                fieldelement(a118; "Purch. Inv. Line"."Category Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a119; "Purch. Inv. Line"."Product Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a120; "Purch. Inv. Line".Finish)
                {
                    FieldValidate = No;
                }
                fieldelement(a121; "Purch. Inv. Line"."Product Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a122; "Purch. Inv. Line".Crates)
                {
                    FieldValidate = No;
                }
                fieldelement(a123; "Purch. Inv. Line"."Packing Description")
                {
                    FieldValidate = No;
                }
                fieldelement(a124; "Purch. Inv. Line"."Routing No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a125; "Purch. Inv. Line"."Operation No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a126; "Purch. Inv. Line"."Work Center No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a127; "Purch. Inv. Line"."Prod. Order Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a128; "Purch. Inv. Line"."Overhead Rate")
                {
                    FieldValidate = No;
                }
                fieldelement(a129; "Purch. Inv. Line"."Routing Reference No.")
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

