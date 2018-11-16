pageextension 50103 Pag42 extends "Sales Order"
{
    layout
    {
        addafter("Document Date")
        {
            field("Posting No."; "Posting No.")
            {
                CaptionML = ENA = 'Invoice No.', ENU = 'Invoice No.';
                ApplicationArea = All;
            }
            field("Current Status"; "Current Status")
            {
                ApplicationArea = All;
            }

        }
    }

    actions
    {
        addlast("F&unctions")
        {
            action("Packing List")
            {
                Promoted = true;
                PromotedIsBig = true;
                CaptionML = ENU = 'Packing List',
                            ENA = 'Packing List';
                Image = ProfileCalender;
                PromotedCategory = Process;
                trigger OnAction();
                VAR
                    InternalDevelopment: Codeunit "Internal Development";
                BEGIN
                    InternalDevelopment.CreateSalesPackingList(Rec);
                END;
            }
            action("Reserve Stock")
            {
                CaptionML = ENU = 'Reserve Stock',
                                 ENA = 'Reserve Stock';
                Promoted = true;
                PromotedIsBig = true;
                Image = Reserve;
                PromotedCategory = Process;
                trigger OnAction();
                VAR
                    SalesHeader: Record "Sales Header";
                    SalesLine: Record "Sales Line";
                    ReleseSalesDocument: Codeunit All_Base_Customization;
                BEGIN
                    //DSJS
                    SalesHeader.RESET;
                    SalesHeader.SETRANGE("Document Type", "Document Type");
                    SalesHeader.SETRANGE("No.", "No.");
                    IF SalesHeader.FINDFIRST THEN BEGIN
                        SalesLine.RESET;
                        SalesLine.SETRANGE("Document Type", SalesHeader."Document Type");
                        SalesLine.SETRANGE("Document No.", SalesHeader."No.");
                        IF SalesLine.FINDSET THEN
                            ReleseSalesDocument.AutoReserveSalesLineOnRelease(SalesHeader, SalesLine);
                    END;
                    //DSJS
                END;
            }
            action("Cancel Reservation")
            {
                CaptionML = ENU = 'Cancel Reservation',
                          ENA = 'Cancel Reservation';
                Promoted = true;
                PromotedIsBig = true;
                Image = Cancel;
                PromotedCategory = Process;
                trigger OnAction();
                VAR
                    ReleaseSalesDoc: Codeunit All_Base_Customization;
                    UserSetup: Record "User Setup";
                BEGIN
                    //DSJS
                    TESTFIELD(Status, Status::Open);
                    IF (("Document Type" = "Document Type"::Order) AND ("Sell-to Customer No." <> '') AND ("Location Code" <> '')) THEN
                        ReleaseSalesDoc.CancelReserveSalesLineOnRelease(Rec);
                    //DSJS
                END;
            }
        }
    }

    var
        myInt: Integer;
}