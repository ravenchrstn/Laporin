const express = require("express")
const router = express.Router()
const userControllers = require("../controllers/userControllers")

router.post("/users/login/", userControllers.authenticate)
router.post("/users/register/", userControllers.register)

module.exports = router