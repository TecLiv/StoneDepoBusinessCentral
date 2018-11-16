xmlport 50131 PurchLine_Import
{
    Format = VariableText;
    Permissions = TableData 39 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Purchase Line"; "Purchase Line")
            {
                XmlName = 'PL';
                fieldelement(a1; "Purchase Line"."Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a2; "Purchase Line"."Buy-from Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a3; "Purchase Line"."Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a4; "Purchase Line"."Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a5; "Purchase Line".Type)
                {
                    FieldValidate = No;
                }
                fieldelement(a6; "Purchase Line"."No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a7; "Purchase Line"."Location Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a8; "Purchase Line"."Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a9; "Purchase Line"."Expected Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a10; "Purchase Line".Description)
                {
                    FieldValidate = No;
                }
                fieldelement(a11; "Purchase Line"."Description 2")
                {
                    FieldValidate = No;
                }
                fieldelement(a12; "Purchase Line"."Unit of Measure")
                {
                    FieldValidate = No;
                }
                fieldelement(a13; "Purchase Line".Quantity)
                {
                    FieldValidate = No;
                }
                fieldelement(a14; "Purchase Line"."Outstanding Quantity")
                {
                    FieldValidate = No;
                }
                fieldelement(a15; "Purchase Line"."Qty. to Invoice")
                {
                    FieldValidate = No;
                }
                fieldelement(a16; "Purchase Line"."Qty. to Receive")
                {
                    FieldValidate = No;
                }
                fieldelement(a17; "Purchase Line"."Direct Unit Cost")
                {
                    FieldValidate = No;
                }
                fieldelement(a18; "Purchase Line"."Unit Cost (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a19; "Purchase Line"."VAT %")
                {
                    FieldValidate = No;
                }
                fieldelement(a20; "Purchase Line"."Line Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a21; "Purchase Line"."Line Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a22; "Purchase Line".Amount)
                {
                    FieldValidate = No;
                }
                fieldelement(a23; "Purchase Line"."Amount Including VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a24; "Purchase Line"."Unit Price (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a25; "Purchase Line"."Allow Invoice Disc.")
                {
                    FieldValidate = No;
                }
                fieldelement(a26; "Purchase Line"."Gross Weight")
                {
                    FieldValidate = No;
                }
                fieldelement(a27; "Purchase Line"."Net Weight")
                {
                    FieldValidate = No;
                }
                fieldelement(a28; "Purchase Line"."Units per Parcel")
                {
                    FieldValidate = No;
                }
                fieldelement(a29; "Purchase Line"."Unit Volume")
                {
                    FieldValidate = No;
                }
                fieldelement(a30; "Purchase Line"."Appl.-to Item Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(a31; "Purchase Line"."Shortcut Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a32; "Purchase Line"."Shortcut Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a33; "Purchase Line"."Job No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a34; "Purchase Line"."Indirect Cost %")
                {
                    FieldValidate = No;
                }
                fieldelement(a35; "Purchase Line"."Recalculate Invoice Disc.")
                {
                    FieldValidate = No;
                }
                fieldelement(a36; "Purchase Line"."Outstanding Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a37; "Purchase Line"."Qty. Rcd. Not Invoiced")
                {
                    FieldValidate = No;
                }
                fieldelement(a38; "Purchase Line"."Amt. Rcd. Not Invoiced")
                {
                    FieldValidate = No;
                }
                fieldelement(a39; "Purchase Line"."Quantity Received")
                {
                    FieldValidate = No;
                }
                fieldelement(a40; "Purchase Line"."Quantity Invoiced")
                {
                    FieldValidate = No;
                }
                fieldelement(a41; "Purchase Line"."Receipt No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a42; "Purchase Line"."Receipt Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a43; "Purchase Line"."Profit %")
                {
                    FieldValidate = No;
                }
                fieldelement(a44; "Purchase Line"."Pay-to Vendor No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a45; "Purchase Line"."Inv. Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a46; "Purchase Line"."Vendor Item No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a47; "Purchase Line"."Sales Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a48; "Purchase Line"."Sales Order Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a49; "Purchase Line"."Drop Shipment")
                {
                    FieldValidate = No;
                }
                fieldelement(a50; "Purchase Line"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a51; "Purchase Line"."Gen. Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a52; "Purchase Line"."VAT Calculation Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a53; "Purchase Line"."Transaction Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a54; "Purchase Line"."Transport Method")
                {
                    FieldValidate = No;
                }
                fieldelement(a55; "Purchase Line"."Entry Point")
                {
                    FieldValidate = No;
                }
                fieldelement(a56; "Purchase Line"."Area")
                {
                    FieldValidate = No;
                }
                fieldelement(a57; "Purchase Line"."Transaction Specification")
                {
                    FieldValidate = No;
                }
                fieldelement(a58; "Purchase Line"."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a59; "Purchase Line"."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a60; "Purchase Line"."Tax Group Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a61; "Purchase Line"."Use Tax")
                {
                    FieldValidate = No;
                }
                fieldelement(a62; "Purchase Line"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a63; "Purchase Line"."VAT Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a64; "Purchase Line"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a65; "Purchase Line"."Outstanding Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a66; "Purchase Line"."Amt. Rcd. Not Invoiced (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a67; "Purchase Line"."Reserved Quantity")
                {
                    FieldValidate = No;
                }
                fieldelement(a68; "Purchase Line"."Blanket Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a69; "Purchase Line"."Blanket Order Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a70; "Purchase Line"."VAT Base Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a71; "Purchase Line"."Unit Cost")
                {
                    FieldValidate = No;
                }
                fieldelement(a72; "Purchase Line"."System-Created Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(a73; "Purchase Line"."Line Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a74; "Purchase Line"."VAT Difference")
                {
                    FieldValidate = No;
                }
                fieldelement(a75; "Purchase Line"."Inv. Disc. Amount to Invoice")
                {
                    FieldValidate = No;
                }
                fieldelement(a76; "Purchase Line"."VAT Identifier")
                {
                    FieldValidate = No;
                }
                fieldelement(a77; "Purchase Line"."IC Partner Ref. Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a78; "Purchase Line"."IC Partner Reference")
                {
                    FieldValidate = No;
                }
                fieldelement(a79; "Purchase Line"."Prepayment %")
                {
                    FieldValidate = No;
                }
                fieldelement(a80; "Purchase Line"."Prepmt. Line Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a81; "Purchase Line"."Prepmt. Amt. Inv.")
                {
                    FieldValidate = No;
                }
                fieldelement(a82; "Purchase Line"."Prepmt. Amt. Incl. VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a83; "Purchase Line"."Prepayment Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a84; "Purchase Line"."Prepmt. VAT Base Amt.")
                {
                    FieldValidate = No;
                }
                fieldelement(a85; "Purchase Line"."Prepayment VAT %")
                {
                    FieldValidate = No;
                }
                fieldelement(a86; "Purchase Line"."Prepmt. VAT Calc. Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a87; "Purchase Line"."Prepayment VAT Identifier")
                {
                    FieldValidate = No;
                }
                fieldelement(a88; "Purchase Line"."Prepayment Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a89; "Purchase Line"."Prepayment Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(a90; "Purchase Line"."Prepayment Tax Group Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a91; "Purchase Line"."Prepmt Amt to Deduct")
                {
                    FieldValidate = No;
                }
                fieldelement(a92; "Purchase Line"."Prepmt Amt Deducted")
                {
                    FieldValidate = No;
                }
                fieldelement(a93; "Purchase Line"."Prepayment Line")
                {
                    FieldValidate = No;
                }
                fieldelement(a94; "Purchase Line"."Prepmt. Amount Inv. Incl. VAT")
                {
                    FieldValidate = No;
                }
                fieldelement(a95; "Purchase Line"."Prepmt. Amount Inv. (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a96; "Purchase Line"."IC Partner Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a97; "Purchase Line"."Prepmt. VAT Amount Inv. (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a98; "Purchase Line"."Prepayment VAT Difference")
                {
                    FieldValidate = No;
                }
                fieldelement(a99; "Purchase Line"."Prepmt VAT Diff. to Deduct")
                {
                    FieldValidate = No;
                }
                fieldelement(a100; "Purchase Line"."Prepmt VAT Diff. Deducted")
                {
                    FieldValidate = No;
                }
                fieldelement(a101; "Purchase Line"."Outstanding Amt. Ex. VAT (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a102; "Purchase Line"."A. Rcd. Not Inv. Ex. VAT (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a103; "Purchase Line"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(a104; "Purchase Line"."Job Task No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a105; "Purchase Line"."Job Line Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a106; "Purchase Line"."Job Unit Price")
                {
                    FieldValidate = No;
                }
                fieldelement(a107; "Purchase Line"."Job Total Price")
                {
                    FieldValidate = No;
                }
                fieldelement(a108; "Purchase Line"."Job Line Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a109; "Purchase Line"."Job Line Discount Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(a110; "Purchase Line"."Job Line Discount %")
                {
                    FieldValidate = No;
                }
                fieldelement(a111; "Purchase Line"."Job Unit Price (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a112; "Purchase Line"."Job Total Price (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a113; "Purchase Line"."Job Line Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a114; "Purchase Line"."Job Line Disc. Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a115; "Purchase Line"."Job Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(a116; "Purchase Line"."Job Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a117; "Purchase Line"."Job Planning Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a118; "Purchase Line"."Job Remaining Qty.")
                {
                    FieldValidate = No;
                }
                fieldelement(a119; "Purchase Line"."Job Remaining Qty. (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a120; "Purchase Line"."Deferral Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a121; "Purchase Line"."Returns Deferral Start Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a122; "Purchase Line"."Prod. Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a123; "Purchase Line"."Variant Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a124; "Purchase Line"."Bin Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a125; "Purchase Line"."Qty. per Unit of Measure")
                {
                    FieldValidate = No;
                }
                fieldelement(a126; "Purchase Line"."Unit of Measure Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a127; "Purchase Line"."Quantity (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a128; "Purchase Line"."Outstanding Qty. (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a129; "Purchase Line"."Qty. to Invoice (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a130; "Purchase Line"."Qty. to Receive (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a131; "Purchase Line"."Qty. Rcd. Not Invoiced (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a132; "Purchase Line"."Qty. Received (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a133; "Purchase Line"."Reserved Qty. (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a134; "Purchase Line"."FA Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a135; "Purchase Line"."Depreciation Book Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a136; "Purchase Line"."Salvage Value")
                {
                    FieldValidate = No;
                }
                fieldelement(a137; "Purchase Line"."Depr. until FA Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a138; "Purchase Line"."Depr. Acquisition Cost")
                {
                    FieldValidate = No;
                }
                fieldelement(a139; "Purchase Line"."Maintenance Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a140; "Purchase Line"."Insurance No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a141; "Purchase Line"."Budgeted FA No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a142; "Purchase Line"."Duplicate in Depreciation Book")
                {
                    FieldValidate = No;
                }
                fieldelement(a143; "Purchase Line"."Use Duplication List")
                {
                    FieldValidate = No;
                }
                fieldelement(a144; "Purchase Line"."Responsibility Center")
                {
                    FieldValidate = No;
                }
                fieldelement(a145; "Purchase Line"."Cross-Reference No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a146; "Purchase Line"."Unit of Measure (Cross Ref.)")
                {
                    FieldValidate = No;
                }
                fieldelement(a147; "Purchase Line"."Cross-Reference Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a148; "Purchase Line"."Cross-Reference Type No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a149; "Purchase Line"."Item Category Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a150; "Purchase Line".Nonstock)
                {
                    FieldValidate = No;
                }
                fieldelement(a151; "Purchase Line"."Purchasing Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a153; "Purchase Line"."Special Order")
                {
                    FieldValidate = No;
                }
                fieldelement(a154; "Purchase Line"."Special Order Sales No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a155; "Purchase Line"."Special Order Sales Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a156; "Purchase Line"."Whse. Outstanding Qty. (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a157; "Purchase Line"."Completely Received")
                {
                    FieldValidate = No;
                }
                fieldelement(a158; "Purchase Line"."Requested Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a159; "Purchase Line"."Promised Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a160; "Purchase Line"."Lead Time Calculation")
                {
                    FieldValidate = No;
                }
                fieldelement(a161; "Purchase Line"."Inbound Whse. Handling Time")
                {
                    FieldValidate = No;
                }
                fieldelement(a162; "Purchase Line"."Planned Receipt Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a163; "Purchase Line"."Order Date")
                {
                    FieldValidate = No;
                }
                fieldelement(a164; "Purchase Line"."Allow Item Charge Assignment")
                {
                    FieldValidate = No;
                }
                fieldelement(a165; "Purchase Line"."Qty. to Assign")
                {
                    FieldValidate = No;
                }
                fieldelement(a166; "Purchase Line"."Qty. Assigned")
                {
                    FieldValidate = No;
                }
                fieldelement(a167; "Purchase Line"."Return Qty. to Ship")
                {
                    FieldValidate = No;
                }
                fieldelement(a168; "Purchase Line"."Return Qty. to Ship (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a169; "Purchase Line"."Return Qty. Shipped Not Invd.")
                {
                    FieldValidate = No;
                }
                fieldelement(a170; "Purchase Line"."Ret. Qty. Shpd Not Invd.(Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a171; "Purchase Line"."Return Shpd. Not Invd.")
                {
                    FieldValidate = No;
                }
                fieldelement(a172; "Purchase Line"."Return Shpd. Not Invd. (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a173; "Purchase Line"."Return Qty. Shipped")
                {
                    FieldValidate = No;
                }
                fieldelement(a174; "Purchase Line"."Return Qty. Shipped (Base)")
                {
                    FieldValidate = No;
                }
                fieldelement(a175; "Purchase Line"."Return Shipment No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a176; "Purchase Line"."Return Shipment Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a177; "Purchase Line"."Return Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a178; "Purchase Line".Subtype)
                {
                    FieldValidate = No;
                }
                fieldelement(a179; "Purchase Line"."Prepmt. VAT Amount Deducted")
                {
                    FieldValidate = No;
                }
                fieldelement(a180; "Purchase Line"."Prepmt. VAT Base Deducted")
                {
                    FieldValidate = No;
                }
                fieldelement(a181; "Purchase Line"."WHT Business Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a182; "Purchase Line"."WHT Product Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(a183; "Purchase Line"."WHT Absorb Base")
                {
                    FieldValidate = No;
                }
                fieldelement(a184; "Purchase Line"."VAT Base (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a185; "Purchase Line"."VAT Amount (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a186; "Purchase Line"."Amount Including VAT (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a187; "Purchase Line"."Amount (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a188; "Purchase Line"."VAT Difference (ACY)")
                {
                    FieldValidate = No;
                }
                fieldelement(a189; "Purchase Line"."Length (mm)")
                {
                    FieldValidate = No;
                }
                fieldelement(a190; "Purchase Line"."Width (mm)")
                {
                    FieldValidate = No;
                }
                fieldelement(a191; "Purchase Line"."SQM/Unit")
                {
                    FieldValidate = No;
                }
                fieldelement(a192; "Purchase Line"."Thickness (mm)")
                {
                    FieldValidate = No;
                }
                fieldelement(a193; "Purchase Line"."Piece CBM")
                {
                    FieldValidate = No;
                }
                fieldelement(a194; "Purchase Line".CBM)
                {
                    FieldValidate = No;
                }
                fieldelement(a195; "Purchase Line"."Container No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a196; "Purchase Line"."Container Status")
                {
                    FieldValidate = No;
                }
                fieldelement(a197; "Purchase Line"."Category Code")
                {
                    FieldValidate = No;
                }
                fieldelement(a198; "Purchase Line"."Product Type")
                {
                    FieldValidate = No;
                }
                fieldelement(a199; "Purchase Line".Finish)
                {
                    FieldValidate = No;
                }
                fieldelement(a200; "Purchase Line"."Product Name")
                {
                    FieldValidate = No;
                }
                fieldelement(a201; "Purchase Line".Crates)
                {
                    FieldValidate = No;
                }
                fieldelement(a202; "Purchase Line"."Packing Description")
                {
                    FieldValidate = No;
                }
                fieldelement(a203; "Purchase Line"."Packing Quantity")
                {
                    FieldValidate = No;
                }
                fieldelement(a204; "Purchase Line"."Routing No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a205; "Purchase Line"."Operation No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a206; "Purchase Line"."Work Center No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a207; "Purchase Line".Finished)
                {
                    FieldValidate = No;
                }
                fieldelement(a208; "Purchase Line"."Prod. Order Line No.")
                {
                    FieldValidate = No;
                }
                fieldelement(a209; "Purchase Line"."Overhead Rate")
                {
                    FieldValidate = No;
                }
                fieldelement(a210; "Purchase Line"."MPS Order")
                {
                    FieldValidate = No;
                }
                fieldelement(a211; "Purchase Line"."Planning Flexibility")
                {
                    FieldValidate = No;
                }
                fieldelement(a212; "Purchase Line"."Routing Reference No.")
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

