const postMediaRepositories = require("../repositories/postMediaRepositories")

exports.getPostMediasByPostId = async (id) => {
    const [postMedias] = await postMediaRepositories.getPostMediasByPostId(id)
    return postMedias
}