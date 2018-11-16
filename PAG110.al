pageextension 50100 Pag110 extends "Customer Posting Groups"
{
    layout
    {
        // Add changes to page layout here
    }
    trigger OnOpenPage()
    begin
        UpdateAccountVisibilityBasedOnFinChargeTerms(InterestAccountVisible, AddFeeAccountVisible);
    end;

    VAR
        FinanceChargeTerms: Record "Finance Charge Terms";
        InterestAccountVisible: boolean;
        AddFeeAccountVisible: Boolean;

    LOCAL PROCEDURE UpdateAccountVisibilityBasedOnFinChargeTerms(VAR InterestAccountVisible: Boolean; VAR AddFeeAccountVisible: Boolean);

    BEGIN
        FinanceChargeTerms.SETRANGE("Post Interest", TRUE);
        InterestAccountVisible := InterestAccountVisible OR NOT FinanceChargeTerms.ISEMPTY;

        FinanceChargeTerms.SETRANGE("Post Interest");
        FinanceChargeTerms.SETRANGE("Post Additional Fee", TRUE);
        AddFeeAccountVisible := AddFeeAccountVisible OR NOT FinanceChargeTerms.ISEMPTY;
    END;
}