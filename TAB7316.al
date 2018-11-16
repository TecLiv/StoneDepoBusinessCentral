tableextension 50148 tab7316 extends "Warehouse Receipt Header"
{
    // version NAVW113.00

    fields
    {
        field(50011; "Request Receipt Date"; Date)
        {
            Editable = false;
        }
        field(50012; "Vendor No."; Code[20])
        {
            Editable = false;
            TableRelation = Customer;
        }
        field(50013; "Vendor Order No."; Code[20])
        {
            Editable = false;
        }
        field(50014; "Purchase Order No."; Code[20])
        {
            Editable = false;
        }
        field(50015; "Line Details"; Integer)
        {
            CalcFormula = Count ("Warehouse Receipt Line" WHERE ("No." = FIELD ("No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50016; "Vendor Name"; Text[50])
        {
            Editable = false;
        }
    }
}

