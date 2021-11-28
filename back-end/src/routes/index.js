const Login = require('../controllers/Login')

module.exports = (app) => {
    app.get('/', (req, res) => {
        return res.send('aoladsnf')
    })
    app.get('/login', Login.loginStudent)
}