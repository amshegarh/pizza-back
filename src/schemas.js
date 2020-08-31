import path from 'path';
import {loadFilesSync, mergeTypeDefs} from 'graphql-tools';

const typesArray = loadFilesSync(path.join(__dirname, './schemas'), {extensions: ['graphql']});

export default mergeTypeDefs(typesArray, {all: true});