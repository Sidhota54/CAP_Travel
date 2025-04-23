service BaseService{
    // entity Products{
    //     key ID: UUID;
    //     name: String;
    // }
    // entity Suppliers{
    //     key ID: UUID;
    //     name: String;
    // }
     entity Orders{
        key ID: UUID;
        orderNumber: String(10);
        amount: Decimal(10,2);
        createdAt: Timestamp;
    }

}