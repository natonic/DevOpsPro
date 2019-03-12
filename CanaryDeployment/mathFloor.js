console.log('Loading Lambda function');

exports.handler = async (event, context, callback) => {
    let resultNum = Math.floor(999.99);

    callback(null, 'this is the canary function (Math.floor) = ' + resultNum);
};