const express = require("express")
const router = express.Router();
const mediaControllers = require("../controllers/mediaControllers")

router.get("/medias/getmediabyid", mediaControllers.getMediaById)
router.get("/medias/getmediasbypostid", mediaControllers.getMediasByPostId)

module.exports = router;