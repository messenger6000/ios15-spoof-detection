var exec = require('cordova/exec');

var DetectSpoofing = {
    detect: function(successCallback, errorCallback) {
        exec(successCallback, errorCallback, 'DetectSpoofing', 'detect', []);
    }
};

module.exports = DetectSpoofing;
