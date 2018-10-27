'use strict';
  
module.exports.main = (event, context, callback) => {
  const response = {
    statusCode: 200,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Credentials": true
    },
    body: JSON.stringify({
      message: 'Get function executed successfully! v12',
      input: event,
    }),
  };

  callback(null, response);
};

