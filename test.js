#!/usr/bin/env node

require('shelljs/global');

console.log('im argv[1]: ',process.argv[1])

var name = process.argv[2];
var shell = require("shelljs");



ls('*.js').forEach(function(file) {
    console.log(file)
});

shell.exec("echo hello " + name);