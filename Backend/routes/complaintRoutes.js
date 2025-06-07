const express = require("express")
const router = express.Router();
const complaintControllers = require("../controllers/complaintControllers")

router.get("/complaints/", complaintControllers.getUpdatedComplaints)
router.post("/complaints/create/", complaintControllers.createComplaint)
router.post("/complaints/update/", complaintControllers.updateComplaint)
router.post("/complaints/delete/:id", complaintControllers.deleteComplaint)

module.exports = router;