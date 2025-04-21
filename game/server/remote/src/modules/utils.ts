
export { ERROR, INFO, error, info }

let

  ERROR = {
    MISSING_TOKEN     : `Disconnected! Missing Token.`     ,
    MISSING_ID        : `Disconnected! Missing Server ID.` ,
    INVALID_TOKEN     : `Disconnected! Invalid Token.`     ,
    INVALID_ID        : `Disconnected! Invalid Server ID.` ,
    INVALID_COMMAND   : `Invalid Command.`                 ,
    FAILED_TO_CONNECT : `Failed to connect to server.`     ,
    FAILED_TO_START   : `Failed to start server.`          ,
    FAILED_TO_STOP    : `Failed to stop server.`           ,
    FAILED_TO_RESTART : `Failed to restart server.`        ,
    FAILED_TO_EXECUTE : `Failed to execute command.`       ,
  },

  INFO = {
    CONNECTED       : '🚀 Connected!'          ,
    SERVER_ONLINE   : '🟢 Server is online.'   ,
    SERVER_PREPARING: '🟡 Server is preparing.',
    SERVER_LOADING  : '🟡 Server is loading.'  ,
    SERVER_STARTING : '🟡 Server is starting.' ,
    SERVER_OFFLINE  : '🔴 Server is offline.'  ,
    SERVER_UNKNOWN  : '🟣 Server status unknown.',
  },

  error = ( message?: keyof typeof ERROR ) => {
    return console.error('⛔', message ? ERROR[message] : '');
  },

  info = ( message?: keyof typeof INFO ) => {
    return console.info(message ? INFO[message] : '');
  }