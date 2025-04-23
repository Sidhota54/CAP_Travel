using  order from '../db/schema';

service OrderManagmentService {
     entity Orders as projection on order.Orders excluding { totalAmount };
     entity OrderItems as projection on order.OrderItems order by quantity desc;

    entity SalesOrders as projection on order.SalesOrders;
    entity SalesOrderItems as projection on order.SalesOrderItems;
     
    //  annotate OrderManagmentService.Orders with @(
    //     cds.search,
    //     Common: {FieldControl: #Mandatory}
    //  ) ;
}