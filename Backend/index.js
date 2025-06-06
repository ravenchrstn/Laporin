const express = require("express")
const cors = require("cors")
const app = express()
const port = 3000

app.use(cors());
app.use(express.json())

const postRoutes = require("./routes/postRoutes")
app.use(postRoutes);

app.listen(port, () => {
    console.log(`App is listening on port ${port}`)
})

module.exports = app;