
import { val } from 'shared/utils';

export const handler = async (event: any = {}) : Promise <any> => {
    console.log(event);
    return { val: val };
};
