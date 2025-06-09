const commentRepositories = require("../repositories/commentRepositories")

exports.getCommentsByPostId = async (id) => {
    // console.log("masuk")
    const [comment_count] = await commentRepositories.getCommentsByPostId(id)
    return comment_count
}   