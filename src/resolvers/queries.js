import {db} from '../dbClient';

export default {
    Query: {
        pizzaTypes: () => {
            return db.many(`
                SELECT *
                FROM public.pizzas
                ORDER BY id ASC`)
        },

        deliveryCost: () => {
            return db.one(`
                SELECT cost
                FROM public.delivery
                limit 1`,[], o => o.cost)
        }
    }
}