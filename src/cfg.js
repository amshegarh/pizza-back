import {env} from 'process';
require('dotenv').config();

const genENV = eName => {
    let res = env[eName];
    if (res == null)
        throw `${eName} is not defined`;
    return res;
};


export const dbURL = genENV('DATABASE_URL');