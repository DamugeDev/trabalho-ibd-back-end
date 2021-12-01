const Login = require('../controllers/Login');
const Users = require('../controllers/Users');

module.exports = (app) => {
  // users
  app.post('/new', Users.newStudent);
  app.post('/update/student', Users.updateStudent);
  app.get('/students', Users.readStudents);
  app.get('/remove/students/:id', Users.removeStudentById);
  app.get('/admin/:id', Users.readById);

  // login
  app.post('/login', Login.loginStudent);
  app.post('/admin/login', Login.loginAdmin);

  // no response
  app.get('/', (req, res) => {
    return res.status(400).send('<p>No response!</p>');
  });
  app.get('/*', (req, res) => {
    return res.redirect('/');
  });
};
