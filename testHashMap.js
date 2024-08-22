
var HashMap = function () {
    let obj = {};
    return {
        put: function (k, v) {
            obj[k] = v;
        },
        keys: function () {
            const keys = Object.keys(obj);
            return keys;
        },
        contains: function (key) {
            if (key in obj) {
                return true;
            }
        },
        get: function (key) {
            return obj[key];

        },
        clear: function () {
            obj = {};
        }
    };
};