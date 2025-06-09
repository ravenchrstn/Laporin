const express = require("express")
const router = express.Router();
const postMediaControllers = require("../controllers/postMediaControllers")

router.get("/postmedias/getpostmediasbypostid", postMediaControllers.getPostMediasByPostId)

module.exports = router;