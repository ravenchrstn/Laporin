const postServices = require("../services/postServices")
const response = require("../response")

exports.getUpdatedPosts = async (req, res) => {
    try {
        const { excludedPostIds = [], limit = 5 } = req.body
        const posts = await postServices.getUpdatedPosts(excludedPostIds, limit)
        excludedPostIds.push(...posts.map(p => p.id))

        if (!posts || posts.length <= 0) response(res, 204, "Random posts successfully sent, yet no data", posts, excludedPostIds)
        response(res, 200, "Random posts successfully sent!", posts, excludedPostIds)
    } catch (e) {
        response(res, 500, "Error: " + e)
    }
}

exports.createPost = async (req, res) => {
    try {
        const { user_id, text, is_edited = 0, upvote_count = 0, post_type, is_deleted = 0, headline = "", downvote_count = 0 } = req.body
        const OkPacket = await postServices.createPost({user_id, text, is_edited, upvote_count, post_type, is_deleted, headline, downvote_count})
        response(res, 200, "Post successfully created!", OkPacket)
    } catch (error) {
        response(res, 500, "Post not successfully created!")
    }
}

exports.deletePost = async (req, res) => {
    try {
        const { id } = req.body
        const OkPacket = await postServices.deletePost({id})
        response(res, 200, "Post successfully deleted!", OkPacket)
    } catch (error) {
        response(res, 500, "Post not successfully deleted!")
    }
}

exports.updatePost = async (req, res) => {
    try {
        const { id, text, headline, is_edited = 1, edited_at = new Date().toISOString().slice(0, 19).replace("T", " ") } = req.body
        const OkPacket = await postServices.updatePost(id, {text, headline, is_edited, edited_at})
        response(res, 200, "Post successfully updated!", OkPacket)
    } catch (error) {
        response(res, 500, "Post not successfully updated!")
    }
}