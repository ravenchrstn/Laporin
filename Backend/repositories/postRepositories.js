const db = require("../connection")

exports.getRandomPostsWithExclude = (excludedPostIds) => {
    const placeholders = excludedPostIds.map(() => '?').join(',');
    return db.promise().query(`SELECT * FROM posts WHERE id NOT IN (${placeholders})`, excludedPostIds)
};

exports.getPosts = () => {
    return db.promise().query("SELECT * FROM posts")
}