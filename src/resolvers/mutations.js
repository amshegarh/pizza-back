import {db} from '../dbClient';

export default {
    Mutation: {
        sendOrder: (schema, data) => {
            let {order} = data,
                {
                    pizzazIds,
                    address,
                    name
                } = order;
            const userId = null;
            if (!pizzazIds.length) throw `Must have a selection of pizzas to accept order`;
            return db.none(`
                with q as (SELECT md5(random()::text || clock_timestamp()::text)::uuid as uuid)
                insert into public.orders("orderId", "pizzaIds", "userId", address, name)
                values ((select uuid from q), $1,$2,$3,$4)`, [pizzazIds, userId, address, name])
        },
    }
}