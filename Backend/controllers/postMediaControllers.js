const postMediaServices = require("../services/postMediaServices")
const response = require("../response")

exports.getPostMediasByPostId = async (req, res) => {
    try {
        const id = req.query.id
        const postMedias = await postMediaServices.getPostMediasByPostId(id)

        if (!postMedias || postMedias.length <= 0) return response({res, statusCode: 204})
        response({res, statusCode: 200, message: `Post Media with id ${id} successfully sent!`, data:postMedias, count:postMedias.length})
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})
    }
}