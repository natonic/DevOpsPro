console.log('Loading Lambda function');

exports.handler = async (event, context, callback) => {
    let resultNum = Math.ceil(999.99);

    callback(null, 'this is the original function (Math.ceil) = ' + resultNum);
};