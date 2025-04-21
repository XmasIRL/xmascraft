
export { init, showStatus, start, stop, restart, listen, execute }

import { error, info } from '@/utils.js';
import * as exaroton from 'exaroton';
import { stat } from 'fs';

let

  client:exaroton.Client|null,
  server:exaroton.Server|null,

  id    = process.env.SERVER_ID,
  token = process.env.SERVER_TOKEN,

  init = async() => {
    if (!token) return error('MISSING_TOKEN');
    if (!id)    return error('MISSING_ID');
    client = new exaroton.Client(token);
    server = await getAccount() && await getServer(id) || null;
    if (!server) return error('FAILED_TO_CONNECT');
    info('CONNECTED');
    showStatus();
    listen();
  },

  showStatus = () => {
    if (!server) return;
    if (server.hasStatus(server.STATUS.ONLINE))    return info("SERVER_ONLINE");
    if (server.hasStatus(server.STATUS.PREPARING)) return info("SERVER_PREPARING");
    if (server.hasStatus(server.STATUS.LOADING))   return info("SERVER_LOADING");
    if (server.hasStatus(server.STATUS.STARTING))  return info("SERVER_STARTING");
    if (server.hasStatus(server.STATUS.OFFLINE))   return info("SERVER_OFFLINE");
    return info("SERVER_UNKNOWN");
  },

  start = async() => {
    if (!server) return;
    await server.start().catch(() => error('FAILED_TO_START'));
  },

  stop = async() => {
    if (!server) return;
    await server.stop().catch(() => error('FAILED_TO_STOP'));
  },

  restart = async() => {
    if (!server) return;
    await server.restart().catch(() => error('FAILED_TO_RESTART'));
  },

  listen = async() => {
    if (!server) return;
    server.subscribe("console");
    server.on("console:line", (data:any) => console.log(data.line));
  },

  execute = async( command:string ) => {
    if (!server) return;
    await server.executeCommand(command);
  },

  getAccount = async() => {
    if (!client) return;
    return await client.getAccount().catch(() => error('INVALID_TOKEN'));
  },

  getServer = async( id:string ) => {
    if (!client) return;
    return await client.server(id).get().catch(() => error('INVALID_ID'));
  }