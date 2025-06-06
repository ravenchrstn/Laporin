const db = require("./connection")

exports.getAllUsers = () => { 
    return db.promise().query("SELECT * FROM users")
};