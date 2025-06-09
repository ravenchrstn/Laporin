const db = require("../connection")

exports.getMediaById = (id) => {
    return db.promise().query("SELECT * FROM medias WHERE id = ?", [id])
}

exports.getMediasByPostId = (id) => {
    return db.promise().query(`
        SELECT * 
        FROM medias m 
        JOIN post_medias pm
        ON m.id = pm.media_id
        WHERE pm.post_id = ?`, [id])
}