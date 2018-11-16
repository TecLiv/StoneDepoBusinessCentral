pageextension 50105 Pag357 extends Companies
{
    layout
    {
        modify("Evaluation Company")
        {
            Visible = IsFoundation;
            ApplicationArea = All;
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        IsFoundation: Boolean;

    trigger OnAfterGetRecord()
    var
        ApplicationAreaSetup: Record "Application Area Setup";
    begin
        IsFoundation := ApplicationAreaSetup.IsFoundationEnabled;
    end;
}