const userServices = require("../services/userServices")
const response = require("../response")

exports.getAllUsers = async (req, res) => {
    try {
        const users = await userServices.getAllUsers();

    } catch (err) {
        
    }
}

exports.getUserById = async (req, res) => {
    try {
        const id = req.query.id
        const user = await userServices.getUserById(id)
        response({res, statusCode: 200, message: "User successfully found!", data:user, count:user.length})
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})
    }
}

exports.authenticate = async (req, res) => {
    try {
        const { username = "", password = "" } = req.body
        const user = await userServices.authenticate({username, password})

        if (user) return response({res, statusCode: 200, message: "User successfully authenticated!", data:user, count:user.length})
        response({res, statusCode: 204, message: "User not successfully authenticated", data:user, count:user.length})
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})
    }
}

exports.register = async (req, res) => {
    try {
        const { full_name, username, email, password } = req.body

        const OkPacket = await userServices.insertUser({username, email, password})
        const user_id = OkPacket.insertId

        // Table user_addresses dan user_profiles tidak dapat berdiri sendiri
        // Ketiga table memiliki hubungan yang sangat kuat (Composition)
        await userServices.insertUserAddress({user_id})
        await userServices.insertUserProfile({user_id, full_name})

        response({res, statusCode: 200, message: "Account successfully registered!", data:OkPacket, count:OkPacket.length})
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})
    }
}