const complaintServices = require("../services/complaintServices")
const response = require("../response")

exports.getAllComplaints = async (req, res) => {
    try {
        const complaints = await complaintServices.getAllComplaints()

        if (!complaints || complaints.length <= 0) response({res, statusCode: 204})
        response({res, statusCode: 200, message: "Complaints successfully retrieved!", data:complaints, count:complaints.length})
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})
    }
}

exports.getUpdatedPendingComplaints = async (req, res) => {
    try {
        const { excludedComplaintIds = [], limit = 5 } = req.body

        const complaints = await complaintServices.getUpdatedPendingComplaints(excludedComplaintIds, limit)
        excludedComplaintIds.push(...complaints.map(c => c.id))

        if (!complaints || complaints.length <= 0) return response({res, statusCode: 204})
        response({res, statusCode:200, message:"Pending Complaints has successfully been sent!", data:complaints, count:complaints.length, excludedIds:excludedComplaintIds})
    } catch (error) {
        response({res, statusCode:500, message:"Pending Complaints has not successfully been sent!"})
    }
}

exports.getUpdatedReviewedComplaints = async (req, res) => {
    try {
        const { excludedComplaintIds = [], limit = 5 } = req.body

        const complaints = await complaintServices.getUpdatedReviewedComplaints(excludedComplaintIds, limit)
        excludedComplaintIds.push(...complaints.map(c => c.id))

        if (!complaints || complaints.length <= 0) return response({res, statusCode: 204})
        response({res, statusCode:200, message:"Reviewed Complaints has successfully been sent!", data:complaints, count:complaints.length, excludedIds:excludedComplaintIds})
    } catch (error) {
        response({res, statusCode:500, message:"Error: " + error})
    }
}

exports.getUpdatedComplaints = async (req, res) => {
    try {
        const { excludedComplaintIds = [], limit = 5 } = req.body

        const complaints = await complaintServices.getUpdatedComplaints(excludedComplaintIds, limit)
        excludedComplaintIds.push(...complaints.map(c => c.id))

        if (!complaints || complaints.length <= 0) return response({res, statusCode: 204})
        response({res, statusCode: 200, message: "Complaints successfully retrieved!", data:complaints, excludedIds:excludedComplaintIds, count:complaints.length})
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})

    }
}

exports.createComplaint = async (req, res) => {
    try {
        // Harus sambungin dengan table complaint_police_units
        const { post_id = null, status = "pending", description, severity, is_anonymous = true, user_id, is_resolved = false, headline, message_id = null, complaint_police_unit_id = null, is_edited = 0 } = req.body

        const complaintOkPacket = await complaintServices.createComplaint({post_id, status, description, severity, is_anonymous, user_id, is_resolved, headline, message_id, complaint_police_unit_id, is_edited})

        const addedComplaint = await complaintServices.getComplaintById(complaintOkPacket[0].insertId)
        // console.log(addedComplaint)
        response({res, statusCode: 200, message: "Complaints successfully created!", data:addedComplaint, count:addedComplaint.length})
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})
    }
}

exports.updateComplaint = async (req, res) => {
    try {
        const { id, description, severity, is_anonymous, is_resolved, headline, complaint_police_unit_id, is_edited } = req.body

        const complaintOkPacket = await complaintServices.updateComplaint(id, {description, severity, is_anonymous, is_resolved, headline, complaint_police_unit_id, is_edited})

        response({res, statusCode: 200, message: "Complaints successfully updated!", data:complaintOkPacket, count:complaintOkPacket.length})
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})
    }
}

exports.deleteComplaint = async (req, res) => {
    try {
        const id  = req.params.id
        const complaintOkPacket = await complaintServices.deleteComplaint(id)
        response({res, statusCode: 200, message: "Complaints successfully deleted!", data:complaintOkPacket, count:complaintOkPacket.length})
    } catch (error) {
        response({res, statusCode: 500, message: "Error: " + error})
    }
}