namespace order;

using {
    managed,
    cuid,
    localized
} from '@sap/cds/common';

// @requires: 'authenticated-user'


entity SalesOrders {
        @title: 'Sales Order Number'
    key soNumber        : String;

        @title: 'Order Date'
        orderDate       : Date;

        @title: 'Customer Name'
        customerName    : String;

        @title: 'Customer'
        customerNumber  : String;

        @title: 'PO Number'
        PoNumber        : String;

        @title: 'Inquiry Number'
        InquiryNumber   : String;

        @title: 'Total Sales Order'
        totalOrderItems : Integer;
}

entity SalesOrderItems {
        @title: 'Item No'
    key ID            : UUID;
        ItemNo        : String(10);
        Product       : String(50);

        @title: 'Quantity'
        quantity      : Integer;
        SalesOrder_ID : Association to SalesOrders;
}

@cds.search: {customerID}
entity Orders : managed {
    key ID          : UUID @default.uuid;
        customerID  : String;
        orderDate   : DateTime;
        totalAmount : Decimal(10, 2);

        @odata.media
        image       : LargeBinary;
        items       : Composition of many OrderItems
                          on items.orderID = $self;
}

// @requires: 'authenticated-user'
entity OrderItems : managed {
    key ID          : UUID @default.uuid;
        orderID     : Association to Orders;
        productName : localized String;
        quantity    : Integer;
        unitPrice   : Decimal(10, 2);
        totalAmount : Decimal(10, 2);

}


// using {
//     managed,
//     cuid,
//     localized
// } from '@sap/cds/common';

// entity Customer {
//     keyID : UUID;
//     name  : String;
//     email : String;
// }

// entity Flight {
//     keyID       : UUID;
//     airline     : String;
//     destination : String;
//     departure   : String;
// }

// entity Booking : managed {
//     key ID         : UUID;
//         customer   : Association to Customer;
//         flight     : Association to Flight;
//         status     : localized String;
//         passengers : Composition of many Passenger
//                          on passengers.booking = $self
// }

// entity Passenger {
//     key ID      : UUID;
//     key booking : Association to Booking;
//         name    : String;
//         email   : String;
// }
