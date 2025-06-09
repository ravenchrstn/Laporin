const express = require("express")
const router = express.Router();
const postControllers = require("../controllers/postControllers")

router.post("/posts", postControllers.getUpdatedPosts)
router.post("/posts/create", postControllers.createPost)
router.post("/posts/delete", postControllers.deletePost)
router.post("/posts/update", postControllers.updatePost)

module.exports = router;