const postServices = require("../services/postServices")
const response = require("../response")

exports.getUpdatedPosts = async (req, res) => {
    try {
        const { excludedPostIds = [], limit = 5 } = req.body
        
        const posts = await postServices.getUpdatedPosts(excludedPostIds, limit)
        excludedPostIds.push(...posts.map(p => p.id))

        if (!posts || posts.length <= 0) return response({res, statusCode: 204})

        response({res, statusCode: 200, message: "Random posts successfully sent!", data:posts, excludedIds:excludedPostIds, count:posts.length})
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})
    }
}

exports.createPost = async (req, res) => {
    try {
        const { user_id, text, is_edited = 0, upvote_count = 0, post_type, is_deleted = 0, headline = "", downvote_count = 0 } = req.body
        const OkPacket = await postServices.createPost({user_id, text, is_edited, upvote_count, post_type, is_deleted, headline, downvote_count})

        const addedPost = await postServices.getPostById(OkPacket.insertId)
        response({res, statusCode: 200, message: "Post successfully created!", data:addedPost, count:addedPost.length})
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})
    }
}

exports.deletePost = async (req, res) => {
    try {
        const { id } = req.body
        const OkPacket = await postServices.deletePost({id})
        response({res, statusCode: 200, message: "Post successfully deleted!", data:OkPacket, count:OkPacket.length})
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})
    }
}

exports.updatePost = async (req, res) => {
    try {
        const { id, text, headline, is_edited = 1, edited_at = new Date().toISOString().slice(0, 19).replace("T", " ") } = req.body
        const OkPacket = await postServices.updatePost(id, {text, headline, is_edited, edited_at})
        response({res, statusCode: 200, message: "Post successfully updated!", data:OkPacket, count:OkPacket.length})
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})
    }
}