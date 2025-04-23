const cds = require('@sap/cds');

// module.exports = (srv) => {
//     const { Orders } = srv.entities
//     srv.before("CREATE", Orders, (req) => {
//         if (req.data.totalAmount <= 0) {
//             console.warn(JSON.stringify({ "status": 400, "message": "Total Amount be greater then 0" }))
//         }
//         else {
//             req.data.totalAmount = 200
//         }
//     });
//     srv.on("CREATE", Orders, (req) => {
//         req.data.totalAmount = 200
//     });
//     srv.after("READ", Orders, (orders) => {
//         if (!Array.isArray(orders)) orders = [orders]
//         orders.forEach((order) => {
//             order.totalAmount += 10;
//         })
//     });

//     srv.on('getTotalAmount',async(req)=>{
//         return {status: 'Process',Timestamp: new Date()}
//     });

//     srv.on('placeBulkOrders',async(req)=>{
//         const {quantity} = req.data;
//         for(let i =0 ;i<=quantity;i++){
//             await cds.run(INSERT.into(Orders).entries({totalAmount:50}))
//         }
//         return `${quantity} orders placed successfully`
//     });

    
//     srv.on('calculateDiscount',async(req)=>{
//         const { total } = req.data
//         return total > 100 ? total * 0.1 : total * 0.05;
//     });
// }

module.exports = cds.service.impl(async function () {
    const bp = await cds.connect.to('API_BUSINESS_PARTNER')
    this.on('READ','A_BussinessPartenr', async (req)=>{
        return bp.run(req.query)
    })
})