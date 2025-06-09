const express = require("express")
const cors = require("cors")
const app = express()
const port = 3000

app.use(cors());
app.use(express.json())

const postRoutes = require("./routes/postRoutes")
app.use(postRoutes)

const complaintRoutes = require("./routes/complaintRoutes")
app.use(complaintRoutes)

const userRoutes = require("./routes/userRoutes")
app.use(userRoutes)

const commentRoutes = require("./routes/commentRoutes")
app.use(commentRoutes)

const postMediaRoutes = require("./routes/postMediaRoutes")
app.use(postMediaRoutes)

const mediaRoutes = require("./routes/mediaRoutes")
app.use(mediaRoutes)

app.listen(port, () => {
    console.log(`App is listening on port ${port}`)
})

module.exports = app