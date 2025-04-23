using {BaseService as base} from './BaseService';

service ExtendService{
    entity  Orders as projection on base.Orders{
        Key ID,
        orderNumber,
        amount,
        createdAt,
        amount * 1.18 as totalAmount: Decimal(10,2),   // Computed field
        'Order-Status' as status : String(15)          // Static field

        // stock: Integer;  // Adding a new field
        // supplier: Association to base.Suppliers;  // Adding a new association
    }
    function getOrders() returns array of Orders;
    
}