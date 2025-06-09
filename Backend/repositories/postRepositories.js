const db = require("../connection")
const utils = require("../utils/others")

exports.getUpdatedPosts = (excludedPostIds) => {
    const placeholders = excludedPostIds.map(() => '?').join(',');
    return db.promise().query(`SELECT * FROM posts WHERE id NOT IN (${placeholders})`, excludedPostIds)
}

exports.getAllPosts = () => {
    return db.promise().query("SELECT * FROM posts")
}

exports.getPostById = (id) => {
    return db.promise().query("SELECT * FROM posts WHERE id = ?", [id])
}

exports.createPost = (data) => {
    const {fields, values} = utils.getFieldsValues(data)

    return db.promise().query(`INSERT INTO posts (${fields.join(",")}) VALUES (${values.map(() => "?").join(",")})`, values)
}

exports.deletePost = (id) => {
    return db.promise().query(`DELETE FROM posts WHERE id = ?`, id)
}

exports.updatePost = (id, data) => {
    const {keys, values} = utils.cleanKeysValues(data)

    const setQuery = keys.map((key) => `${key} = ?`).join(",")
    return db.promise().query(`UPDATE posts SET ${setQuery} WHERE id = ?`, [...values, id])
}