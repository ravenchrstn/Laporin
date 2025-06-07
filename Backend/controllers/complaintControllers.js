const complaintServices = require("../services/complaintServices")
const response = require("../response")

exports.getAllComplaints = async (req, res) => {
    try {
        const complaints = await complaintServices.getAllComplaints()

        if (!complaints || complaints.length <= 0) response(res, 204, "Complaints successfully sent, yet no data", complaints)
        response(res, 200, "Complaints successfully retrieved!", complaints)
    } catch (e) {
        response(res, 500, "Error: " + e)
    }
}

exports.getUpdatedComplaints = async (req, res) => {
    try {
        const { excludedComplaintIds = [], limit = 5 } = req.body
        const complaints = await complaintServices.getUpdatedComplaints(excludedComplaintIds, limit)
        excludedComplaintIds.push(...complaints.map(c => c.id))

        if (!complaints || complaints.length <= 0) response(res, 204, "Complaints successfully sent, yet no data", complaints, excludedComplaintIds)
        response(res, 200, "Complaints successfully retrieved!", complaints, excludedComplaintIds)
    } catch (e) {
        response(res, 500, "Error: " + e)
    }
}

exports.createComplaint = async (req, res) => {
    try {
        // Harus sambungin dengan table complaint_police_units
        const { post_id = null, status = "pending", description, severity, is_anonymous = true, user_id, is_resolved = false, headline, message_id = null, complaint_police_unit_id = null, is_updated = 0 } = req.body

        const complaintOkPacket = await complaintServices.createComplaint({post_id, status, description, severity, is_anonymous, user_id, is_resolved, headline, message_id, complaint_police_unit_id, is_updated})

        response(res, 200, "Complaints successfully created!", complaintOkPacket)
    } catch (e) {
        response(res, 500, "Error: " + e)
    }
}

exports.updateComplaint = async (req, res) => {
    try {
        const { id, description, severity, is_anonymous, is_resolved, headline, complaint_police_unit_id, is_updated } = req.body

        const complaintOkPacket = await complaintServices.updateComplaint(id, {description, severity, is_anonymous, is_resolved, headline, complaint_police_unit_id, is_updated})

        response(res, 200, "Complaints successfully updated!", complaintOkPacket)
    } catch (e) {
        response(res, 500, "Error: " + e)
    }
}

exports.deleteComplaint = async (req, res) => {
    try {
        const id  = req.params.id
        const complaintOkPacket = await complaintServices.deleteComplaint(id)
        response(res, 200, "Complaints successfully deleted!", complaintOkPacket)
    } catch (e) {
        response(res, 500, "Error: " + e)
    }
}