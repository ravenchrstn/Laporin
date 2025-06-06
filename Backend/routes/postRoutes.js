const express = require("express")
const router = express.Router();
const postController = require("../controllers/postControllers")

router.get("/posts/", postController.getRandomPostsWithExclude)
router.post("/posts/", postController.saveExcludedPostIds)

module.exports = router;