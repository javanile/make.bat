const fs = require('fs')
    , path = require('path')

fs.unlinkSync(__dirname + path.sep + '..' + path.sep + '..' + path.sep + 'make.ps1')
