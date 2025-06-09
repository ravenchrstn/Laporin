const mediaRepositories = require("../repositories/mediaRepositories")

exports.getMediaById = async (id) => {
    const [media] = await mediaRepositories.getMediaById(id)
    return media
}

exports.getMediasByPostId = async (id) => {
    const [medias] = await mediaRepositories.getMediasByPostId(id)
    return medias
}