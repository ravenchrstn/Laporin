const postService = require("../services/postServices")
const response = require("../response")

let excludedPostIds = [2, 5];

exports.getRandomPostsWithExclude = async (req, res) => {
    try {
        const { limit = 5 } = req.body
        const posts = await postService.getRandomPostsWithExclude(excludedPostIds, limit)
        response(200, posts, "Random posts successfully sent!", excludedPostIds, res=res)
    } catch (e) {
        res.send("Error: " + e)
    }
}

exports.saveExcludedPostIds = (req, res) => {
    const { exclude = [] } = req.body
    excludedPostIds = exclude
}