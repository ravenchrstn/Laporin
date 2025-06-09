const mediaServices = require("../services/mediaServices")
const response = require("../response")

exports.getMediaById = async (req, res) => {
    try {
        const id = req.query.id
        const media = await mediaServices.getMediaById(id)

        if (!media || media.length <= 0) return response({res, statusCode: 204})
        response({res, statusCode: 200, message: `Media with id ${id} successfully sent!`, data:media, count:media.length})
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})
    }
}

exports.getMediasByPostId = async (req, res) => {
    try {
        const id = req.query.id
        const media = await mediaServices.getMediasByPostId(id)

        if (!media || media.length <= 0) return response({res, statusCode: 204})
        response({res, statusCode: 200, message: `Media(s) with id ${id} successfully sent!`, data:media, count:media.length})
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})
    }
}