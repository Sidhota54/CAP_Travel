using order from '../db/schema';
using {API_BUSINESS_PARTNER as s4} from './external/API_BUSINESS_PARTNER';

// service MyCustomlogic @(path: '/api/customlogic') {
//     entity Orders as projection on order.Orders;
//     function getTotalAmount(Order : UUID)              returns String;
//     function placeBulkOrders(quantity : Integer)       returns String;
//     action   calculateDiscount(total : Decimal(10, 2)) returns Decimal(10, 2);
// }

service BussinessService {
    entity A_BussinessPartenr as
        projection on s4.A_BusinessPartner {
            key BusinessPartner,
                Customer,
                BusinessPartnerFullName,
                BusinessPartnerGrouping,
                BusinessPartnerUUID,
                OrganizationBPName1
        }
}
