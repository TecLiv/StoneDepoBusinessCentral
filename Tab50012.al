table 50112 "Inbound Customer"
{
    // version DS


    fields
    {
        field(1; "No."; Code[20])
        {
            TableRelation = Customer;
        }
        field(2; "First Name"; Text[50])
        {
        }
        field(3; "Last Name"; Text[50])
        {
        }
        field(4; Address; Text[100])
        {
        }
        field(5; "Address 2"; Text[100])
        {
        }
        field(6; "Address 3"; Text[50])
        {
        }
        field(7; "Address 4"; Text[50])
        {
        }
        field(8; "Post Code"; Code[20])
        {
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(9; City; Text[30])
        {
        }
        field(10; State; Code[10])
        {
        }
        field(11; Country; Code[10])
        {
        }
        field(12; "Mobile No."; Text[30])
        {
        }
        field(13; "Fax No."; Text[30])
        {
        }
        field(14; "E-Mail"; Text[100])
        {
        }
        field(16; "Date Received"; Date)
        {
            Editable = false;
        }
        field(17; "Time Received"; Time)
        {
            Editable = false;
        }
        field(18; Status; Option)
        {
            Editable = false;
            OptionCaption = 'Pending,Accepted,Rejected';
            OptionMembers = Pending,Accepted,Rejected;
        }
        field(19; "Status Date"; Date)
        {
            Editable = false;
        }
        field(20; "Status Time"; Time)
        {
            Editable = false;
        }
        field(21; "Customer No."; Code[20])
        {
        }
    }

    keys
    {
        key(Key1; "No.")
        {
        }
    }

    fieldgroups
    {
    }
}

