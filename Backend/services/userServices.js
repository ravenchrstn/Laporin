const userRepository = require("../repositories/userRepository")

exports.getAllUsers = () => {
    return userRepository.getAllUsers();
}