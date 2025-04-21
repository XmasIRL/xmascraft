
export { start }

import * as terminal from '@/terminal.js';
import * as server from '@/server.js';

let

  start = () => {
    server.init();
    terminal.start();
  }
