const app = require("../index.js")
const userController = require("../controller/userController")

app.get('/users/:id', userController.getAllUsers)

app.post('/', (req, res) => {
    
})