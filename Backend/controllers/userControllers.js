const userServices = require("../services/userServices")
const response = require("../response")

exports.getAllUsers = async (req, res) => {
    try {
        const users = await userServices.getAllUsers();

    } catch (err) {
        
    }
}

exports.authenticate = async (req, res) => {
    try {
        const { username = "", password = "" } = req.body
        const user = await userServices.authenticate({username, password})
        if (user) response(res, 200, "User successfully authenticated!", user)
        response(res, 204, "User not successfully authenticated")
    } catch (error) {
        response(res, 500, "Error: " + error)
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

        response(res, 200, "Account successfully registered!")
    } catch (error) {
        response(res, 500, "Error: " + error)
    }
}