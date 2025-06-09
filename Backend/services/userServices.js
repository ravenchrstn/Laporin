const userRepositories = require("../repositories/userRepositories")
const bcrypt = require("bcrypt")
exports.getAllUsers = async () => {
    return userRepositories.getAllUsers();
}

exports.getUserById = async (id) => {
    const [user] = await userRepositories.getUserById(id)
    return user;
}

exports.authenticate = async (input) => {
    let userRepo = []
    const inputUsername = input.username
    const inputPassword = input.password

    // Get username and password from database
    if (inputUsername) [userRepo] = await userRepositories.getCredentialsByUsername(inputUsername)
    if (!userRepo || userRepo.length <= 0) return null

    // Membandingkan password yang dimasukkan dengan password di database
    const isPasswordValid = await bcrypt.compare(inputPassword, userRepo[0].hashed_password)

    return isPasswordValid? userRepo : null
}

exports.insertUser = async ({username, email, password}) => {
    const hashed_password = await bcrypt.hash(password, 12)
    const userData = {
        username,
        email,
        hashed_password,
        is_verified: false,
        is_deleted: false
    }

    const [OkPacket] = await userRepositories.insertUser(userData)
    return OkPacket
}

exports.insertUserAddress = async ({user_id}) => {
    const userAddressData = {
        user_id
    } 

    const [OkPacket] = await userRepositories.insertUserAddress(userAddressData)
    return OkPacket
}

exports.insertUserProfile = async ({user_id, full_name}) => {
    const userProfileData = {
        user_id,
        full_name
    } 
    const [OkPacket] = await userRepositories.insertUserProfile(userProfileData)
    return OkPacket
}