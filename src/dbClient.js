import {Client} from 'pg';
import {dbURL} from './cfg';
const pgp = require('pg-promise')();

const cn = dbURL;
export const db = pgp(cn);