tableextension 50109 tab7320 extends "Warehouse Shipment Header"
{
    // version NAVW113.00

    fields
    {
        field(50011; "Request Delivery Date"; Date)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50012; "Customer No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = Customer;
        }
        field(50013; "Customer Order No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50014; "Sales Order No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50015; "Line Details"; Integer)
        {
            CalcFormula = Count ("Warehouse Shipment Line" WHERE ("No." = FIELD ("No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50016; "Customer Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }
}

