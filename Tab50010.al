table 50110 "Inbound Sales Header"
{
    // version DS

    fields
    {
        field(1; "Order No."; Code[20])
        {
        }
        field(2; "Order Date"; Date)
        {
        }
        field(3; "Order Time"; Time)
        {
        }
        field(4; "Customer No."; Code[20])
        {
            TableRelation = "Inbound Customer";
        }
        field(5; "Customer Name"; Text[50])
        {
        }
        field(6; "Customer Address"; Text[100])
        {
        }
        field(7; "Customer Address 2"; Text[100])
        {
        }
        field(8; "Customer City"; Text[30])
        {
        }
        field(9; "Customer Post Code"; Code[20])
        {
            TableRelation = "Post Code";
        }
        field(10; "Bill-to Name"; Text[50])
        {
        }
        field(11; "Bill-to Address"; Text[100])
        {
        }
        field(12; "Bill-to Address 2"; Text[100])
        {
        }
        field(13; "Bill-to City"; Text[50])
        {
        }
        field(14; "Bill-to Post Code"; Text[30])
        {
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(15; "Bill-to Country"; Code[10])
        {
        }
        field(20; "Ship-to Name"; Text[50])
        {
        }
        field(21; "Ship-to Name 2"; Text[50])
        {
        }
        field(22; "Ship-to Address"; Text[100])
        {
        }
        field(23; "Ship-to Address 2"; Text[100])
        {
        }
        field(24; "Ship-to Address 3"; Text[50])
        {
        }
        field(25; "Ship-to Address 4"; Text[50])
        {
        }
        field(26; "Ship-to Post Code"; Code[20])
        {
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(27; "Ship-to City"; Text[30])
        {
        }
        field(28; "Ship-to State"; Text[30])
        {
        }
        field(29; "Ship-to Country"; Code[10])
        {
        }
        field(30; "Ship-to Phone No."; Text[30])
        {
        }
        field(31; "Ship-to Mobile No."; Text[30])
        {
        }
        field(32; "Ship-to E-Mail"; Text[80])
        {
        }
        field(33; "Shipment Method Code"; Code[10])
        {
            TableRelation = "Shipment Method";
        }
        field(40; "Salesperson Code"; Code[10])
        {
            TableRelation = "Salesperson/Purchaser";
        }
        field(60; "Order Status"; Option)
        {
            OptionCaption = 'COD,Prepaid';
            OptionMembers = COD,Prepaid;
        }
        field(80; "Order Value"; Decimal)
        {
        }
        field(81; "Tax Amount"; Decimal)
        {
        }
        field(82; "Shipping Amount"; Decimal)
        {
        }
        field(83; "Grand Total"; Decimal)
        {
        }
        field(100; "Sales Order No."; Code[20])
        {
            Editable = false;
            TableRelation = "Sales Header"."No." WHERE ("Document Type" = CONST (Order));
        }
        field(101; "Date Received"; Date)
        {
            Editable = false;
        }
        field(102; "Time Received"; Time)
        {
            Editable = false;
        }
        field(103; Status; Option)
        {
            Editable = false;
            OptionCaption = 'Pending,Accepted,Rejected';
            OptionMembers = Pending,Accepted,Rejected;
        }
        field(104; "Status Date"; Date)
        {
            Editable = false;
        }
        field(105; "Status Time"; Time)
        {
            Editable = false;
        }
        field(106; "Payment Method"; Code[10])
        {
        }
        field(107; "Bill-to Customer No."; Code[20])
        {
            TableRelation = Customer;
        }
    }

    keys
    {
        key(Key1; "Order No.")
        {
        }
    }

    fieldgroups
    {
    }
}

