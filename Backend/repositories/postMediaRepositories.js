const db = require("../connection")

exports.getPostMediasByPostId = (id) => {
    return db.promise().query("SELECT * FROM post_medias WHERE post_id = ?", [id])
}