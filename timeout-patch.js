const http = require('http');
const https = require('https');

const patchServer = (server) => {
  server.requestTimeout = 0;
  server.headersTimeout = 0;
  server.keepAliveTimeout = 0;
  server.setTimeout(0);
};

// Patch HTTP Server
const originalHttpCreateServer = http.createServer;
http.createServer = function() {
  const server = originalHttpCreateServer.apply(this, arguments);
  patchServer(server);
  return server;
};

// Patch HTTPS Server
const originalHttpsCreateServer = https.createServer;
https.createServer = function() {
  const server = originalHttpsCreateServer.apply(this, arguments);
  patchServer(server);
  return server;
};
