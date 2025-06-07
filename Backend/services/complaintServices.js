const complaintRepositories = require("../repositories/complaintRepositories")
const utils = require("../utils/others")
const randomize = require("../utils/randomize")

exports.getAllComplaints = async () => {
    return await complaintRepositories.getAllComplaints();
}

exports.getUpdatedComplaints = async (excludedComplaintIds, limit) => {
    let rows = []
    
    if (excludedComplaintIds && excludedComplaintIds.length > 0) [rows] = await complaintRepositories.getUpdatedComplaints(excludedComplaintIds)
    else [rows] = await complaintRepositories.getAllComplaints()
    return randomize.randomizeArrayWithLimit(rows, limit)
}

exports.createComplaint = async ({post_id, status, description, severity, is_anonymous, user_id, is_resolved, headline, message_id, complaint_police_unit_id, is_updated}) => {
    const complaintOkPacket = await complaintRepositories.insertComplaint({post_id, status, description, severity, is_anonymous, user_id, is_resolved, headline, message_id, complaint_police_unit_id, is_updated})
    return complaintOkPacket
}

exports.updateComplaint = async (id, {description, severity, is_anonymous, is_resolved, headline, complaint_police_unit_id, is_updated}) => {
    const complaintOkPacket = await complaintRepositories.updateComplaint(id, {description, severity, is_anonymous, is_resolved, headline, complaint_police_unit_id, is_updated})
    return complaintOkPacket
}

exports.deleteComplaint = async (id) => {
    const complaintOkPacket = await complaintRepositories.deleteComplaint(id)
    return complaintOkPacket
}