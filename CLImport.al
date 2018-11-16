xmlport 50111 CustLedger_Import
{
    Format = VariableText;
    Permissions = TableData 21 = rimd;
    Direction = Import;
    UseRequestPage = false;
    schema
    {
        textelement(Root)
        {
            tableelement("Cust. Ledger Entry"; "Cust. Ledger Entry")
            {
                XmlName = 'CL';
                fieldelement(EntryNo; "Cust. Ledger Entry"."Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(CustomerNo; "Cust. Ledger Entry"."Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(Postingdate; "Cust. Ledger Entry"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(Doctype; "Cust. Ledger Entry"."Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(DocNo; "Cust. Ledger Entry"."Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(Description; "Cust. Ledger Entry".Description)
                {
                    FieldValidate = No;
                }
                fieldelement(Currencycde; "Cust. Ledger Entry"."Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(Amount; "Cust. Ledger Entry".Amount)
                {
                    FieldValidate = No;
                }
                fieldelement(RemAmount; "Cust. Ledger Entry"."Remaining Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(OriginalAmtLCY; "Cust. Ledger Entry"."Original Amt. (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(RemAmtLCY; "Cust. Ledger Entry"."Remaining Amt. (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(AmountLCY; "Cust. Ledger Entry"."Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(SalesLCY; "Cust. Ledger Entry"."Sales (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(ProfitLCY; "Cust. Ledger Entry"."Profit (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(InvDiscountLCY; "Cust. Ledger Entry"."Inv. Discount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(Selltocustomer; "Cust. Ledger Entry"."Sell-to Customer No.")
                {
                    FieldValidate = No;
                }
                fieldelement(CustomerPostinggroup; "Cust. Ledger Entry"."Customer Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(GD1; "Cust. Ledger Entry"."Global Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(GD2; "Cust. Ledger Entry"."Global Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(SalesPerson; "Cust. Ledger Entry"."Salesperson Code")
                {
                    FieldValidate = No;
                }
                fieldelement(UserID; "Cust. Ledger Entry"."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(SourceCode; "Cust. Ledger Entry"."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(Onhold; "Cust. Ledger Entry"."On Hold")
                {
                    FieldValidate = No;
                }
                fieldelement(Appliestodoctype; "Cust. Ledger Entry"."Applies-to Doc. Type")
                {
                    FieldValidate = No;
                }
                fieldelement(Appliestodocno; "Cust. Ledger Entry"."Applies-to Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(Open; "Cust. Ledger Entry".Open)
                {
                    FieldValidate = No;
                }
                fieldelement(Duedate; "Cust. Ledger Entry"."Due Date")
                {
                    FieldValidate = No;
                }
                fieldelement(Pmtdiscountdate; "Cust. Ledger Entry"."Pmt. Discount Date")
                {
                    FieldValidate = No;
                }
                fieldelement(OriginalPmtpossiblee; "Cust. Ledger Entry"."Original Pmt. Disc. Possible")
                {
                    FieldValidate = No;
                }
                fieldelement(PmtDiscGivenLCY; "Cust. Ledger Entry"."Pmt. Disc. Given (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(Positive; "Cust. Ledger Entry".Positive)
                {
                    FieldValidate = No;
                }
                fieldelement(Closedbyentryno; "Cust. Ledger Entry"."Closed by Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(Closedbyentrydate; "Cust. Ledger Entry"."Closed at Date")
                {
                    FieldValidate = No;
                }
                fieldelement(closedbyamount; "Cust. Ledger Entry"."Closed by Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(Appliestoid; "Cust. Ledger Entry"."Applies-to ID")
                {
                    FieldValidate = No;
                }
                fieldelement(JournalBatchname; "Cust. Ledger Entry"."Journal Batch Name")
                {
                    FieldValidate = No;
                }
                fieldelement(ReasonCode; "Cust. Ledger Entry"."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(BalAccType; "Cust. Ledger Entry"."Bal. Account Type")
                {
                    FieldValidate = No;
                }
                fieldelement(BalAccNo; "Cust. Ledger Entry"."Bal. Account No.")
                {
                    FieldValidate = No;
                }
                fieldelement(TransactionNo; "Cust. Ledger Entry"."Transaction No.")
                {
                    FieldValidate = No;
                }
                fieldelement(Closedbyamount; "Cust. Ledger Entry"."Closed by Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(Debitamount; "Cust. Ledger Entry"."Debit Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(Creditamount; "Cust. Ledger Entry"."Credit Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(DebitLCY; "Cust. Ledger Entry"."Debit Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(CreditLCY; "Cust. Ledger Entry"."Credit Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(DocumentDate; "Cust. Ledger Entry"."Document Date")
                {
                    FieldValidate = No;
                }
                fieldelement(ExternalDocNo; "Cust. Ledger Entry"."External Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(CalculateInterest; "Cust. Ledger Entry"."Calculate Interest")
                {
                    FieldValidate = No;
                }
                fieldelement(ClosingInterestCalculated; "Cust. Ledger Entry"."Closing Interest Calculated")
                {
                    FieldValidate = No;
                }
                fieldelement(NoSeries; "Cust. Ledger Entry"."No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(ClosedbycurrCode; "Cust. Ledger Entry"."Closed by Currency Code")
                {
                    FieldValidate = No;
                }
                fieldelement(ClosedByCurrAmt; "Cust. Ledger Entry"."Closed by Currency Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(AdjustedCurrFactor; "Cust. Ledger Entry"."Adjusted Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(OriginalCurrFactor; "Cust. Ledger Entry"."Original Currency Factor")
                {
                    FieldValidate = No;
                }
                fieldelement(OriginalAmt; "Cust. Ledger Entry"."Original Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(DateFilter; "Cust. Ledger Entry"."Date Filter")
                {
                    FieldValidate = No;
                }
                fieldelement(RemPmtDis; "Cust. Ledger Entry"."Remaining Pmt. Disc. Possible")
                {
                    FieldValidate = No;
                }
                fieldelement(PmtDistollerance; "Cust. Ledger Entry"."Pmt. Disc. Tolerance Date")
                {
                    FieldValidate = No;
                }
                fieldelement(MaxPaymentTolerance; "Cust. Ledger Entry"."Max. Payment Tolerance")
                {
                    FieldValidate = No;
                }
                fieldelement(LastissuedRemLvl; "Cust. Ledger Entry"."Last Issued Reminder Level")
                {
                    FieldValidate = No;
                }
                fieldelement(AcceptedPmttolerance; "Cust. Ledger Entry"."Accepted Payment Tolerance")
                {
                    FieldValidate = No;
                }
                fieldelement(AcceptedPmtDicTol; "Cust. Ledger Entry"."Accepted Pmt. Disc. Tolerance")
                {
                    FieldValidate = No;
                }
                fieldelement(PmtTolerance; "Cust. Ledger Entry"."Pmt. Tolerance (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(Amttoapply; "Cust. Ledger Entry"."Amount to Apply")
                {
                    FieldValidate = No;
                }
                fieldelement(ICPartnerCode; "Cust. Ledger Entry"."IC Partner Code")
                {
                    FieldValidate = No;
                }
                fieldelement(ApplyingEntry; "Cust. Ledger Entry"."Applying Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(Reserved; "Cust. Ledger Entry".Reversed)
                {
                    FieldValidate = No;
                }
                fieldelement(ReservedbyEntryNo; "Cust. Ledger Entry"."Reversed by Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(ReservedEntryNo; "Cust. Ledger Entry"."Reversed Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(Prepayment; "Cust. Ledger Entry".Prepayment)
                {
                    FieldValidate = No;
                }
                fieldelement(PaymentMethodCode; "Cust. Ledger Entry"."Payment Method Code")
                {
                    FieldValidate = No;
                }
                fieldelement(Apptoextdocno; "Cust. Ledger Entry"."Applies-to Ext. Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(recptbankacc; "Cust. Ledger Entry"."Recipient Bank Account")
                {
                    FieldValidate = No;
                }
                fieldelement(Messagetoreciepient; "Cust. Ledger Entry"."Message to Recipient")
                {
                    FieldValidate = No;
                }
                fieldelement(Exportedtopayment; "Cust. Ledger Entry"."Exported to Payment File")
                {
                    FieldValidate = No;
                }
                fieldelement(DimSetid; "Cust. Ledger Entry"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(DirectDebitmandate; "Cust. Ledger Entry"."Direct Debit Mandate ID")
                {
                    FieldValidate = No;
                }
                fieldelement(Adjustment; "Cust. Ledger Entry".Adjustment)
                {
                    FieldValidate = No;
                }
                fieldelement(BASAdjustment; "Cust. Ledger Entry"."BAS Adjustment")
                {
                    FieldValidate = No;
                }
                fieldelement(AdjustmentAppliesto; "Cust. Ledger Entry"."Adjustment Applies-to")
                {
                    FieldValidate = No;
                }
                fieldelement(PreAdjmtreasoncode; "Cust. Ledger Entry"."Pre Adjmt. Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(RemAmtforWHT; "Cust. Ledger Entry"."Rem. Amt for WHT")
                {
                    FieldValidate = No;
                }
                fieldelement(RemAmt; "Cust. Ledger Entry"."Rem. Amt")
                {
                    FieldValidate = No;
                }
                fieldelement(WHTAmt; "Cust. Ledger Entry"."WHT Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(WHTAmtLCY; "Cust. Ledger Entry"."WHT Amount (LCY)")
                {
                    FieldValidate = No;
                }
                fieldelement(WHTPmt; "Cust. Ledger Entry"."WHT Payment")
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

