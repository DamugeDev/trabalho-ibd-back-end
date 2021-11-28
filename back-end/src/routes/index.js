const Login = require('../controllers/Login')
const Users = require('../controllers/Users')

module.exports = (app) => {
    // post users
    app.post('/new', Users.newStudent)

    // login
    app.post('/login', Login.loginStudent)
    app.post('/admin/login', Login.loginAdmin)

    // no response
    app.get('/', (req, res) => {
        return res.status(400).send('<p>No response!</p>')
    })
    app.get('/*', (req, res) => {
        return res.redirect('/')
    })
}