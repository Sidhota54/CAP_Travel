const cds = require('@sap/cds');


module.exports = (srv) => {
    srv.on('getOrders', async (req) => {
        const db = srv.tx(req); // start a transaction

        return new Promise((resolve, reject) => {
            db.run(SELECT.from('Orders')).then((orders) => {
                if (!orders.length) {
                    reject(new Error("No Orders founds!"));
                }
                resolve(orders);
            }).catch((error) => reject(error))
        })
        // try {
        //     const orders = await db.run(SELECT.from('Orders'));
        //     if (!orders.length) {
        //         reject(new Error("No Orders founds!"));
        //     }
        //     return orders;
        // }
        // catch(error) {
        //     req.reject(500,error.message)
        // }


    })
}