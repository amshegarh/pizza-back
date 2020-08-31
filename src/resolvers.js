import path from 'path';
import { mergeResolvers } from 'graphql-tools';
import { loadFilesSync } from 'graphql-tools';

const resolversArray = loadFilesSync(path.join(__dirname, './resolvers'));

export default mergeResolvers(resolversArray);