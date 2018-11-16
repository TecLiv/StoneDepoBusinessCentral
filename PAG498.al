pageextension 50107 Pag498 extends Reservation
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
        SalesLine: Record "Sales Line";
        ReservEntry: Record "Reservation Entry";
        CaptionText: Text;
        ReserveSalesLine: Codeunit "Sales Line-Reserve";

    LOCAL PROCEDURE ">>>DSJS<<<"();
    BEGIN
    END;
    /*
        PROCEDURE SetSalesLineVivin(VAR CurrentSalesLine: Record "Sales Line");
        BEGIN
            CurrentSalesLine.TESTFIELD("Job No.", '');
            CurrentSalesLine.TESTFIELD("Drop Shipment", FALSE);
            CurrentSalesLine.TESTFIELD(Type, CurrentSalesLine.Type::Item);
            CurrentSalesLine.TESTFIELD("Shipment Date");

            SalesLine := CurrentSalesLine;
            ReservEntry.SetSource(
              DATABASE::"Sales Line", SalesLine."Document Type", SalesLine."Document No.", SalesLine."Line No.", '', 0);
            ReservEntry."Item No." := SalesLine."No.";
            ReservEntry."Variant Code" := SalesLine."Variant Code";
            ReservEntry."Location Code" := SalesLine."Location Code";
            ReservEntry."Shipment Date" := SalesLine."Shipment Date";

            CaptionText := ReserveSalesLine.Caption(SalesLine);
            UpdateReservFromVivin;
        END;

        LOCAL PROCEDURE UpdateReservFromVivin();
        VAR
            EntrySummary: Record "Entry Summary";
            QtyPerUOM: Decimal;
            QtyReservedIT: Decimal;
        BEGIN
            IF NOT FormIsOpen THEN
                GetSerialLotNo(ItemTrackingQtyToReserve, ItemTrackingQtyToReserveBase);

            QtyPerUOM := GetQtyPerUOMFromSource;

            UpdateReservMgt;
            ReservMgt.UpdateStatistics(
              Rec, ReservEntry."Shipment Date", HandleItemTracking);

            IF HandleItemTracking THEN BEGIN
                EntrySummary := Rec;
                QtyReservedBase := 0;
                IF FINDSET THEN
                    REPEAT
                        QtyReservedBase += ReservedThisLine(Rec);
                    UNTIL NEXT = 0;
                QtyReservedIT := ROUND(QtyReservedBase / QtyPerUOM, 0.00001);
                IF ABS(QtyReserved - QtyReservedIT) > 0.00001 THEN
                    QtyReserved := QtyReservedIT;
                QtyToReserveBase := ItemTrackingQtyToReserveBase;
                IF ABS(ItemTrackingQtyToReserve - QtyToReserve) > 0.00001 THEN
                    QtyToReserve := ItemTrackingQtyToReserve;
                Rec := EntrySummary;
            END;

            UpdateNonSpecific; // Late Binding

            IF FormIsOpen THEN
                CurrPage.UPDATE;
        END;

        PROCEDURE AutoReserveVivin();
        BEGIN
            IF ABS(QtyToReserveBase) - ABS(QtyReservedBase) = 0 THEN
                ERROR(Text000);

            ReservMgt.AutoReserve(
              FullAutoReservation, ReservEntry.Description,
              ReservEntry."Shipment Date", QtyToReserve - QtyReserved, QtyToReserveBase - QtyReservedBase);
            IF NOT FullAutoReservation THEN
                MESSAGE(Text001);
            UpdateReservFrom;
        END;

        PROCEDURE CancelReservationFromCurentLineVivin(ReservEntry: Record "Reservation Entry");
        VAR
            ReservEntry3: Record "Reservation Entry";
            ReservEntry2: Record "Reservation Entry";
            RecordsFound: Boolean;
            EntrySummary: Record "Entry Summary";
            ReservEngineMgt: Codeunit "Reservation Engine Mgt.";
        BEGIN
            CLEAR(ReservEntry2);
            ReservEntry2 := ReservEntry;
            ReservEntry2.SetPointerFilter;
            ReservEntry2.SETRANGE("Reservation Status", ReservEntry2."Reservation Status"::Reservation);
            ReservEntry2.SETRANGE("Disallow Cancellation", FALSE);
            IF ReservEntry2.FINDSET THEN
                REPEAT
                    ReservEntry3.GET(ReservEntry2."Entry No.", NOT ReservEntry2.Positive);
                    //IF RelatesToSummEntry(ReservEntry3,Rec) THEN BEGIN
                    ReservEngineMgt.CancelReservation(ReservEntry2);
                    RecordsFound := TRUE;
                    //END;
                UNTIL ReservEntry2.NEXT = 0;
        END;


        PROCEDURE SetSalesLineCancelReservationVivin(VAR CurrentSalesLine: Record "Sales Line");
        VAR
            Reservation: Page Reservation;
        BEGIN
            CurrentSalesLine.TESTFIELD("Job No.", '');
            CurrentSalesLine.TESTFIELD("Drop Shipment", FALSE);
            CurrentSalesLine.TESTFIELD(Type, CurrentSalesLine.Type::Item);
            CurrentSalesLine.TESTFIELD("Shipment Date");

            SalesLine := CurrentSalesLine;
            ReservEntry.SetSource(
              DATABASE::"Sales Line", SalesLine."Document Type", SalesLine."Document No.", SalesLine."Line No.", '', 0);
            ReservEntry."Item No." := SalesLine."No.";
            ReservEntry."Variant Code" := SalesLine."Variant Code";
            ReservEntry."Location Code" := SalesLine."Location Code";
            ReservEntry."Shipment Date" := SalesLine."Shipment Date";

            CaptionText := ReserveSalesLine.Caption(SalesLine);
            UpdateCancelReservFromVivin;
            Reservation.CancelReservationFromCurentLineVivin(ReservEntry);
        END;

        LOCAL PROCEDURE UpdateCancelReservFromVivin();
        VAR
            EntrySummary: Record "Entry Summary";
            QtyPerUOM: Decimal;
            QtyReservedIT: Decimal;
            Reservation: Page Reservation;
        BEGIN
            IF NOT FormIsOpen THEN
                GetSerialLotNo(ItemTrackingQtyToReserve, ItemTrackingQtyToReserveBase);

            QtyPerUOM := GetQtyPerUOMFromSource;

            UpdateReservMgt;
            ReservMgt.UpdateStatistics(
              Rec, ReservEntry."Shipment Date", HandleItemTracking);

            IF HandleItemTracking THEN BEGIN
                EntrySummary := Rec;
                QtyReservedBase := 0;
                IF FINDSET THEN
                    REPEAT
                        QtyReservedBase += ReservedThisLine(Rec);
                    UNTIL NEXT = 0;
                QtyReservedIT := ROUND(QtyReservedBase / QtyPerUOM, 0.00001);
                IF ABS(QtyReserved - QtyReservedIT) > 0.00001 THEN
                    QtyReserved := QtyReservedIT;
                QtyToReserveBase := ItemTrackingQtyToReserveBase;
                IF ABS(ItemTrackingQtyToReserve - QtyToReserve) > 0.00001 THEN
                    QtyToReserve := ItemTrackingQtyToReserve;
                Rec := EntrySummary;
            END;

            UpdateNonSpecific; // Late Binding

            IF FormIsOpen THEN
                CurrPage.UPDATE;
        END;
    */
}