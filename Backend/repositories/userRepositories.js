const db = require("../connection")
const utils = require("../utils/others")

exports.getAllUsers = () => { 
    return db.promise().query("SELECT * FROM users")
};

exports.getCredentialsByUserId = (userId) => {
    return db.promise().query(`SELECT username, hashed_password FROM users WHERE id = ?`, [userId])
}

exports.getCredentialsByUsername = (username) => {
    return db.promise().query(`SELECT username, hashed_password FROM users WHERE username = ?`, [username])
}

exports.insertUser = (data) => {
    const {fields, values} = utils.getFieldsValues(data)
    return db.promise().query(`INSERT INTO users (${fields.join(",")}) VALUES (${values.map(() => "?").join(", ")})`, values)
}

exports.insertUserAddress = (data) => {
    const {fields, values} = utils.getFieldsValues(data)
    return db.promise().query(`INSERT INTO user_addresses (${fields.join(",")}) VALUES (${values.map(() => "?").join(", ")})`, values)
}

exports.insertUserProfile = (data) => {
    const {fields, values} = utils.getFieldsValues(data)
    return db.promise().query(`INSERT INTO user_profiles (${fields.join(",")}) VALUES (${values.map(() => "?").join(", ")})`, values)
}