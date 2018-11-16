xmlport 50125 PurchRcptLine_Import
{
    Format = VariableText;
    Permissions = TableData 121 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Purch. Rcpt. Line"; "Purch. Rcpt. Line")
            {
                XmlName = 'PRL';
                fieldelement(a1; "Purch. Rcpt. Line"."Buy-from Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Purch. Rcpt. Line"."Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Purch. Rcpt. Line"."Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Purch. Rcpt. Line".Type)
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Purch. Rcpt. Line"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Purch. Rcpt. Line"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Purch. Rcpt. Line"."Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Purch. Rcpt. Line"."Expected Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Purch. Rcpt. Line".Description)
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Purch. Rcpt. Line"."Description 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Purch. Rcpt. Line"."Unit of Measure")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Purch. Rcpt. Line".Quantity)
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Purch. Rcpt. Line"."Direct Unit Cost")
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Purch. Rcpt. Line"."Unit Cost (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Purch. Rcpt. Line"."VAT %")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Purch. Rcpt. Line"."Line Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Purch. Rcpt. Line"."Unit Price (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Purch. Rcpt. Line"."Allow Invoice Disc.")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Purch. Rcpt. Line"."Gross Weight")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Purch. Rcpt. Line"."Net Weight")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Purch. Rcpt. Line"."Units per Parcel")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Purch. Rcpt. Line"."Unit Volume")
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Purch. Rcpt. Line"."Appl.-to Item Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Purch. Rcpt. Line"."Item Rcpt. Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Purch. Rcpt. Line"."Shortcut Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Purch. Rcpt. Line"."Shortcut Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Purch. Rcpt. Line"."Job No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Purch. Rcpt. Line"."Indirect Cost %")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Purch. Rcpt. Line"."Qty. Rcd. Not Invoiced")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Purch. Rcpt. Line"."Quantity Invoiced")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Purch. Rcpt. Line"."Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Purch. Rcpt. Line"."Order Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Purch. Rcpt. Line"."Pay-to Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Purch. Rcpt. Line"."Vendor Item No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Purch. Rcpt. Line"."Sales Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Purch. Rcpt. Line"."Sales Order Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Purch. Rcpt. Line"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Purch. Rcpt. Line"."Gen. Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Purch. Rcpt. Line"."VAT Calculation Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Purch. Rcpt. Line"."Transaction Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Purch. Rcpt. Line"."Transport Method")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Purch. Rcpt. Line"."Attached to Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Purch. Rcpt. Line"."Entry Point")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Purch. Rcpt. Line"."Area")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Purch. Rcpt. Line"."Transaction Specification")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Purch. Rcpt. Line"."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Purch. Rcpt. Line"."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Purch. Rcpt. Line"."Tax Group Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Purch. Rcpt. Line"."Use Tax")
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Purch. Rcpt. Line"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Purch. Rcpt. Line"."VAT Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Purch. Rcpt. Line"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Purch. Rcpt. Line"."Blanket Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Purch. Rcpt. Line"."Blanket Order Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Purch. Rcpt. Line"."VAT Base Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Purch. Rcpt. Line"."Unit Cost")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Purch. Rcpt. Line"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Purch. Rcpt. Line"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Purch. Rcpt. Line"."Job Task No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Purch. Rcpt. Line"."Job Line Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Purch. Rcpt. Line"."Job Unit Price")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Purch. Rcpt. Line"."Job Total Price")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Purch. Rcpt. Line"."Job Line Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Purch. Rcpt. Line"."Job Line Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Purch. Rcpt. Line"."Job Line Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Purch. Rcpt. Line"."Job Unit Price (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Purch. Rcpt. Line"."Job Total Price (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Purch. Rcpt. Line"."Job Line Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Purch. Rcpt. Line"."Job Line Disc. Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Purch. Rcpt. Line"."Job Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Purch. Rcpt. Line"."Job Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Purch. Rcpt. Line"."Prod. Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a73; "Purch. Rcpt. Line"."Variant Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a74; "Purch. Rcpt. Line"."Bin Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a75; "Purch. Rcpt. Line"."Qty. per Unit of Measure")
                {
                    FieldValidate = No;
                }
                fieldelement(a76; "Purch. Rcpt. Line"."Unit of Measure Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a77; "Purch. Rcpt. Line"."Quantity (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a78; "Purch. Rcpt. Line"."Qty. Invoiced (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a79; "Purch. Rcpt. Line"."FA Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a80; "Purch. Rcpt. Line"."FA Posting Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a81; "Purch. Rcpt. Line"."Depreciation Book Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a82; "Purch. Rcpt. Line"."Salvage Value")
                {
                    FieldValidate = No;
                }
                fieldelement(a83; "Purch. Rcpt. Line"."Depr. until FA Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a84; "Purch. Rcpt. Line"."Depr. Acquisition Cost")
                {
                    FieldValidate = No;
                }
                fieldelement(a85; "Purch. Rcpt. Line"."Maintenance Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a86; "Purch. Rcpt. Line"."Insurance No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a87; "Purch. Rcpt. Line"."Budgeted FA No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a88; "Purch. Rcpt. Line"."Duplicate in Depreciation Book")
                {
                    FieldValidate = No;
                }
                fieldelement(a89; "Purch. Rcpt. Line"."Use Duplication List")
                {
                    FieldValidate = No;
                }
                fieldelement(a90; "Purch. Rcpt. Line"."Responsibility Center")
                {
                    FieldValidate = No;
                }
                fieldelement(a91; "Purch. Rcpt. Line"."Cross-Reference No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a92; "Purch. Rcpt. Line"."Unit of Measure (Cross Ref.)")
                {
                    FieldValidate = No;
                }
                fieldelement(a93; "Purch. Rcpt. Line"."Cross-Reference Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a94; "Purch. Rcpt. Line"."Cross-Reference Type No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a95; "Purch. Rcpt. Line"."Item Category Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a96; "Purch. Rcpt. Line".Nonstock)
                {
                    FieldValidate = No;
                }
                fieldelement(a97; "Purch. Rcpt. Line"."Purchasing Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a99; "Purch. Rcpt. Line"."Special Order Sales No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a100; "Purch. Rcpt. Line"."Special Order Sales Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a101; "Purch. Rcpt. Line"."Requested Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a102; "Purch. Rcpt. Line"."Promised Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a103; "Purch. Rcpt. Line"."Lead Time Calculation")
                {
                    FieldValidate = No;
                }
                fieldelement(a104; "Purch. Rcpt. Line"."Inbound Whse. Handling Time")
                {
                    FieldValidate = No;
                }
                fieldelement(a105; "Purch. Rcpt. Line"."Planned Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a106; "Purch. Rcpt. Line"."Order Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a107; "Purch. Rcpt. Line"."Item Charge Base Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a108; "Purch. Rcpt. Line".Correction)
                {
                    FieldValidate = No;
                }
                fieldelement(a109; "Purch. Rcpt. Line"."Return Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a110; "Purch. Rcpt. Line".Length)
                {
                    FieldValidate = No;
                }
                fieldelement(a111; "Purch. Rcpt. Line".Width)
                {
                    FieldValidate = No;
                }
                fieldelement(a112; "Purch. Rcpt. Line"."Total Rem. Qty.")
                {
                    FieldValidate = No;
                }
                fieldelement(a113; "Purch. Rcpt. Line"."SQM/Unit")
                {
                    FieldValidate = No;
                }
                fieldelement(a114; "Purch. Rcpt. Line"."Thickness (mm)")
                {
                    FieldValidate = No;
                }
                fieldelement(a115; "Purch. Rcpt. Line"."Piece CBM")
                {
                    FieldValidate = No;
                }
                fieldelement(a116; "Purch. Rcpt. Line".CBM)
                {
                    FieldValidate = No;
                }
                fieldelement(a117; "Purch. Rcpt. Line"."Containeer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a118; "Purch. Rcpt. Line"."Containeer Status")
                {
                    FieldValidate = No;
                }
                fieldelement(a119; "Purch. Rcpt. Line"."Category Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a120; "Purch. Rcpt. Line"."Product Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a121; "Purch. Rcpt. Line".Finish)
                {
                    FieldValidate = No;
                }
                fieldelement(a122; "Purch. Rcpt. Line"."Product Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a123; "Purch. Rcpt. Line".Crates)
                {
                    FieldValidate = No;
                }
                fieldelement(a124; "Purch. Rcpt. Line"."Packing Description")
                {
                    FieldValidate = No;
                }
                fieldelement(a125; "Purch. Rcpt. Line"."Routing No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a126; "Purch. Rcpt. Line"."Operation No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a127; "Purch. Rcpt. Line"."Work Center No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a128; "Purch. Rcpt. Line"."Prod. Order Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a129; "Purch. Rcpt. Line"."Overhead Rate")
                {
                    FieldValidate = No;
                }
                fieldelement(a130; "Purch. Rcpt. Line"."Routing Reference No.")
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

