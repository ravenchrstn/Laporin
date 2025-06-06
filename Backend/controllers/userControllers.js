const userServices = require("../services/userServices")

exports.getAllUsers = async (req, res) => {
    try {
        const users = await userServices.getAllUsers();

    } catch (err) {
        
    }
}