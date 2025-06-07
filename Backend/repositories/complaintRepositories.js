const db = require("../connection")
const utils = require("../utils/others")

exports.getAllComplaints = () => {
    return db.promise().query("SELECT * FROM complaints ORDER BY severity DESC")
}

exports.getUpdatedComplaints = (excludedComplaintIds) => {
    const placeholders = excludedComplaintIds.map(() => '?').join(',')
    return db.promise().query(`SELECT * FROM complaints WHERE id NOT IN (${placeholders} ORDER BY severity DESC)`, excludedComplaintIds)
}

exports.insertComplaint = (data) => {
    const {fields, values} = utils.getFieldsValues(data)

    return db.promise().query(`INSERT INTO complaints (${fields.join(",")}) VALUES (${values.map(() => "?").join(",")})`, values)
}

exports.updateComplaint = (id, data) => {
    const {keys, values} = utils.cleanKeysValues(data)
    const setQuery = keys.map((key) => `${key} = ?`).join(",")

    return db.promise().query(`UPDATE complaints SET ${setQuery} WHERE id = ?`, [...values, id])
}

exports.deleteComplaint = (id) => {
    return db.promise().query(`DELETE FROM complaints WHERE id = ?`, id)
}