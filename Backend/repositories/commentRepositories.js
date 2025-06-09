const db = require("../connection")

exports.getCommentsByPostId = (id) => {
    return db.promise().query("SELECT * FROM comments WHERE post_id = ?", [id])
}