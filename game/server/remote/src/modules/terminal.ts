
export { start }

import { error } from '@/utils.js';
import * as server from '@/server.js';

let

  start = async () => {
    process.stdin.resume();
    process.stdin.setEncoding('utf8');
    process.stdin.on('data', async (data:string) => await parse(data.trim()));
  },

  parse = ( command:string ) => {
    if(command === 'status' ) return server.showStatus();
    if(command === 'start'  ) return server.start();
    if(command === 'stop'   ) return server.stop();
    if(command === 'restart') return server.restart();
    return server.execute(command).catch(() => error('FAILED_TO_EXECUTE'));
  }
