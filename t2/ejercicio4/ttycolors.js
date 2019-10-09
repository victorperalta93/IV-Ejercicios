const tty = require('tty');

// Returns true or false depending on if `stdout` supports at least 16 colors
console.log(process.stdout.hasColors());
