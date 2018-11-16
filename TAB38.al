tableextension 50116 tab38 extends "Purchase Header"
{
    // version NAVW113.00,NAVAPAC13.00

    fields
    {

        modify("Vendor Invoice No.")
        {
            trigger OnAfterValidate()
            var
                VendLedgEntry: Record "Vendor Ledger Entry";
            begin
                IF "Vendor Invoice No." <> '' THEN BEGIN
                    VendLedgEntry.RESET;
                    VendLedgEntry.SETCURRENTKEY("Vendor No.", "Posting Date", "Currency Code");
                    VendLedgEntry.SETRANGE("Vendor No.", "Pay-to Vendor No.");
                    VendLedgEntry.SETRANGE("External Document No.", "Vendor Invoice No.");
                    IF VendLedgEntry.FINDFIRST THEN
                        ERROR('Invoice No. Already Exists');
                END;
            end;
        }
        field(50000; "Document Entry Location"; Code[10])
        {
            TableRelation = Location.Code WHERE ("Use As In-Transit" = FILTER (false));
        }
        field(55555; "Demo Data"; Option)
        {
            OptionCaption = 'No,Yes';
            OptionMembers = No,Yes;
        }
        field(80006; "Free Supply"; Boolean)
        {
        }
        field(80007; "Container No."; Code[11])
        {
            Caption = 'Container No.';

            trigger OnValidate()
            begin
                UpdatePurchLine;
            end;
        }
        field(80008; "Container Status"; Option)
        {
            OptionCaption = 'Open,In Transit,Received';
            OptionMembers = Open,"In Transit",Received;

            trigger OnValidate()
            begin
                UpdatePurchLine;
            end;
        }
    }


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    InitInsert;

    IF GETFILTER("Buy-from Vendor No.") <> '' THEN
      IF GETRANGEMIN("Buy-from Vendor No.") = GETRANGEMAX("Buy-from Vendor No.") THEN
        VALIDATE("Buy-from Vendor No.",GETRANGEMIN("Buy-from Vendor No."));

    IF "Purchaser Code" = '' THEN
      SetDefaultPurchaser;

    IF "Buy-from Vendor No." <> '' THEN
      StandardCodesMgt.CheckShowPurchRecurringLinesNotification(Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..5
    //DS-Start
    IF "Document Entry Location" = '' THEN
      SetPurchOrdLocation;
    //DS-End
    */
    //end;

    local procedure "DS-START"()
    begin
    end;

    local procedure SetPurchOrdLocation()
    var
        PurchnpayableSetup: Record "Purchases & Payables Setup";
    begin
        PurchnpayableSetup.GET;
        IF "Document Type" IN ["Document Type"::Order, "Document Type"::"Blanket Order"] THEN
            VALIDATE("Document Entry Location", PurchnpayableSetup."Purchase Order Location");
    end;

    local procedure UpdatePurchLine()
    begin
        PurchLine.RESET;
        PurchLine.SETRANGE("Document Type", "Document Type");
        PurchLine.SETRANGE("Document No.", "No.");
        IF PurchLine.FINDSET THEN BEGIN
            REPEAT
                PurchLine."Container Status" := "Container Status";
                PurchLine."Container No." := "Container No.";
                PurchLine.MODIFY;
            UNTIL PurchLine.NEXT = 0;
        END;
    end;

    var
        PurchLine: Record "Purchase Line";
        ChangeCurrencyQst: Label 'If you change %1, the existing purchase lines will be deleted and new purchase lines based on the new information in the header will be created. You may need to update the price information manually.\\Do you want to change %1?';
}

