const express = require("express")
const router = express.Router()
const userControllers = require("../controllers/userControllers")

router.get("/users/getuserbyid", userControllers.getUserById)
router.post("/users/login", userControllers.authenticate)
router.post("/users/register", userControllers.register)

module.exports = router