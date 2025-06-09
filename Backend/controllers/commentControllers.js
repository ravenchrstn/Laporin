const commentServices = require("../services/commentServices")
const response = require("../response")

exports.getCommentsByPostId = async (req, res) => {
    try {
        const id = req.query.id
        const comments = await commentServices.getCommentsByPostId(id)
        response({res, statusCode: 200, message: "Comment count has successfully been sent!", data:comments, count:comments.length})
        // tambahin exclude id
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})
    }
}