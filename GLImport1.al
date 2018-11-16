xmlport 50110 GL_Import
{
    Direction = Import;
    Format = VariableText;
    Permissions = TableData 17 = rimd;
    UseRequestPage = false;

    schema
    {
        textelement(Root)
        {
            tableelement("G/L Entry"; "G/L Entry")
            {
                XmlName = 'GL';
                fieldelement(EntryNo; "G/L Entry"."Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(GLAccNo; "G/L Entry"."G/L Account No.")
                {
                    FieldValidate = No;
                }
                fieldelement(Postingdate; "G/L Entry"."Posting Date")
                {
                    FieldValidate = No;
                }
                fieldelement(DocType; "G/L Entry"."Document Type")
                {
                    FieldValidate = No;
                }
                fieldelement(DocNo; "G/L Entry"."Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(Description; "G/L Entry".Description)
                {
                    FieldValidate = No;
                }
                fieldelement(BalAccNo; "G/L Entry"."Bal. Account No.")
                {
                    FieldValidate = No;
                }
                fieldelement(Amount; "G/L Entry".Amount)
                {
                    FieldValidate = No;
                }
                fieldelement(GD1; "G/L Entry"."Global Dimension 1 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(GD2; "G/L Entry"."Global Dimension 2 Code")
                {
                    FieldValidate = No;
                }
                fieldelement(UserId; "G/L Entry"."User ID")
                {
                    FieldValidate = No;
                }
                fieldelement(SourceCode; "G/L Entry"."Source Code")
                {
                    FieldValidate = No;
                }
                fieldelement(Syscreated; "G/L Entry"."System-Created Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(Prioryearentry; "G/L Entry"."Prior-Year Entry")
                {
                    FieldValidate = No;
                }
                fieldelement(JobNo; "G/L Entry"."Job No.")
                {
                    FieldValidate = No;
                }
                fieldelement(Qty; "G/L Entry".Quantity)
                {
                    FieldValidate = No;
                }
                fieldelement(VATAmt; "G/L Entry"."VAT Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(BusinessUnitcode; "G/L Entry"."Business Unit Code")
                {
                    FieldValidate = No;
                }
                fieldelement(JournalBatchname; "G/L Entry"."Journal Batch Name")
                {
                    FieldValidate = No;
                }
                fieldelement(Reasoncode; "G/L Entry"."Reason Code")
                {
                    FieldValidate = No;
                }
                fieldelement(Genpostingtype; "G/L Entry"."Gen. Posting Type")
                {
                    FieldValidate = No;
                }
                fieldelement(Genbus; "G/L Entry"."Gen. Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(Genprod; "G/L Entry"."Gen. Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(Balacctype; "G/L Entry"."Bal. Account Type")
                {
                    FieldValidate = No;
                }
                fieldelement(TransactionNo; "G/L Entry"."Transaction No.")
                {
                    FieldValidate = No;
                }
                fieldelement(DebitAmt; "G/L Entry"."Debit Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(CreditAmt; "G/L Entry"."Credit Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(Docdate; "G/L Entry"."Document Date")
                {
                    FieldValidate = No;
                }
                fieldelement(ExternalDocNo; "G/L Entry"."External Document No.")
                {
                    FieldValidate = No;
                }
                fieldelement(SourceType; "G/L Entry"."Source Type")
                {
                    FieldValidate = No;
                }
                fieldelement(SourceNo; "G/L Entry"."Source No.")
                {
                    FieldValidate = No;
                }
                fieldelement(NoSeries; "G/L Entry"."No. Series")
                {
                    FieldValidate = No;
                }
                fieldelement(TaxAreaCode; "G/L Entry"."Tax Area Code")
                {
                    FieldValidate = No;
                }
                fieldelement(TaxLiable; "G/L Entry"."Tax Liable")
                {
                    FieldValidate = No;
                }
                fieldelement(TaxGroupCode; "G/L Entry"."Tax Group Code")
                {
                    FieldValidate = No;
                }
                fieldelement(UseTax; "G/L Entry"."Use Tax")
                {
                    FieldValidate = No;
                }
                fieldelement(VATBusposgrp; "G/L Entry"."VAT Bus. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(VATProdposgrp; "G/L Entry"."VAT Prod. Posting Group")
                {
                    FieldValidate = No;
                }
                fieldelement(Addcurr; "G/L Entry"."Additional-Currency Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(AddCurrDebit; "G/L Entry"."Add.-Currency Debit Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(AddCurrCredit; "G/L Entry"."Add.-Currency Credit Amount")
                {
                    FieldValidate = No;
                }
                fieldelement(CloseIncomeStatement; "G/L Entry"."Close Income Statement Dim. ID")
                {
                    FieldValidate = No;
                }
                fieldelement(ICpartnercode; "G/L Entry"."IC Partner Code")
                {
                    FieldValidate = No;
                }
                fieldelement(Reserved; "G/L Entry".Reversed)
                {
                    FieldValidate = No;
                }
                fieldelement(Reservedbyentrytype; "G/L Entry"."Reversed by Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(Reservedbyentryno; "G/L Entry"."Reversed Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(GLAccname; "G/L Entry"."G/L Account Name")
                {
                    FieldValidate = No;
                }
                fieldelement(DimSetid; "G/L Entry"."Dimension Set ID")
                {
                    FieldValidate = No;
                }
                fieldelement(Prodorderno; "G/L Entry"."Prod. Order No.")
                {
                    FieldValidate = No;
                }
                fieldelement(FAEntrytype; "G/L Entry"."FA Entry Type")
                {
                    FieldValidate = No;
                }
                fieldelement(FAEntryNo; "G/L Entry"."FA Entry No.")
                {
                    FieldValidate = No;
                }
                fieldelement(AccID; "G/L Entry"."Account Id")
                {
                    FieldValidate = No;
                }
                fieldelement(LastModified; "G/L Entry"."Last Modified DateTime")
                {
                    FieldValidate = No;
                }
                fieldelement(BASDocNo; "G/L Entry"."BAS Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(BASAdjustment; "G/L Entry"."BAS Adjustment")
                {
                    FieldValidate = No;
                }
                fieldelement(Adjustment; "G/L Entry".Adjustment)
                {
                    FieldValidate = No;
                }
                fieldelement(BASVersion; "G/L Entry"."BAS Version")
                {
                    FieldValidate = No;
                }
                fieldelement(ConsolBASDocno; "G/L Entry"."Consol. BAS Doc. No.")
                {
                    FieldValidate = No;
                }
                fieldelement(ConsolVersionNo; "G/L Entry"."Consol. Version No.")
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

