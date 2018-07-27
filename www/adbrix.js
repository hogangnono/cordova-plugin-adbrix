/**
 * Created by cuter74 on 2016. 9. 9..
 */

var exec = require('cordova/exec');

var Adbrix = {
    endSession: function(callback) {
        exec(callback, function(err) { console.log("adbrix error!"); },"Adbrix","end",[]);
    },

    retention: function (menuName, callback) {
        exec(callback, function(err){console.log("adbrix menu error!");},"Adbrix","retention",[menuName]);
    },

    member: function (menuName, callback) {
        exec(callback, function(err){ console.log("adbrix member error!");},"Adbrix","member",[]);
    },

    age: function (age,callback) {
        exec(callback, function(err){ console.log("adbrix age error!"); },"Adbrix","age",[age]);
    },

    gender: function (gender,callback) {
        exec(callback, function(err){ console.log("adbrix gender error!"); },"Adbrix","gender",[gender]);
    },

    firstImp: function (str, callback) {
        exec(callback, function(err) { console.log("adbrix firstImp error!"); }, "Adbrix", "firstImp", [str]);
    }
};

module.exports = Adbrix;
