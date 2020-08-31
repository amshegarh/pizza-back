let express = require('express');
let {graphqlHTTP} = require('express-graphql');
import typeDefs from './schemas.js';
import resolvers from './resolvers.js';
import {makeExecutableSchema} from 'graphql-tools';
import cors from 'cors';

const schema = makeExecutableSchema({typeDefs, resolvers});

let app = express();
app.use(cors());
app.use('/graphql', graphqlHTTP({
    schema: schema,
    rootValue: resolvers,
    graphiql: true,

}));
app.listen(3001);