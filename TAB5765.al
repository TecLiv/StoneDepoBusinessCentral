tableextension 50146 tab5765 extends "Warehouse Request"
{
    // version NAVW113.00

    fields
    {
        field(50000; Length; Decimal)
        {
            Editable = false;
        }
        field(50001; Width; Decimal)
        {
            Editable = false;
        }
        field(50002; Height; Decimal)
        {
            Editable = false;
        }
        field(50003; Cubage; Decimal)
        {
            Editable = false;
        }
        field(50004; "Avg. Qty. per Add. Base UOM"; Decimal)
        {
            Editable = false;
        }
        field(50005; "Quantity (Add. Base)"; Decimal)
        {
            Editable = false;
        }
        field(50011; "Request Delivery Date"; Date)
        {
        }
        field(50012; "Customer No."; Code[20])
        {
            TableRelation = Customer;
        }
        field(50013; "Order No."; Code[20])
        {
        }
    }
}

