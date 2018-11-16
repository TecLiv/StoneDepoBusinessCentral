table 50105 "Sales Packing List"
{

    fields
    {
        field(1; "Document Type"; Option)
        {
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(2; "Document No."; Code[20])
        {
        }
        field(3; "Document Line No."; Integer)
        {

            trigger OnValidate()
            begin
                IF SalesLine.GET("Document Type", "Document No.", "Document Line No.") THEN BEGIN
                    "Customer No." := SalesLine."Sell-to Customer No.";
                    "Item No." := SalesLine."No.";
                    "Item Description" := SalesLine.Description;
                    "Order Quantity" := SalesLine.Quantity;
                    "Outstanding Quantity" := SalesLine."Outstanding Quantity";
                    "Unit Of Measure Code" := SalesLine."Unit of Measure Code";
                END;
            end;
        }
        field(4; "Line No."; Integer)
        {
        }
        field(11; "Customer No."; Code[20])
        {
            TableRelation = Customer;
        }
        field(21; "Item No."; Code[20])
        {
            TableRelation = Item;
        }
        field(22; "Item Description"; Text[50])
        {
        }
        field(23; "Packing Description"; Text[100])
        {
        }
        field(24; "Unit Of Measure Code"; Code[10])
        {
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(25; "Order Quantity"; Decimal)
        {
        }
        field(26; "Outstanding Quantity"; Decimal)
        {
        }
        field(41; "From Parcel No."; Integer)
        {
        }
        field(42; "To Parcel No."; Integer)
        {

            trigger OnValidate()
            begin
                "No. Of Parcel" := ("To Parcel No." - "From Parcel No.") + 1;
                "Total Parcel" := "No. Of Parcel";
                VALIDATE("Quantity Per Parcel");
            end;
        }
        field(43; "Quantity Per Parcel"; Decimal)
        {

            trigger OnValidate()
            begin
                IF ItemRec.GET("Item No.") THEN
                    "Total Packed Quantity" := (("Quantity Per Parcel" * "No. Of Parcel") * ItemRec."Piece CBM");
                /*
                IF ItemRec.GET("Item No.") THEN BEGIN
                  ProcessEntry.RESET;
                  ProcessEntry.SETCURRENTKEY("Entry No.","Created Date-Time","Created By User ID","Created By User Name");
                  ProcessEntry.SETRANGE("Entry No.",ProcessEntry."Entry No."::"1");
                  ProcessEntry.SETRANGE("Created Date-Time",ProcessEntry."Created Date-Time"::"3");
                  ProcessEntry.SETRANGE("Created By User ID",ItemRec."Product Size");
                  ProcessEntry.SETRANGE("Created By User Name",'');
                  IF ProcessEntry.FINDFIRST THEN BEGIN
                    IF "Unit Of Measure Code" <> '' THEN BEGIN
                      IF "Unit Of Measure Code" = 'SQMT' THEN
                        "Total Packed Quantity" := (("Quantity Per Parcel" * "No. Of Parcel") * ProcessEntry."Square Meter")
                      ELSE IF "Unit Of Measure Code" = 'SQFT' THEN
                        "Total Packed Quantity" := (("Quantity Per Parcel" * "No. Of Parcel") * ProcessEntry."Square Feet")
                      ELSE IF "Unit Of Measure Code" = 'TON' THEN
                        "Total Packed Quantity" := (("Quantity Per Parcel" * "No. Of Parcel") * ProcessEntry.Ton)
                      ELSE IF "Unit Of Measure Code" = 'CARTON' THEN
                        "Total Packed Quantity" := (("Quantity Per Parcel" * "No. Of Parcel") * ProcessEntry.Carton)
                      ELSE IF "Unit Of Measure Code" = 'PCS' THEN
                        "Total Packed Quantity" := (("Quantity Per Parcel" * "No. Of Parcel") * ProcessEntry.PCS)
                      ELSE IF "Unit Of Measure Code" = 'MANUAL' THEN
                        "Total Packed Quantity" := (("Quantity Per Parcel" * "No. Of Parcel") * ProcessEntry.Manual);
                    END;
                  END ELSE
                    "Total Packed Quantity" := "Quantity Per Parcel" * "No. Of Parcel";
                END;
                */

            end;
        }
        field(44; "No. Of Parcel"; Integer)
        {
        }
        field(45; "Total Packed Quantity"; Decimal)
        {
        }
        field(51; Remarks; Text[50])
        {
        }
        field(52; "Remarks For Custom"; Text[50])
        {
        }
        field(56; "Total Parcel"; Decimal)
        {
        }
        field(101; "Include In Packing"; Boolean)
        {
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Document Line No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }

    var
        ProcessEntry: Record "Item Ledger Entry";
        SalesLine: Record "Sales Line";
        ItemRec: Record Item;
}

