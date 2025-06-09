const express = require("express")
const router = express.Router()
const commentControllers = require("../controllers/commentControllers")

router.get("/comments/getcommentsbypostid", commentControllers.getCommentsByPostId)

module.exports = router