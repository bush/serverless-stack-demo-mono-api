'use strict';
  
module.exports.main = (event, context, callback) => {
  const response = {
    statusCode: 200,
    body: JSON.stringify({
      message: 'Go Serverless v1.0! Your function executed successfully! v5' + process.env.tableName,
      input: event,
    }),
  };

  callback(null, response);
};

