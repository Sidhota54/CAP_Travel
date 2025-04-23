using order from '../db/schema';

service RestrictedService @(required:'admin'){
    entity Orders as projection on order.Orders;
    entity OrderItems as projection on order.OrderItems;
}
