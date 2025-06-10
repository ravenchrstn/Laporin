const complaintRepositories = require("../repositories/complaintRepositories")
const utils = require("../utils/others")
const randomize = require("../utils/randomize")

exports.getAllComplaints = async () => {
    return await complaintRepositories.getAllComplaints();
}

exports.getComplaintById = async (id) => {
    const [[complaint]] = await complaintRepositories.getComplaintById(id)
    return complaint;
}

exports.getUpdatedPendingComplaints = async (excludedComplaintIds, limit) => {
    let complaints = []
    
    if (excludedComplaintIds && excludedComplaintIds.length > 0) [complaints] = await complaintRepositories.getUpdatedPendingComplaints(excludedComplaintIds)
    else [complaints] = await complaintRepositories.getAllComplaints()

    return complaints
}

exports.getUpdatedReviewedComplaints = async (excludedComplaintIds, limit) => {
    let complaints = []
    if (excludedComplaintIds && excludedComplaintIds.length > 0) [complaints] = await complaintRepositories.getUpdatedReviewedComplaints(excludedComplaintIds)
    else [complaints] = await complaintRepositories.getAllComplaints()

    return complaints
}

exports.getUpdatedComplaints = async (excludedComplaintIds, limit) => {
    let complaints = []
    
    if (excludedComplaintIds && excludedComplaintIds.length > 0) [complaints] = await complaintRepositories.getUpdatedComplaints(excludedComplaintIds)
    else [complaints] = await complaintRepositories.getAllComplaints()

    return complaints
}

exports.createComplaint = async ({post_id, status, description, severity, is_anonymous, user_id, is_resolved, headline, message_id, complaint_police_unit_id, is_edited}) => {
    const complaintOkPacket = await complaintRepositories.insertComplaint({post_id, status, description, severity, is_anonymous, user_id, is_resolved, headline, message_id, complaint_police_unit_id, is_edited})
    return complaintOkPacket
}

exports.updateComplaint = async (id, {description, severity, is_anonymous, is_resolved, headline, complaint_police_unit_id, is_edited}) => {
    const complaintOkPacket = await complaintRepositories.updateComplaint(id, {description, severity, is_anonymous, is_resolved, headline, complaint_police_unit_id, is_edited})
    return complaintOkPacket
}

exports.deleteComplaint = async (id) => {
    const complaintOkPacket = await complaintRepositories.deleteComplaint(id)
    return complaintOkPacket
}